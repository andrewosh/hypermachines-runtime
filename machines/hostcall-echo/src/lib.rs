#[macro_use]
extern crate serde_derive;

use hypermachine::{host_request, log_u32, read_arguments, rpc_response};
use serde::{Deserialize, Serialize};

// Start Boilerplate
// TODO: Figure out how to extract this.

extern "C" {
  pub fn machine_hostcall(ptr: *mut u8, length: usize) -> *mut u8;
}

#[no_mangle]
pub extern "C" fn malloc(size: usize) -> *mut u8 {
  hypermachine::malloc(size)
}

#[no_mangle]
pub extern "C" fn free(ptr: *mut u8, size: usize) {
  hypermachine::free(ptr, size)
}

// End Boilerplate

#[derive(Serialize, Deserialize)]
pub struct Response {
  pub message: String,
}

#[derive(Serialize, Deserialize)]
pub enum Requests {
  Append(String),
}

#[no_mangle]
pub extern "C" fn rpc_echo(args_ptr: *mut u8, args_length: usize) -> *mut u8 {
  let args: Vec<u8> = read_arguments(args_ptr, args_length);
  let message = String::from_utf8(args).unwrap();
  let appended: String = host_request(Requests::Append(message));
  rpc_response(appended)
}
