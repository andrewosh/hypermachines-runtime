use std::alloc::{alloc, dealloc, Layout};
use std::mem::{size_of};
use std::slice::{from_raw_parts_mut, from_raw_parts};
use byteorder::{ByteOrder, LittleEndian};

// Imported Hostcalls

extern "C" {
    pub fn machine_hostcall(ptr: *mut u8, length: usize) -> *mut u8;
}

// Exported Memory Management Functions

#[no_mangle]
pub extern "C" fn malloc(size: usize) -> *mut u8 {
    let layout = Layout::from_size_align(size, 1).unwrap();
    unsafe { alloc(layout) }
}

#[no_mangle]
pub extern "C" fn free(ptr: *mut u8, size: usize) {
    let layout = Layout::from_size_align(size as usize, 1).unwrap();
    unsafe { dealloc(ptr, layout) }
}

// RPC Functions

#[no_mangle]
pub extern "C" fn rpc_echo(args_ptr: *mut u8, args_length: usize) -> *mut u8 {
    let total_len = args_length + size_of::<u32>();
    let result_ptr = malloc(total_len);
    unsafe {
        let input = from_raw_parts(args_ptr, args_length);
        let slice = from_raw_parts_mut(result_ptr, total_len);
        LittleEndian::write_u32(slice, args_length as u32);
        slice[size_of::<u32>()..].copy_from_slice(input);
        result_ptr
    }
}
