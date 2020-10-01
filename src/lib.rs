#[macro_use]
extern crate napi;
#[macro_use]
extern crate napi_derive;
#[macro_use]
extern crate anyhow;
#[macro_use]
extern crate ref_thread_local;

use lazy_static::lazy_static;
use napi::threadsafe_function::{
  ThreadsafeFunction, ThreadsafeFunctionCallMode, ThreadsafeFunctionReleaseMode, ToJs,
};
use napi::{
  sys, CallContext, Env, JsBoolean, JsBuffer, JsFunction, JsNumber, JsObject, JsString,
  JsUndefined, JsUnknown, Module, Status, Task,
};

use anyhow::{Error, Result};
use byteorder::{ByteOrder, LittleEndian, ReadBytesExt};
use bytes::Bytes;
use log::*;
use ref_thread_local::RefThreadLocal;
use std::cell::RefCell;
use std::collections::HashMap;
use std::convert::TryInto;
use std::mem::size_of;
use std::rc::Rc;
use std::sync::mpsc::{channel, Receiver, Sender};
use std::sync::Mutex;
use std::thread;
use wasmtime::{Caller, Extern, Func, Instance, IntoFunc, Linker, Memory, Store, Trap};

#[cfg(all(unix, not(target_env = "musl")))]
#[global_allocator]
static ALLOC: jemallocator::Jemalloc = jemallocator::Jemalloc;

#[cfg(windows)]
#[global_allocator]
static ALLOC: mimalloc::MiMalloc = mimalloc::MiMalloc;

lazy_static! {
  pub static ref DISPATCH: Mutex<Dispatcher> = Mutex::new(Dispatcher::new());
}

// WASM-specific types

type RPCExports = Vec<String>;

// Threadsafe Callback Types

type CallbackFunc = ThreadsafeFunction<HandleCallResponse>;
type RequestFunc = ThreadsafeFunction<HandleRequest>;

// Sent from a machine to the JS runtime (as part of an import call).
pub struct Request {
  pub mid: usize,
  pub args: Bytes,
}
#[derive(Clone, Copy)]
pub struct HandleRequest;
impl ToJs for HandleRequest {
  type Output = Request;

  fn resolve(&self, env: &mut Env, output: Self::Output) -> napi::Result<Vec<JsUnknown>> {
    let mut items: Vec<JsUnknown> = vec![];
    let mut obj = env.create_object()?;
    obj.set_property(
      env.create_string("mid")?,
      env.create_int32(output.mid as i32)?,
    )?;
    obj.set_property(
      env.create_string("args")?,
      // TODO: Avoid clone.
      env.create_buffer_with_data(output.args.to_vec())?,
    )?;
    items.push(obj.into_unknown()?);
    Ok(items)
  }
}

// Sent from the machine to the JS runtime, in response to a call.
pub struct CallResponse {
  pub rsp: Bytes,
}
#[derive(Clone, Copy)]
pub struct HandleCallResponse;
impl ToJs for HandleCallResponse {
  type Output = CallResponse;

  fn resolve(&self, env: &mut Env, output: Self::Output) -> napi::Result<Vec<JsUnknown>> {
    let mut items: Vec<JsUnknown> = vec![];
    // TODO: Avoid clone.
    items.push(
      env
        .create_buffer_with_data(output.rsp.to_vec())?
        .into_unknown()?,
    );
    Ok(items)
  }
}

// Messaging Types (sent over the channel)

struct CallMessage {
  method: String,
  args: Bytes,
  cb: CallbackFunc,
}

enum ResponseMessage {
  Success(Bytes),
  Failure(anyhow::Error),
}

struct KillMessage {
  cb: CallbackFunc,
}

enum MachineMessage {
  Kill(KillMessage),
  Call(CallMessage),
  Response(ResponseMessage),
}

// Machine Definition

// One machine spawned per thread.
struct MachineRuntime {
  instance: Instance,
  malloc: Func,
  free: Func,
}
struct Machine {
  id: usize,
  req: RequestFunc,
  rx: Receiver<MachineMessage>,
  runtime: RefCell<Option<MachineRuntime>>,
}
impl Machine {
  fn new(id: usize, rx: Receiver<MachineMessage>, req: RequestFunc) -> Machine {
    Machine {
      id,
      req,
      rx,
      runtime: RefCell::new(None),
    }
  }

  fn start(
    machine: &'static Machine,
    module: &wasmtime::Module,
    linker: &mut Linker,
  ) -> Result<()> {
    linker.func(
      "env",
      "machine_hostcall",
      move |caller: Caller, ptr: u32, len: u32| -> Result<u32, Trap> {
        machine.async_import(caller, ptr, len)
      },
    )?;
    linker.func("env", "log_u32", |i: u32| {
      println!("*** WASM: {}", i);
    })?;
    let instance = linker.instantiate(module)?;
    let malloc = instance
      .get_func("malloc")
      .ok_or(anyhow!("Guest must implement malloc"))?
      .into();
    let free = instance
      .get_func("free")
      .ok_or(anyhow!("Guest must implement free"))?
      .into();
    if let None = instance.get_export("memory") {
      return Err(anyhow!("Guest must export memory"));
    }
    machine.runtime.replace(Some(MachineRuntime {
      instance,
      malloc,
      free,
    }));
    machine.listen()?;
    Ok(())
  }

  fn extract_args(&self, ptr: usize, len: usize) -> Result<Bytes, Trap> {
    let runtime_ptr = self.runtime.borrow();
    let runtime = runtime_ptr
      .as_ref()
      .ok_or(Trap::new("Runtime is not yet instantiated"))?;
    let mem = runtime
      .instance
      .get_memory("memory")
      .ok_or(Trap::new("Guest must export memory"))?;
    unsafe {
      let mut bytes = &mem.data_unchecked()[ptr..][..len];
      // TODO: Probably don't need to copy into Bytes here.
      let args = Bytes::copy_from_slice(&bytes);
      Ok(args)
    }
  }

  fn extract_call_response(&self, ptr: usize) -> Result<Bytes, Trap> {
    let runtime_ptr = self.runtime.borrow();
    let runtime = runtime_ptr
      .as_ref()
      .ok_or(Trap::new("Runtime is not yet instantiated"))?;
    let mem = runtime
      .instance
      .get_memory("memory")
      .ok_or(Trap::new("Guest must export memory"))?;
    unsafe {
      let mut bytes = &mem.data_unchecked()[ptr..];
      let rsp_len = bytes
        .read_u32::<LittleEndian>()
        .map_err(|e| Trap::new("Could not read response length"))? as usize;
      // TODO: Probably don't need to copy into Bytes here.
      let offset = size_of::<u32>();
      let rsp = Bytes::copy_from_slice(&bytes[..rsp_len]);
      // runtime.free.get2::<u32, u32, ()>()?(ptr as u32, rsp_len as u32)?;
      Ok(rsp)
    }
  }

  fn write_buffer(&self, rsp: Bytes, write_length: bool) -> Result<usize, Trap> {
    let runtime_ptr = self.runtime.borrow();
    let runtime = runtime_ptr
      .as_ref()
      .ok_or(Trap::new("Runtime is not yet instantiated"))?;
    let rsp_len = match write_length {
      true => rsp.len() + size_of::<u32>(),
      _ => rsp.len(),
    };
    let ptr: usize = runtime.malloc.get1::<u32, u32>()?(rsp_len as u32)? as usize;
    let mem = runtime
      .instance
      .get_memory("memory")
      .ok_or(Trap::new("Guest must export memory"))?;
    unsafe {
      if write_length {
        let bytes = &mut mem.data_unchecked_mut()[ptr..(ptr + rsp.len() + size_of::<u32>())];
        LittleEndian::write_u32(bytes, rsp.len() as u32);
        bytes[size_of::<u32>()..].copy_from_slice(&rsp);
      } else {
        let bytes = &mut mem.data_unchecked_mut()[ptr..(ptr + rsp.len())];
        bytes.copy_from_slice(&rsp);
      }
      Ok(ptr)
    }
  }

  // All async importers take a (ptr, len) pair for the args, then return a ptr to the result bytes (varint length prefixed).
  fn async_import(&self, caller: Caller, ptr: u32, len: u32) -> Result<u32, Trap> {
    // 1) Extract the method name and arguments from memory.
    let args = self.extract_args(ptr as usize, len as usize)?;
    // 2) Call the threadsafe request function with the args.
    self
      .req
      .call(
        Ok(Request { mid: self.id, args }),
        ThreadsafeFunctionCallMode::Blocking,
      )
      .map_err(|e| Trap::new(format!("Request failed: {}", e)))?;
    // 3) The response will be sent through the channel, so block on it.
    let rsp = match self.rx.recv() {
      Ok(MachineMessage::Response(ResponseMessage::Success(rsp))) => Ok(rsp),
      Ok(MachineMessage::Response(ResponseMessage::Failure(err))) => Err(err),
      _ => Err(anyhow!(
        "Invalid message received when response was expected"
      )),
    }?;
    // 4) Write the return value into wasm memory.
    let res_ptr = self.write_buffer(rsp, true)?;
    Ok(res_ptr as u32)
  }

  fn call_rpc_method(&self, method_name: String, arg: Bytes) -> Result<Bytes> {
    let runtime_ptr = self.runtime.borrow();
    let runtime = runtime_ptr
      .as_ref()
      .ok_or(anyhow!("Runtime is not yet instantiated"))?;
    let method = runtime
      .instance
      .get_func(&method_name)
      .ok_or(anyhow!("Invalid RPC method name"))?
      .get2::<u32, u32, u32>()?;
    let arg_len = arg.len() as u32;
    let ptr = self.write_buffer(arg, false)?;
    let res_ptr = method(ptr as u32, arg_len)?;
    let rsp = self.extract_call_response(res_ptr as usize)?;
    Ok(rsp)
  }

  fn send_response(&self, rsp: Bytes, cb: CallbackFunc) -> Result<()> {
    cb.call(
      Ok(CallResponse { rsp }),
      ThreadsafeFunctionCallMode::Blocking,
    )
    .map_err(|e| anyhow!("Could not send response: {}", e))?;
    cb.release(ThreadsafeFunctionReleaseMode::Release)
      .map_err(|e| anyhow!("Could not send response: {}", e))
  }

  fn send_error(&self, err: anyhow::Error, cb: CallbackFunc) -> Result<()> {
    let napi_error = napi::Error::from_reason(format!("Could not send error {}", err));
    cb.call(Err(napi_error), ThreadsafeFunctionCallMode::Blocking)
      .map_err(|e| anyhow!("Could not send error: {}", e))?;
    cb.release(ThreadsafeFunctionReleaseMode::Release)
      .map_err(|e| anyhow!("Could not send error: {}", e))
  }

  fn listen(&self) -> Result<()> {
    for msg in self.rx.iter() {
      match msg {
        MachineMessage::Call(CallMessage { method, args, cb }) => {
          match self.call_rpc_method(method, args) {
            Ok(rsp) => self.send_response(rsp, cb)?,
            Err(e) => self.send_error(e, cb)?,
          }
        }
        MachineMessage::Kill(KillMessage { cb }) => {
          // TODO: Ideally don't send an empty buffer.
          self.send_response(Bytes::new(), cb)?;
          break;
        }
        // Any ResponseMessages should be handled by the imported functions.
        msg => {
          // Since we don't have a callback in this case. Log and continue.
          error!("Machine received an invalid message in the main loop");
          continue;
        }
      };
    }
    Ok(())
  }
}

// Owned by the main thread. Spawns Machines in separate threads.
pub struct MachineHandle {
  tx: Sender<MachineMessage>,
}
impl MachineHandle {
  pub fn spawn(
    id: usize,
    code: Bytes,
    exports: RPCExports,
    req: RequestFunc,
  ) -> Result<MachineHandle> {
    let (tx, rx) = channel::<MachineMessage>();
    let handle = thread::spawn(move || -> Result<()> {
      let store = Store::default();
      let module = wasmtime::Module::new(&store.engine(), &code)?;
      let mut linker = Linker::new(&store);
      let machine = Machine::new(id, rx, req);

      let state: &'static mut Machine = Box::leak(Box::new(machine));
      // Listen will loop on rx until the machine is killed.
      Machine::start(state, &module, &mut linker)?;

      std::mem::drop(&state);
      req.release(ThreadsafeFunctionReleaseMode::Release)?;

      Ok(())
    });
    Ok(MachineHandle { tx })
  }
}

// Dispatches method calls to machine handles.
pub struct Dispatcher {
  pub machines: Vec<MachineHandle>,
  pub free_list: Vec<usize>,
}
impl Dispatcher {
  pub fn new() -> Dispatcher {
    Dispatcher {
      machines: Vec::new(),
      free_list: Vec::new(),
    }
  }

  fn get_id(&self) -> usize {
    match self.free_list.last() {
      Some(last) => *last,
      _ => self.machines.len(),
    }
  }

  pub fn spawn(&mut self, code: Bytes, exports: RPCExports, req: RequestFunc) -> Result<usize> {
    let id = self.get_id();
    let handle = MachineHandle::spawn(id, code, exports, req)?;
    match self.free_list.last() {
      Some(free_id) if id == *free_id => {
        self.free_list.pop();
        self.machines[id] = handle;
      }
      _ => self.machines.push(handle),
    };
    Ok(id)
  }

  pub fn kill(&mut self, id: usize, cb: CallbackFunc) -> Result<i32> {
    let machine = self
      .machines
      .get(id)
      .ok_or(anyhow!("Machine does not exist."))?;
    machine.tx.send(MachineMessage::Kill(KillMessage { cb }))?;
    self.free_list.push(id);
    Ok(1)
  }

  pub fn reply(&mut self, id: usize, rsp: Result<Bytes>) -> Result<i32> {
    let machine = self
      .machines
      .get(id)
      .ok_or(anyhow!("Machine does not exist."))?;
    let message = match rsp {
      Ok(rsp) => MachineMessage::Response(ResponseMessage::Success(rsp)),
      Err(err) => MachineMessage::Response(ResponseMessage::Failure(err)),
    };
    machine.tx.send(message)?;
    Ok(1)
  }

  pub fn call(&mut self, id: usize, method: String, args: Bytes, cb: CallbackFunc) -> Result<i32> {
    let machine = self
      .machines
      .get(id)
      .ok_or(anyhow!("Machine does not exist."))?;
    machine
      .tx
      .send(MachineMessage::Call(CallMessage { method, args, cb }))?;
    Ok(1)
  }
}

pub fn init(module: &mut Module) -> napi::Result<()> {
  module.create_named_method("spawn", spawn_machine)?;
  module.create_named_method("kill", kill_machine)?;
  module.create_named_method("call", call_rpc_method)?;
  module.create_named_method("reply_success", reply_success)?;
  module.create_named_method("reply_failure", reply_failure)?;
  Ok(())
}

#[js_function(3)]
pub fn spawn_machine(ctx: CallContext) -> napi::Result<JsNumber> {
  let code_arg = ctx.get::<JsBuffer>(0)?;
  let exports_arg = ctx.get::<JsUnknown>(1)?;
  let request_handler = ctx.get::<JsFunction>(2)?;

  let code = Bytes::copy_from_slice(&code_arg);
  let exports: RPCExports = ctx.env.from_js_value(exports_arg)?;
  let req = ThreadsafeFunction::create(ctx.env, request_handler, HandleRequest, 0)?;

  let mut dispatch = DISPATCH
    .lock()
    .map_err(|e| napi::Error::from_reason(format!("Could not lock dispatcher")))?;
  let id = dispatch
    .spawn(code, exports, req)
    .map_err(|e| napi::Error::from_reason(format!("Could not spawn machine: {}", e)))?;

  ctx.env.create_uint32(id as u32)
}

#[js_function(2)]
pub fn kill_machine(ctx: CallContext) -> napi::Result<JsUndefined> {
  let id: u32 = ctx.get::<JsNumber>(0)?.try_into()?;
  let cb_func = ctx.get::<JsFunction>(1)?;

  let cb = ThreadsafeFunction::create(ctx.env, cb_func, HandleCallResponse, 0)?;

  let mut dispatch = DISPATCH
    .lock()
    .map_err(|e| napi::Error::from_reason(format!("Could not lock dispatcher")))?;
  dispatch
    .kill(id as usize, cb)
    .map_err(|e| napi::Error::from_reason(format!("Could not kill machine: {}", e)))?;

  ctx.env.get_undefined()
}

#[js_function(2)]
pub fn reply_success(ctx: CallContext) -> napi::Result<JsUndefined> {
  let id: u32 = ctx.get::<JsNumber>(0)?.try_into()?;
  let args: Bytes = Bytes::copy_from_slice(&ctx.get::<JsBuffer>(1)?);

  let mut dispatch = DISPATCH
    .lock()
    .map_err(|e| napi::Error::from_reason(format!("Could not lock dispatcher")))?;
  dispatch
    .reply(id as usize, Ok(args))
    .map_err(|e| napi::Error::from_reason(format!("Could not send reply: {}", e)))?;

  ctx.env.get_undefined()
}

#[js_function(2)]
pub fn reply_failure(ctx: CallContext) -> napi::Result<JsUndefined> {
  let id: u32 = ctx.get::<JsNumber>(0)?.try_into()?;
  let err: String = ctx.get::<JsString>(1)?.try_into()?;

  let mut dispatch = DISPATCH
    .lock()
    .map_err(|e| napi::Error::from_reason(format!("Could not lock dispatcher")))?;
  dispatch
    .reply(id as usize, Err(anyhow!(err)))
    .map_err(|e| napi::Error::from_reason(format!("Could not send reply: {}", e)))?;

  ctx.env.get_undefined()
}

#[js_function(4)]
pub fn call_rpc_method(ctx: CallContext) -> napi::Result<JsUndefined> {
  let id: u32 = ctx.get::<JsNumber>(0)?.try_into()?;
  let method: String = ctx.get::<JsString>(1)?.try_into()?;
  let args: Bytes = Bytes::copy_from_slice(&ctx.get::<JsBuffer>(2)?);
  let cb_func = ctx.get::<JsFunction>(3)?;

  let cb = ThreadsafeFunction::create(ctx.env, cb_func, HandleCallResponse, 0)?;

  let mut dispatch = DISPATCH
    .lock()
    .map_err(|e| napi::Error::from_reason(format!("Could not lock dispatcher")))?;
  dispatch
    .call(id as usize, method, args, cb)
    .map_err(|e| napi::Error::from_reason(format!("Could not kill machine: {}", e)))?;

  ctx.env.get_undefined()
}

register_module!(example, init);
