use byteorder::{ByteOrder, LittleEndian};
use serde::de::DeserializeOwned;
use serde::Serialize;
use serde_cbor::{from_slice, to_vec};
// use serde_json::{from_slice, to_vec};
// use serde_json_wasm::{from_slice, to_vec};
use std::alloc::{alloc, dealloc, Layout};
use std::mem::size_of;
use std::slice::{from_raw_parts, from_raw_parts_mut};

// Exported Memory Management Functions

extern "C" {
  pub fn machine_hostcall(ptr: *mut u8, length: usize) -> *mut u8;
  pub fn log_u32(i: u32);
}

pub fn malloc(size: usize) -> *mut u8 {
  let layout = Layout::from_size_align(size, 2).unwrap();
  unsafe { alloc(layout) }
}

pub fn free(ptr: *mut u8, size: usize) {
  let layout = Layout::from_size_align(size as usize, 1).unwrap();
  unsafe { dealloc(ptr, layout) }
}

// Helper Functions

pub fn read_arguments(args_ptr: *mut u8, args_length: usize) -> Vec<u8> {
  unsafe { from_raw_parts(args_ptr, args_length).to_vec() }
}

pub fn rpc_response<T: Serialize>(args: T) -> *mut u8 {
  let bytes = to_vec(&args).unwrap();
  let args_len = bytes.len();
  let total_len = args_len + size_of::<u32>();
  let result_ptr = malloc(total_len);
  unsafe {
    let slice = from_raw_parts_mut(result_ptr, total_len);
    LittleEndian::write_u32(slice, args_len as u32);
    slice[size_of::<u32>()..].copy_from_slice(&bytes);
    result_ptr
  }
}

pub fn host_request<T: Serialize, R: DeserializeOwned>(args: T) -> R {
  let mut bytes = to_vec(&args).unwrap();
  let args_len = bytes.len();
  unsafe {
    let ret_ptr = machine_hostcall(bytes.as_mut_ptr(), args_len);
    let res_len = LittleEndian::read_u32(from_raw_parts(ret_ptr, size_of::<u32>())) as usize;
    let slice = from_raw_parts(ret_ptr, res_len + size_of::<u32>());
    let ret = from_slice(&slice[size_of::<u32>()..]).unwrap();
    ret
  }
}
