(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32 i32) (result i32)))
  (func $malloc (type 5) (param i32) (result i32)
    local.get 0
    i32.const 1
    call $__rust_alloc)
  (func $free (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 1048752
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=12 align=4
    local.get 2
    i32.const 1048744
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_ZN3std2io5stdio6_print17h142a83dad30e8f53E
    local.get 0
    local.get 1
    i32.const 1
    call $__rust_dealloc
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $rpc_echo (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 4
    i32.add
    i32.const 1
    call $__rust_alloc
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const -4
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 1048576
      i32.const 32
      i32.const 1048716
      call $_ZN3std9panicking11begin_panic17hbb58f1d0006c513bE
      unreachable
    end
    local.get 2
    local.get 1
    i32.store align=1
    local.get 2
    i32.const 4
    i32.add
    local.get 0
    local.get 1
    call $memcpy
    drop
    local.get 2)
  (func $_ZN3std9panicking11begin_panic17hbb58f1d0006c513bE (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 8
    i32.add
    i32.const 1048752
    i32.const 0
    local.get 2
    call $_ZN4core5panic8Location6caller17h0f2bd38cb2e93bf6E
    call $_ZN3std9panicking20rust_panic_with_hook17h3e6619a8809a443aE
    unreachable)
  (func $_ZN4core3ptr13drop_in_place17h9ab3edcd257e5862E (type 0) (param i32))
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hd9c35dba327af930E (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      br_if 0 (;@1;)
      call $_ZN3std7process5abort17hf44e12dd3440a62fE
      unreachable
    end
    local.get 0
    i32.const 1048772
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hee8677008b554f95E (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=4
        local.set 3
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store offset=4
        local.get 1
        local.get 2
        i32.store
        local.get 0
        i32.const 1048772
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        return
      end
      call $_ZN3std7process5abort17hf44e12dd3440a62fE
      unreachable
    end
    i32.const 8
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdeceb18e10a734d8E (type 6) (param i32) (result i64)
    i64.const 9147559743429524724)
  (func $__rust_alloc (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 2) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h07bf1170f5057864E (type 6) (param i32) (result i64)
    i64.const 9147559743429524724)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h6dd7bd1ad58de43bE (type 6) (param i32) (result i64)
    i64.const 8666219567486784685)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdea912f8e168b91dE (type 6) (param i32) (result i64)
    i64.const -3726580830654707611)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad81c7fe37a3cf6E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17he18faca3a390c132E)
  (func $_ZN4core3fmt5Write10write_char17h5ea608a6c1de0e14E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 4
            i32.add
            local.set 3
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=6
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=4
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=5
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=4
          local.get 2
          i32.const 4
          i32.add
          local.set 3
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=5
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=4
        local.get 2
        i32.const 4
        i32.add
        local.set 3
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=7
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=4
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=6
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=5
      i32.const 4
      local.set 1
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 3
    local.get 1
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h38ad1ed47dbacfa5E
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type 0)
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 3
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load
          local.get 5
          local.get 3
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
      i32.const 1
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h38ad1ed47dbacfa5E (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 5
      i32.load
      br_if 0 (;@1;)
      local.get 5
      i32.const -1
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.const 4
          i32.add
          local.set 6
          local.get 4
          i32.const 8
          i32.add
          i32.const 5
          i32.or
          local.set 7
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.add
            local.get 6
            local.get 2
            local.get 3
            call $_ZN73_$LT$std..io..buffered..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hb69a09498b2a79d7E
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i32.load offset=8
                    i32.const 1
                    i32.eq
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=12
                      local.tee 1
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 24
                      i32.add
                      i32.const 14
                      i32.const 1049472
                      i32.const 28
                      call $_ZN3std2io5error5Error3new17hbb2bba7244d38aa3E
                      local.get 0
                      local.get 4
                      i64.load offset=24
                      i64.store align=4
                      br 7 (;@2;)
                    end
                    local.get 3
                    local.get 1
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 1
                    local.get 3
                    i32.const 1049660
                    call $_ZN4core5slice22slice_index_order_fail17h1e83f979b0065c35E
                    unreachable
                  end
                  local.get 7
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.load8_u offset=12
                        local.tee 8
                        br_table 2 (;@8;) 1 (;@9;) 0 (;@10;) 2 (;@8;)
                      end
                      local.get 4
                      i32.load offset=16
                      i32.const 8
                      i32.add
                      local.set 1
                    end
                    local.get 1
                    i32.load8_u
                    i32.const 15
                    i32.eq
                    br_if 2 (;@6;)
                  end
                  local.get 0
                  local.get 4
                  i64.load offset=12 align=4
                  i64.store align=4
                  br 5 (;@2;)
                end
                local.get 2
                local.get 1
                i32.add
                local.set 2
                local.get 3
                local.get 1
                i32.sub
                local.set 3
                br 1 (;@5;)
              end
              local.get 8
              i32.const 2
              i32.lt_u
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=16
              local.tee 1
              i32.load
              local.get 1
              i32.load offset=4
              i32.load
              call_indirect (type 0)
              block  ;; label = @6
                local.get 1
                i32.load offset=4
                local.tee 8
                i32.load offset=4
                local.tee 9
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load
                local.get 9
                local.get 8
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 1
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 3
        i32.store8
      end
      local.get 5
      local.get 5
      i32.load
      i32.const 1
      i32.add
      i32.store
      local.get 4
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1048836
    i32.const 16
    local.get 4
    i32.const 8
    i32.add
    i32.const 1048996
    i32.const 1048920
    call $_ZN4core6option18expect_none_failed17ha72d60de35a76889E
    unreachable)
  (func $_ZN3std2io5error5Error3new17hbb2bba7244d38aa3E (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const -1
            i32.le_s
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              local.get 3
              local.set 6
              local.get 3
              i32.const 1
              call $__rust_alloc
              local.tee 5
              i32.eqz
              br_if 2 (;@3;)
            end
            local.get 4
            i32.const 0
            i32.store offset=24
            local.get 4
            local.get 5
            i32.store offset=16
            local.get 4
            local.get 6
            i32.store offset=20
            local.get 4
            i32.const 16
            i32.add
            local.get 3
            call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
            local.get 4
            i32.load offset=16
            local.get 4
            i32.load offset=24
            local.tee 5
            i32.add
            local.get 2
            local.get 3
            call $memcpy
            drop
            local.get 4
            i32.const 8
            i32.add
            local.get 5
            local.get 3
            i32.add
            local.tee 3
            i32.store
            local.get 4
            local.get 3
            i32.store offset=24
            local.get 4
            local.get 4
            i64.load offset=16
            local.tee 7
            i64.store
            local.get 4
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            local.tee 5
            local.get 3
            i32.store
            local.get 4
            local.get 7
            i64.store offset=16
            i32.const 12
            i32.const 4
            call $__rust_alloc
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            local.get 4
            i64.load offset=16
            i64.store align=4
            local.get 2
            i32.const 8
            i32.add
            local.get 5
            i32.load
            i32.store
            i32.const 12
            i32.const 4
            call $__rust_alloc
            local.tee 3
            i32.eqz
            br_if 3 (;@1;)
            local.get 3
            local.get 1
            i32.store8 offset=8
            local.get 3
            i32.const 1049012
            i32.store offset=4
            local.get 3
            local.get 2
            i32.store
            local.get 3
            local.get 4
            i32.load16_u offset=16 align=1
            i32.store16 offset=9 align=1
            local.get 3
            i32.const 11
            i32.add
            local.get 4
            i32.const 16
            i32.add
            i32.const 2
            i32.add
            local.tee 2
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 2
            i32.store8
            local.get 0
            local.get 4
            i32.load16_u offset=16 align=1
            i32.store16 offset=1 align=1
            local.get 0
            i32.const 3
            i32.add
            local.get 2
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 4
            i32.add
            local.get 3
            i32.store
            local.get 4
            i32.const 32
            i32.add
            global.set 0
            return
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17hf2be99ee29d9fb92E
          unreachable
        end
        local.get 3
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
      unreachable
    end
    i32.const 12
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
    unreachable)
  (func $_ZN4core3fmt5Write9write_fmt17h237a9b205847c34eE (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048788
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h03db344ecc8f6131E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h343d2a1ba1a85bdfE (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=4
      local.get 0
      i32.load
      local.set 1
      local.get 0
      i32.const 1
      i32.store
      local.get 1
      i32.load
      local.tee 0
      local.get 0
      i32.load
      local.tee 0
      i32.const -1
      i32.add
      i32.store
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd936b0a11cb4a429E
      end
      local.get 1
      i32.const 4
      i32.const 4
      call $__rust_dealloc
      return
    end
    i32.const 1049880
    i32.const 32
    i32.const 1049940
    call $_ZN3std9panicking11begin_panic17hc3827558b1f7b155E
    unreachable)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd936b0a11cb4a429E (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.load8_u offset=24
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 25
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 20
      i32.add
      local.tee 2
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store8 offset=25
      local.get 2
      i32.const 0
      i32.store
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.load offset=4
      local.tee 0
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 32
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN3std9panicking11begin_panic17hc3827558b1f7b155E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 8
    i32.add
    i32.const 1049824
    i32.const 0
    local.get 2
    call $_ZN4core5panic8Location6caller17h0f2bd38cb2e93bf6E
    call $_ZN3std9panicking20rust_panic_with_hook17h3e6619a8809a443aE
    unreachable)
  (func $_ZN4core3ptr13drop_in_place17h04904c5d9a5a99c4E (type 0) (param i32))
  (func $_ZN4core3ptr13drop_in_place17h21540f752325e797E (type 0) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=4
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 0)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr13drop_in_place17h2ad0181d59c596c8E (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr13drop_in_place17h73367cb5d6fc27feE (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h1f6842c8db5d4385E (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048952
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h5ab8b742d8309a0dE (type 5) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048952
      i32.const 43
      i32.const 1049772
      call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
      unreachable
    end
    local.get 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hdd93b2a5e46c40beE (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h5ea608a6c1de0e14E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfd8b6b9a0c4486b4E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 12
            i32.add
            local.set 3
            block  ;; label = @5
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 4
            local.set 1
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 1
            call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          i32.load
          local.get 3
          i32.add
          local.get 1
          i32.store8
          local.get 0
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get 2
        i32.const 12
        i32.add
        local.set 3
        i32.const 2
        local.set 1
      end
      local.get 0
      local.get 1
      call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
      local.get 0
      i32.load
      local.get 0
      i32.const 8
      i32.add
      local.tee 0
      i32.load
      local.tee 4
      i32.add
      local.get 3
      local.get 1
      call $memcpy
      drop
      local.get 0
      local.get 4
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E (type 3) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.add
          local.tee 1
          local.get 3
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.shl
          local.tee 3
          local.get 1
          local.get 3
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 3
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              i32.const 0
              local.get 2
              select
              local.tee 1
              br_if 0 (;@5;)
              local.get 3
              i32.const 1
              call $__rust_alloc
              local.set 1
              br 1 (;@4;)
            end
            local.get 2
            local.get 3
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              local.get 3
              i32.const 1
              call $__rust_alloc
              local.set 1
              br 1 (;@4;)
            end
            local.get 1
            local.get 2
            i32.const 1
            local.get 3
            call $__rust_realloc
            local.set 1
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 3
          i32.store
        end
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hf2be99ee29d9fb92E
      unreachable
    end
    local.get 3
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
    unreachable)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h28786e51332a2a7eE (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048788
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h03db344ecc8f6131E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hcafd743a5547c758E (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048812
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h03db344ecc8f6131E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2c3e687b1155b19dE (type 4) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 2
    call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
    local.get 0
    i32.load
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    i32.load
    local.tee 3
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h78779fa51a733229E (type 4) (param i32 i32 i32) (result i32)
    (local i32 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h38ad1ed47dbacfa5E
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type 0)
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load
          local.get 5
          local.get 2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
      i32.const 1
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hb05b02514dd04541E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17he18faca3a390c132E)
  (func $_ZN3std9panicking15begin_panic_fmt17h268cca988846a20cE (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    call $_ZN4core5panic8Location6caller17h0f2bd38cb2e93bf6E
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1048936
    i32.store offset=4
    local.get 2
    i32.const 1048936
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h553fdfa11009b9e8E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              br_table 1 (;@4;) 0 (;@5;) 2 (;@3;) 1 (;@4;)
            end
            i32.const 1049128
            local.set 3
            i32.const 22
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 0
                                                  i32.load8_u offset=1
                                                  br_table 0 (;@23;) 1 (;@22;) 2 (;@21;) 3 (;@20;) 4 (;@19;) 5 (;@18;) 6 (;@17;) 7 (;@16;) 8 (;@15;) 9 (;@14;) 10 (;@13;) 11 (;@12;) 12 (;@11;) 13 (;@10;) 14 (;@9;) 15 (;@8;) 16 (;@7;) 18 (;@5;) 0 (;@23;)
                                                end
                                                i32.const 1049409
                                                local.set 3
                                                i32.const 16
                                                local.set 4
                                                br 17 (;@5;)
                                              end
                                              i32.const 1049392
                                              local.set 3
                                              i32.const 17
                                              local.set 4
                                              br 16 (;@5;)
                                            end
                                            i32.const 1049374
                                            local.set 3
                                            i32.const 18
                                            local.set 4
                                            br 15 (;@5;)
                                          end
                                          i32.const 1049358
                                          local.set 3
                                          i32.const 16
                                          local.set 4
                                          br 14 (;@5;)
                                        end
                                        i32.const 1049340
                                        local.set 3
                                        i32.const 18
                                        local.set 4
                                        br 13 (;@5;)
                                      end
                                      i32.const 1049327
                                      local.set 3
                                      i32.const 13
                                      local.set 4
                                      br 12 (;@5;)
                                    end
                                    i32.const 1049313
                                    local.set 3
                                    br 10 (;@6;)
                                  end
                                  i32.const 1049292
                                  local.set 3
                                  i32.const 21
                                  local.set 4
                                  br 10 (;@5;)
                                end
                                i32.const 1049281
                                local.set 3
                                i32.const 11
                                local.set 4
                                br 9 (;@5;)
                              end
                              i32.const 1049260
                              local.set 3
                              i32.const 21
                              local.set 4
                              br 8 (;@5;)
                            end
                            i32.const 1049239
                            local.set 3
                            i32.const 21
                            local.set 4
                            br 7 (;@5;)
                          end
                          i32.const 1049216
                          local.set 3
                          i32.const 23
                          local.set 4
                          br 6 (;@5;)
                        end
                        i32.const 1049204
                        local.set 3
                        i32.const 12
                        local.set 4
                        br 5 (;@5;)
                      end
                      i32.const 1049195
                      local.set 3
                      i32.const 9
                      local.set 4
                      br 4 (;@5;)
                    end
                    i32.const 1049185
                    local.set 3
                    i32.const 10
                    local.set 4
                    br 3 (;@5;)
                  end
                  i32.const 1049164
                  local.set 3
                  i32.const 21
                  local.set 4
                  br 2 (;@5;)
                end
                i32.const 1049150
                local.set 3
              end
              i32.const 14
              local.set 4
            end
            local.get 2
            i32.const 60
            i32.add
            i32.const 1
            i32.store
            local.get 2
            local.get 4
            i32.store offset=28
            local.get 2
            local.get 3
            i32.store offset=24
            local.get 2
            i32.const 5
            i32.store offset=12
            local.get 2
            i64.const 1
            i64.store offset=44 align=4
            local.get 2
            i32.const 1049428
            i32.store offset=40
            local.get 2
            local.get 2
            i32.const 24
            i32.add
            i32.store offset=8
            local.get 2
            local.get 2
            i32.const 8
            i32.add
            i32.store offset=56
            local.get 1
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17h26f79d83f172eb1cE
            local.set 0
            br 2 (;@2;)
          end
          local.get 2
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.store offset=4
          i32.const 20
          i32.const 1
          call $__rust_alloc
          local.tee 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i64.const 20
          i64.store offset=44 align=4
          local.get 2
          local.get 0
          i32.store offset=40
          local.get 2
          i32.const 40
          i32.add
          i32.const 20
          call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
          local.get 2
          i32.load offset=40
          local.get 2
          i32.load offset=48
          local.tee 3
          i32.add
          local.tee 0
          i32.const 0
          i64.load offset=1049860 align=1
          i64.store align=1
          local.get 0
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1049868 align=1
          i64.store align=1
          local.get 0
          i32.const 16
          i32.add
          i32.const 0
          i32.load offset=1049876 align=1
          i32.store align=1
          local.get 2
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          local.get 3
          i32.const 20
          i32.add
          i32.store
          local.get 2
          local.get 2
          i64.load offset=40
          i64.store offset=8
          local.get 2
          i32.const 40
          i32.add
          i32.const 20
          i32.add
          i32.const 2
          i32.store
          local.get 2
          i32.const 36
          i32.add
          i32.const 6
          i32.store
          local.get 2
          i64.const 3
          i64.store offset=44 align=4
          local.get 2
          i32.const 1049448
          i32.store offset=40
          local.get 2
          i32.const 7
          i32.store offset=28
          local.get 2
          local.get 2
          i32.const 24
          i32.add
          i32.store offset=56
          local.get 2
          local.get 2
          i32.const 4
          i32.add
          i32.store offset=32
          local.get 2
          local.get 2
          i32.const 8
          i32.add
          i32.store offset=24
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17h26f79d83f172eb1cE
          local.set 0
          local.get 2
          i32.load offset=8
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=12
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 3
          i32.const 1
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.get 1
        local.get 0
        i32.load offset=4
        i32.load offset=32
        call_indirect (type 1)
        local.set 0
      end
      local.get 2
      i32.const 64
      i32.add
      global.set 0
      local.get 0
      return
    end
    i32.const 20
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
    unreachable)
  (func $_ZN3std5error5Error7type_id17h15aaa14311501381E (type 6) (param i32) (result i64)
    i64.const 3708713991525092871)
  (func $_ZN3std5error5Error9backtrace17hd36a369f97a500f1E (type 5) (param i32) (result i32)
    i32.const 0)
  (func $_ZN3std5error5Error5cause17h1366f086b795537eE (type 3) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN243_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$std..error..Error$GT$11description17h34263f8fe2f5da6bE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store offset=4
    local.get 0
    local.get 1
    i32.load
    i32.store)
  (func $_ZN244_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17hb43d7b5bc68a1c53E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17he18faca3a390c132E)
  (func $_ZN242_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17h91aa905952ea65c1E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h365a6b66e954875cE)
  (func $_ZN73_$LT$std..io..buffered..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hb69a09498b2a79d7E (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=16
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=12
            local.tee 6
            i32.const 2
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 0
              i32.store8 offset=13
              local.get 1
              i32.const 8
              i32.add
              i32.const 0
              i32.store
            end
            local.get 6
            i32.const 3
            i32.and
            i32.const 2
            i32.ne
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.store8 offset=13
          i32.const 1048952
          i32.const 43
          i32.const 1049080
          call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
          unreachable
        end
        local.get 1
        i32.const 0
        i32.store8 offset=16
      end
      local.get 4
      i32.const 8
      i32.add
      i32.const 10
      local.get 2
      local.get 3
      call $_ZN4core5slice6memchr7memrchr17hc34ac4d470038efdE
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load offset=8
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  local.tee 6
                  local.get 3
                  i32.add
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 5
                  i32.le_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 1
                    i32.load8_u offset=12
                    i32.const 2
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 6
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 1
                    i32.const 0
                    i32.store8 offset=13
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store
                    br 1 (;@7;)
                  end
                  local.get 6
                  br_if 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 5
                  local.get 3
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 3
                  call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
                  local.get 1
                  i32.load
                  local.get 1
                  i32.const 8
                  i32.add
                  local.tee 1
                  i32.load
                  local.tee 5
                  i32.add
                  local.get 2
                  local.get 3
                  call $memcpy
                  drop
                  local.get 0
                  local.get 3
                  i32.store offset=4
                  local.get 1
                  local.get 5
                  local.get 3
                  i32.add
                  i32.store
                  local.get 0
                  i32.const 0
                  i32.store
                  br 5 (;@2;)
                end
                local.get 1
                i32.const 1
                i32.store8 offset=13
                local.get 1
                i32.load8_u offset=12
                i32.const 2
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 3
                i32.store offset=4
                local.get 0
                i32.const 0
                i32.store
                local.get 1
                i32.const 0
                i32.store8 offset=13
                br 4 (;@2;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load offset=12
                  local.tee 6
                  i32.const -1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 5
                  local.get 6
                  local.get 3
                  i32.lt_u
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 3
                  i32.const 1049112
                  call $_ZN4core5slice20slice_index_len_fail17h83bcbaa74d10d479E
                  unreachable
                end
                i32.const 1049112
                call $_ZN4core5slice25slice_index_overflow_fail17h4a745af05ff6d99dE
                unreachable
              end
              block  ;; label = @6
                local.get 1
                i32.const 8
                i32.add
                i32.load
                local.tee 6
                local.get 5
                i32.add
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.gt_u
                br_if 0 (;@6;)
                local.get 6
                local.set 8
                br 3 (;@3;)
              end
              block  ;; label = @6
                local.get 1
                i32.load8_u offset=12
                i32.const 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                local.get 6
                i32.eqz
                br_if 3 (;@3;)
                local.get 1
                i32.const 0
                i32.store8 offset=13
                local.get 1
                i32.const 8
                i32.add
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              i32.const 0
              local.set 8
              local.get 6
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 1
              i32.store8 offset=13
              i32.const 1048952
              i32.const 43
              i32.const 1049080
              call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
              unreachable
            end
            i32.const 1048952
            i32.const 43
            i32.const 1049096
            call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
            unreachable
          end
          local.get 1
          i32.const 1
          i32.store8 offset=13
          i32.const 1048952
          i32.const 43
          i32.const 1049080
          call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
          unreachable
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    local.get 5
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 1
                    i32.store8 offset=13
                    local.get 1
                    i32.load8_u offset=12
                    local.tee 6
                    i32.const 2
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 1
                    i32.const 1
                    i32.store8 offset=16
                    local.get 1
                    i32.const 0
                    i32.store8 offset=13
                    local.get 1
                    i32.const 13
                    i32.add
                    local.set 7
                    local.get 8
                    i32.eqz
                    br_if 3 (;@5;)
                    br 2 (;@6;)
                  end
                  local.get 1
                  local.get 5
                  call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
                  local.get 1
                  i32.load
                  local.get 1
                  i32.const 8
                  i32.add
                  local.tee 6
                  i32.load
                  local.tee 7
                  i32.add
                  local.get 2
                  local.get 5
                  call $memcpy
                  drop
                  local.get 6
                  local.get 7
                  local.get 5
                  i32.add
                  local.tee 8
                  i32.store
                  local.get 1
                  i32.const 1
                  i32.store8 offset=16
                  local.get 1
                  i32.const 13
                  i32.add
                  local.set 7
                  block  ;; label = @8
                    local.get 1
                    i32.load8_u offset=12
                    local.tee 6
                    i32.const 2
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 8
                    br_if 2 (;@6;)
                    br 3 (;@5;)
                  end
                  local.get 8
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 7
                  i32.const 1
                  i32.store8
                  i32.const 1048952
                  i32.const 43
                  i32.const 1049080
                  call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
                  unreachable
                end
                i32.const 1048952
                i32.const 43
                i32.const 1049096
                call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
                unreachable
              end
              local.get 1
              i32.const 0
              i32.store8 offset=13
              local.get 1
              i32.const 8
              i32.add
              i32.const 0
              i32.store
            end
            local.get 6
            i32.const 3
            i32.and
            i32.const 2
            i32.ne
            br_if 1 (;@3;)
          end
          i32.const 1048952
          i32.const 43
          i32.const 1049096
          call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
          unreachable
        end
        local.get 1
        i32.const 0
        i32.store8 offset=16
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.add
            i32.load
            local.get 3
            local.get 5
            i32.sub
            local.tee 6
            i32.le_u
            br_if 0 (;@4;)
            local.get 1
            local.get 6
            call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hec4393ded0700fb5E
            local.get 1
            i32.load
            local.get 1
            i32.const 8
            i32.add
            local.tee 1
            i32.load
            local.tee 7
            i32.add
            local.get 2
            local.get 5
            i32.add
            local.get 6
            call $memcpy
            drop
            local.get 1
            local.get 7
            local.get 6
            i32.add
            i32.store
            br 1 (;@3;)
          end
          local.get 7
          i32.const 0
          i32.store8
        end
        local.get 0
        i32.const 0
        i32.store
        local.get 0
        local.get 3
        i32.store offset=4
      end
      local.get 4
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048952
    i32.const 43
    i32.const 1049096
    call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
    unreachable)
  (func $_ZN3std10sys_common11at_exit_imp4push17ha88421bf4d0e2bffE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1053816
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1053816
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1053312
              local.tee 2
              i32.const 1
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                br_table 0 (;@6;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 12
              i32.const 4
              call $__rust_alloc
              local.tee 2
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              i32.const 0
              i32.store offset=8
              local.get 2
              i64.const 4
              i64.store align=4
              i32.const 0
              local.get 2
              i32.store offset=1053312
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 3
              local.get 2
              i32.const 4
              i32.add
              i32.load
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.set 4
              br 4 (;@1;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 1
                i32.add
                local.tee 4
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 1
                i32.shl
                local.tee 5
                local.get 4
                local.get 5
                local.get 4
                i32.gt_u
                select
                local.tee 4
                i32.const 4
                local.get 4
                i32.const 4
                i32.gt_u
                select
                local.tee 6
                i32.const 536870911
                i32.and
                local.tee 7
                local.get 6
                i32.ne
                br_if 0 (;@6;)
                local.get 6
                i32.const 3
                i32.shl
                local.tee 5
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.load
                      i32.const 0
                      local.get 3
                      select
                      local.tee 4
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 6
                      i32.eq
                      i32.const 2
                      i32.shl
                      local.set 4
                      local.get 5
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 4
                      call $__rust_alloc
                      local.set 4
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 3
                    i32.shl
                    local.tee 6
                    local.get 5
                    i32.eq
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 6
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 5
                        br_if 0 (;@10;)
                        i32.const 4
                        local.set 4
                        br 3 (;@7;)
                      end
                      local.get 5
                      i32.const 4
                      call $__rust_alloc
                      local.set 4
                      br 1 (;@8;)
                    end
                    local.get 4
                    local.get 6
                    i32.const 4
                    local.get 5
                    call $__rust_realloc
                    local.set 4
                  end
                  local.get 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.load offset=8
                  local.set 3
                end
                local.get 2
                local.get 4
                i32.store
                local.get 2
                i32.const 4
                i32.add
                local.get 5
                i32.const 3
                i32.shr_u
                i32.store
                br 5 (;@1;)
              end
              call $_ZN5alloc7raw_vec17capacity_overflow17hf2be99ee29d9fb92E
              unreachable
            end
            local.get 5
            i32.const 4
            call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
            unreachable
          end
          i32.const 0
          i32.const 0
          i32.store8 offset=1053816
          local.get 0
          local.get 1
          i32.load
          call_indirect (type 0)
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            local.get 1
            i32.load offset=8
            call $__rust_dealloc
          end
          i32.const 0
          return
        end
        i32.const 1049880
        i32.const 32
        i32.const 1049940
        call $_ZN3std9panicking11begin_panic17hc3827558b1f7b155E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
      unreachable
    end
    local.get 4
    local.get 3
    i32.const 3
    i32.shl
    i32.add
    local.tee 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 2
    local.get 2
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    i32.const 0
    i32.const 0
    i32.store8 offset=1053816
    i32.const 1)
  (func $_ZN3std2io5stdio6stdout17h732aefe918dfbbc6E (type 9) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1053308
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=1053308
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1053304
                      local.tee 1
                      i32.const 1
                      i32.gt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          br_table 1 (;@10;) 0 (;@11;) 1 (;@10;)
                        end
                        i32.const 0
                        i32.const 0
                        i32.store8 offset=1053308
                        br 9 (;@1;)
                      end
                      i32.const 4
                      i32.const 4
                      call $__rust_alloc
                      local.tee 1
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 1
                      i32.const 1053304
                      i32.store
                      local.get 1
                      i32.const 1049716
                      call $_ZN3std10sys_common11at_exit_imp4push17ha88421bf4d0e2bffE
                      local.set 2
                      i32.const 1024
                      i32.const 1
                      call $__rust_alloc
                      local.tee 3
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 0
                      i32.const 10
                      i32.add
                      i32.const 2
                      i32.add
                      local.tee 4
                      local.get 0
                      i32.const 13
                      i32.add
                      i32.const 2
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 0
                      local.get 0
                      i32.load16_u offset=13 align=1
                      i32.store16 offset=10
                      i32.const 32
                      i32.const 4
                      call $__rust_alloc
                      local.tee 1
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 1
                      i32.const 0
                      i32.store8 offset=28
                      local.get 1
                      i32.const 0
                      i32.store16 offset=24
                      local.get 1
                      i64.const 1024
                      i64.store offset=16 align=4
                      local.get 1
                      local.get 3
                      i32.store offset=12
                      local.get 1
                      i32.const 0
                      i32.store offset=8
                      local.get 1
                      i64.const 4294967297
                      i64.store align=4
                      local.get 1
                      local.get 0
                      i32.load16_u offset=10
                      i32.store16 offset=29 align=1
                      local.get 1
                      i32.const 31
                      i32.add
                      local.get 4
                      i32.load8_u
                      i32.store8
                      local.get 2
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 1
                      local.get 1
                      i32.load
                      local.tee 2
                      i32.const 1
                      i32.add
                      i32.store
                      local.get 2
                      i32.const -1
                      i32.le_s
                      br_if 6 (;@3;)
                      i32.const 4
                      i32.const 4
                      call $__rust_alloc
                      local.tee 2
                      i32.eqz
                      br_if 7 (;@2;)
                      i32.const 0
                      local.get 2
                      i32.store offset=1053304
                      local.get 2
                      local.get 1
                      i32.store
                      br 1 (;@8;)
                    end
                    local.get 1
                    i32.load
                    local.tee 1
                    local.get 1
                    i32.load
                    local.tee 2
                    i32.const 1
                    i32.add
                    i32.store
                    local.get 2
                    i32.const -1
                    i32.le_s
                    br_if 5 (;@3;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1053308
                  local.get 1
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  i32.const 16
                  i32.add
                  global.set 0
                  local.get 1
                  return
                end
                i32.const 1049880
                i32.const 32
                i32.const 1049940
                call $_ZN3std9panicking11begin_panic17hc3827558b1f7b155E
                unreachable
              end
              i32.const 4
              i32.const 4
              call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
              unreachable
            end
            i32.const 1024
            i32.const 1
            call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
            unreachable
          end
          i32.const 32
          i32.const 4
          call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
          unreachable
        end
        unreachable
        unreachable
      end
      i32.const 4
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
      unreachable
    end
    i32.const 1049522
    i32.const 36
    i32.const 1049560
    call $_ZN4core6option13expect_failed17ha7932b8a5e77ea56E
    unreachable)
  (func $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hb1f5d45c8f54bbb8E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.load
    i32.const 8
    i32.add
    i32.store offset=4
    local.get 3
    i32.const 3
    i32.store8 offset=12
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=8
    local.get 3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.add
          i32.const 1049692
          local.get 3
          i32.const 24
          i32.add
          call $_ZN4core3fmt5write17h03db344ecc8f6131E
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=12
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const 24
            i32.add
            i32.const 16
            i32.const 1049676
            i32.const 15
            call $_ZN3std2io5error5Error3new17hbb2bba7244d38aa3E
            local.get 0
            local.get 3
            i64.load offset=24
            i64.store align=4
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i64.load offset=12 align=4
          i64.store align=4
          br 2 (;@1;)
        end
        local.get 0
        i32.const 3
        i32.store8
      end
      block  ;; label = @2
        i32.const 0
        br_if 0 (;@2;)
        local.get 3
        i32.load8_u offset=12
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 3
      i32.const 16
      i32.add
      i32.load
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 0)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 0
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 1
        local.get 0
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 3
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func $_ZN3std2io5stdio6_print17h142a83dad30e8f53E (type 0) (param i32)
    (local i32 i32 i64 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    i32.const 6
    i32.store offset=36
    local.get 1
    i32.const 1049632
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1053336
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  i32.const 0
                  i64.const 1
                  i64.store offset=1053336 align=4
                  i32.const 0
                  i32.const 0
                  i32.store offset=1053344
                  br 1 (;@6;)
                end
                i32.const 0
                i32.load offset=1053340
                br_if 3 (;@3;)
                i32.const 0
                i32.const 0
                i32.store offset=1053340
                i32.const 0
                i32.load offset=1053344
                local.set 0
                i32.const 0
                i32.const 0
                i32.store offset=1053344
                local.get 0
                br_if 1 (;@5;)
              end
              local.get 1
              call $_ZN3std2io5stdio6stdout17h732aefe918dfbbc6E
              local.tee 0
              i32.store offset=48
              local.get 1
              i32.const 72
              i32.add
              i32.const 16
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i32.const 16
              i32.add
              i64.load
              i64.store
              local.get 1
              i32.const 72
              i32.add
              i32.const 8
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store
              local.get 1
              local.get 1
              i64.load offset=8
              i64.store offset=72
              local.get 1
              i32.const 64
              i32.add
              local.get 1
              i32.const 48
              i32.add
              local.get 1
              i32.const 72
              i32.add
              call $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hb1f5d45c8f54bbb8E
              local.get 0
              local.get 0
              i32.load
              local.tee 2
              i32.const -1
              i32.add
              i32.store
              block  ;; label = @6
                local.get 2
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.const 48
                i32.add
                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd936b0a11cb4a429E
              end
              local.get 1
              i64.load offset=64
              local.set 3
              br 1 (;@4;)
            end
            i32.const 0
            i32.load offset=1053348
            local.set 2
            local.get 1
            i32.const 72
            i32.add
            i32.const 16
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.const 16
            i32.add
            i64.load
            i64.store
            local.get 1
            i32.const 72
            i32.add
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get 1
            local.get 1
            i64.load offset=8
            i64.store offset=72
            local.get 1
            i32.const 48
            i32.add
            local.get 0
            local.get 1
            i32.const 72
            i32.add
            local.get 2
            i32.load offset=36
            call_indirect (type 2)
            i32.const 0
            i32.load offset=1053340
            br_if 2 (;@2;)
            i32.const 0
            i32.const -1
            i32.store offset=1053340
            block  ;; label = @5
              i32.const 0
              i32.load offset=1053344
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const 0
              i32.load offset=1053348
              i32.load
              call_indirect (type 0)
              i32.const 0
              i32.load offset=1053348
              local.tee 4
              i32.load offset=4
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1053344
              local.get 5
              local.get 4
              i32.load offset=8
              call $__rust_dealloc
            end
            i32.const 0
            local.get 2
            i32.store offset=1053348
            i32.const 0
            local.get 0
            i32.store offset=1053344
            i32.const 0
            i32.const 0
            i32.load offset=1053340
            i32.const 1
            i32.add
            i32.store offset=1053340
            local.get 1
            local.get 1
            i64.load offset=48
            local.tee 3
            i64.store offset=64
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.wrap_i64
              local.tee 0
              i32.const 255
              i32.and
              i32.const 4
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              call $_ZN3std2io5stdio6stdout17h732aefe918dfbbc6E
              local.tee 0
              i32.store offset=48
              local.get 1
              i32.const 72
              i32.add
              i32.const 16
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i32.const 16
              i32.add
              i64.load
              i64.store
              local.get 1
              i32.const 72
              i32.add
              i32.const 8
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store
              local.get 1
              local.get 1
              i64.load offset=8
              i64.store offset=72
              local.get 1
              i32.const 40
              i32.add
              local.get 1
              i32.const 48
              i32.add
              local.get 1
              i32.const 72
              i32.add
              call $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hb1f5d45c8f54bbb8E
              local.get 0
              local.get 0
              i32.load
              local.tee 2
              i32.const -1
              i32.add
              i32.store
              block  ;; label = @6
                local.get 2
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.const 48
                i32.add
                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd936b0a11cb4a429E
              end
              local.get 1
              i32.load8_u offset=40
              local.tee 2
              local.set 0
              br 1 (;@4;)
            end
            local.get 1
            local.get 3
            i64.store offset=40
            local.get 3
            i32.wrap_i64
            local.set 2
          end
          local.get 0
          i32.const 255
          i32.and
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              br_if 0 (;@5;)
              local.get 2
              i32.const 3
              i32.and
              i32.const 2
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 1
            i32.load offset=44
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type 0)
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 2
              i32.load offset=4
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.get 4
              local.get 2
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          local.get 1
          i32.const 96
          i32.add
          global.set 0
          return
        end
        i32.const 1048836
        i32.const 16
        local.get 1
        i32.const 72
        i32.add
        i32.const 1048996
        i32.const 1048920
        call $_ZN4core6option18expect_none_failed17ha72d60de35a76889E
        unreachable
      end
      i32.const 1048836
      i32.const 16
      local.get 1
      i32.const 72
      i32.add
      i32.const 1048996
      i32.const 1048920
      call $_ZN4core6option18expect_none_failed17ha72d60de35a76889E
      unreachable
    end
    local.get 1
    local.get 1
    i64.load offset=40
    i64.store offset=64
    local.get 1
    i32.const 92
    i32.add
    i32.const 2
    i32.store
    local.get 1
    i32.const 60
    i32.add
    i32.const 8
    i32.store
    local.get 1
    i64.const 2
    i64.store offset=76 align=4
    local.get 1
    i32.const 1049600
    i32.store offset=72
    local.get 1
    i32.const 5
    i32.store offset=52
    local.get 1
    local.get 1
    i32.const 48
    i32.add
    i32.store offset=88
    local.get 1
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=56
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=48
    local.get 1
    i32.const 72
    i32.add
    i32.const 1049616
    call $_ZN3std9panicking15begin_panic_fmt17h268cca988846a20cE
    unreachable)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17haa7142f3d1b1f4dfE (type 4) (param i32 i32 i32) (result i32)
    (local i32 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h38ad1ed47dbacfa5E
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type 0)
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load
          local.get 5
          local.get 2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
      i32.const 1
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN3std7process5abort17hf44e12dd3440a62fE (type 10)
    unreachable
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17hce7bb12e13f004efE (type 3) (param i32 i32))
  (func $rust_oom (type 3) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1053316
    local.tee 2
    i32.const 9
    local.get 2
    select
    call_indirect (type 3)
    unreachable
    unreachable)
  (func $__rdl_alloc (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      i32.const 1053352
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h51f18c9290e80452E
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1053352
      local.get 1
      local.get 0
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17hf5202c70c1037bf6E
      return
    end
    i32.const 1053352
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h9a9676d60fded2e9E)
  (func $__rdl_dealloc (type 2) (param i32 i32 i32)
    i32.const 1053352
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h679d467e7de3b1b4E)
  (func $__rdl_realloc (type 7) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1053352
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h51f18c9290e80452E
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1053352
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h51f18c9290e80452E
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 1053352
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17hf5202c70c1037bf6E
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1053352
          local.get 3
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h9a9676d60fded2e9E
          local.set 2
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        return
      end
      i32.const 1053352
      local.get 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17h66953827db786132E
      return
    end
    local.get 2
    local.get 0
    local.get 3
    local.get 1
    local.get 1
    local.get 3
    i32.gt_u
    select
    call $memcpy
    local.set 2
    i32.const 1053352
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h679d467e7de3b1b4E
    local.get 2)
  (func $rust_begin_unwind (type 0) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call $_ZN4core5panic9PanicInfo8location17h6e7758c42293c44bE
    i32.const 1049756
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h1f6842c8db5d4385E
    local.set 2
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h07341bab64d53fa5E
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h5ab8b742d8309a0dE
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1049788
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h07341bab64d53fa5E
    local.get 2
    call $_ZN3std9panicking20rust_panic_with_hook17h3e6619a8809a443aE
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h3e6619a8809a443aE (type 8) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1
    local.set 5
    i32.const 0
    i32.const 0
    i32.load offset=1053332
    i32.const 1
    i32.add
    i32.store offset=1053332
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1053808
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i64.const 4294967297
            i64.store offset=1053808
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1053812
          i32.const 1
          i32.add
          local.tee 5
          i32.store offset=1053812
          local.get 5
          i32.const 2
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 3
        i32.store offset=28
        local.get 4
        local.get 2
        i32.store offset=24
        local.get 4
        i32.const 1048936
        i32.store offset=20
        local.get 4
        i32.const 1048936
        i32.store offset=16
        i32.const 0
        i32.load offset=1053320
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store offset=1053320
        block  ;; label = @3
          i32.const 0
          i32.load offset=1053328
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1053324
          local.set 2
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 3)
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=16
          local.get 2
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          i32.load offset=12
          call_indirect (type 3)
          i32.const 0
          i32.load offset=1053320
          local.set 2
        end
        i32.const 0
        local.get 2
        i32.const -1
        i32.add
        i32.store offset=1053320
        local.get 5
        i32.const 1
        i32.le_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h44e504a8438812daE (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.set 3
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      i32.const 1048812
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h03db344ecc8f6131E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
      unreachable
    end
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 5
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049808
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h2aa62db920c95ad9E (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      i32.const 1048812
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h03db344ecc8f6131E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1049808
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3f421cf08063488aE (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=4
        local.set 3
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store offset=4
        local.get 1
        local.get 2
        i32.store
        local.get 0
        i32.const 1049844
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        return
      end
      unreachable
      unreachable
    end
    i32.const 8
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE
    unreachable)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hee5dfcdb6bd41862E (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      br_if 0 (;@1;)
      unreachable
      unreachable
    end
    local.get 0
    i32.const 1049844
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $rust_panic (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $__rust_start_panic
    drop
    unreachable
    unreachable)
  (func $__rust_start_panic (type 5) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h51f18c9290e80452E (type 5) (param i32) (result i32)
    i32.const 8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h9a9676d60fded2e9E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 245
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              local.get 1
              i32.const -65587
              i32.ge_u
              br_if 4 (;@1;)
              local.get 1
              i32.const 11
              i32.add
              local.tee 1
              i32.const -8
              i32.and
              local.set 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              i32.const 0
              local.set 5
              block  ;; label = @6
                local.get 1
                i32.const 8
                i32.shr_u
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                i32.const 31
                local.set 5
                local.get 3
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 6
                local.get 1
                i32.clz
                local.tee 1
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 1
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 5
              end
              i32.const 0
              local.get 3
              i32.sub
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 5
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 6
                    local.get 3
                    i32.const 0
                    i32.const 25
                    local.get 5
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 31
                    i32.and
                    local.get 5
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 7
                    i32.const 0
                    local.set 8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -8
                        i32.and
                        local.tee 9
                        local.get 3
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 9
                        local.get 3
                        i32.sub
                        local.tee 9
                        local.get 2
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 9
                        local.set 2
                        local.get 1
                        local.set 8
                        local.get 9
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 2
                        local.get 1
                        local.set 8
                        br 3 (;@7;)
                      end
                      local.get 1
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 9
                      local.get 6
                      local.get 9
                      local.get 1
                      local.get 7
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      i32.load
                      local.tee 1
                      i32.ne
                      select
                      local.get 6
                      local.get 9
                      select
                      local.set 6
                      local.get 7
                      i32.const 1
                      i32.shl
                      local.set 7
                      local.get 1
                      br_if 0 (;@9;)
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.set 1
                      br 2 (;@7;)
                    end
                    local.get 8
                    br_if 2 (;@6;)
                  end
                  i32.const 0
                  local.set 8
                  i32.const 2
                  local.get 5
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.or
                  local.get 4
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 272
                  i32.add
                  i32.load
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                end
                loop  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.tee 6
                  local.get 3
                  i32.ge_u
                  local.get 6
                  local.get 3
                  i32.sub
                  local.tee 9
                  local.get 2
                  i32.lt_u
                  i32.and
                  local.set 7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=16
                    local.tee 6
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    i32.load
                    local.set 6
                  end
                  local.get 1
                  local.get 8
                  local.get 7
                  select
                  local.set 8
                  local.get 9
                  local.get 2
                  local.get 7
                  select
                  local.set 2
                  local.get 6
                  local.set 1
                  local.get 6
                  br_if 0 (;@7;)
                end
                local.get 8
                i32.eqz
                br_if 2 (;@4;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=400
                local.tee 1
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 1
                local.get 3
                i32.sub
                i32.ge_u
                br_if 2 (;@4;)
              end
              local.get 8
              i32.load offset=24
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.load offset=12
                    local.tee 6
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 20
                    i32.const 16
                    local.get 8
                    i32.const 20
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 7
                    select
                    i32.add
                    i32.load
                    local.tee 1
                    br_if 1 (;@7;)
                    i32.const 0
                    local.set 6
                    br 2 (;@6;)
                  end
                  local.get 8
                  i32.load offset=8
                  local.tee 1
                  local.get 6
                  i32.store offset=12
                  local.get 6
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 6
                local.get 8
                i32.const 16
                i32.add
                local.get 7
                select
                local.set 7
                loop  ;; label = @7
                  local.get 7
                  local.set 9
                  block  ;; label = @8
                    local.get 1
                    local.tee 6
                    i32.const 20
                    i32.add
                    local.tee 7
                    i32.load
                    local.tee 1
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 16
                    i32.add
                    local.set 7
                    local.get 6
                    i32.load offset=16
                    local.set 1
                  end
                  local.get 1
                  br_if 0 (;@7;)
                end
                local.get 9
                i32.const 0
                i32.store
              end
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 8
                    i32.load offset=28
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    local.tee 1
                    i32.load
                    local.get 8
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 16
                    i32.const 20
                    local.get 5
                    i32.load offset=16
                    local.get 8
                    i32.eq
                    select
                    i32.add
                    local.get 6
                    i32.store
                    local.get 6
                    i32.eqz
                    br_if 2 (;@6;)
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load
                  i32.const -2
                  local.get 8
                  i32.load offset=28
                  i32.rotl
                  i32.and
                  i32.store
                  br 1 (;@6;)
                end
                local.get 6
                local.get 5
                i32.store offset=24
                block  ;; label = @7
                  local.get 8
                  i32.load offset=16
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 1
                  i32.store offset=16
                  local.get 1
                  local.get 6
                  i32.store offset=24
                end
                local.get 8
                i32.const 20
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 20
                i32.add
                local.get 1
                i32.store
                local.get 1
                local.get 6
                i32.store offset=24
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 3
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 3
                  i32.add
                  local.tee 3
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  local.get 2
                  i32.add
                  local.get 2
                  i32.store
                  block  ;; label = @8
                    local.get 2
                    i32.const 256
                    i32.lt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 6
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 1
                        br 1 (;@9;)
                      end
                      i32.const 31
                      local.set 1
                      local.get 2
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 6
                      local.get 6
                      i32.clz
                      local.tee 1
                      i32.sub
                      i32.const 31
                      i32.and
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get 1
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set 1
                    end
                    local.get 3
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 3
                    local.get 1
                    i32.store offset=28
                    local.get 0
                    local.get 1
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.const 4
                              i32.add
                              local.tee 7
                              i32.load
                              local.tee 9
                              i32.const 1
                              local.get 1
                              i32.const 31
                              i32.and
                              i32.shl
                              local.tee 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load
                              local.tee 7
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.ne
                              br_if 1 (;@12;)
                              local.get 7
                              local.set 1
                              br 2 (;@11;)
                            end
                            local.get 7
                            local.get 9
                            local.get 0
                            i32.or
                            i32.store
                            local.get 6
                            local.get 3
                            i32.store
                            local.get 3
                            local.get 6
                            i32.store offset=24
                            br 3 (;@9;)
                          end
                          local.get 2
                          i32.const 0
                          i32.const 25
                          local.get 1
                          i32.const 1
                          i32.shr_u
                          i32.sub
                          i32.const 31
                          i32.and
                          local.get 1
                          i32.const 31
                          i32.eq
                          select
                          i32.shl
                          local.set 6
                          loop  ;; label = @12
                            local.get 7
                            local.get 6
                            i32.const 29
                            i32.shr_u
                            i32.const 4
                            i32.and
                            i32.add
                            i32.const 16
                            i32.add
                            local.tee 9
                            i32.load
                            local.tee 1
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 6
                            i32.const 1
                            i32.shl
                            local.set 6
                            local.get 1
                            local.set 7
                            local.get 1
                            i32.const 4
                            i32.add
                            i32.load
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.ne
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 1
                        i32.load offset=8
                        local.tee 2
                        local.get 3
                        i32.store offset=12
                        local.get 1
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        i32.const 0
                        i32.store offset=24
                        local.get 3
                        local.get 1
                        i32.store offset=12
                        local.get 3
                        local.get 2
                        i32.store offset=8
                        br 4 (;@6;)
                      end
                      local.get 9
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 7
                      i32.store offset=24
                    end
                    local.get 3
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 3
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  local.get 0
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.add
                  i32.const 8
                  i32.add
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 2
                      i32.shl
                      local.tee 2
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load offset=8
                      local.set 2
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 6
                    local.get 2
                    i32.or
                    i32.store
                    local.get 1
                    local.set 2
                  end
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  local.get 2
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 1
                  i32.store offset=12
                  local.get 3
                  local.get 2
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 8
                local.get 2
                local.get 3
                i32.add
                local.tee 1
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 8
                local.get 1
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
              end
              local.get 8
              i32.const 8
              i32.add
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load
                  local.tee 8
                  i32.const 16
                  local.get 1
                  i32.const 11
                  i32.add
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.const 11
                  i32.lt_u
                  select
                  local.tee 3
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.shr_u
                  local.tee 1
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.load offset=400
                  i32.le_u
                  br_if 3 (;@4;)
                  local.get 1
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load offset=4
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 272
                  i32.add
                  i32.load
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.get 3
                  i32.sub
                  local.set 2
                  local.get 6
                  local.set 7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=16
                      local.tee 1
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                    end
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    i32.const -8
                    i32.and
                    local.get 3
                    i32.sub
                    local.tee 6
                    local.get 2
                    local.get 6
                    local.get 2
                    i32.lt_u
                    local.tee 6
                    select
                    local.set 2
                    local.get 1
                    local.get 7
                    local.get 6
                    select
                    local.set 7
                    local.get 1
                    local.set 6
                    br 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 1
                    i32.const -1
                    i32.xor
                    i32.const 1
                    i32.and
                    local.get 2
                    i32.add
                    local.tee 3
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee 7
                    i32.const 16
                    i32.add
                    i32.load
                    local.tee 1
                    i32.const 8
                    i32.add
                    local.tee 2
                    i32.load
                    local.tee 6
                    local.get 7
                    i32.const 8
                    i32.add
                    local.tee 7
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 7
                    i32.store offset=12
                    local.get 7
                    local.get 6
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 8
                  i32.const -2
                  local.get 3
                  i32.rotl
                  i32.and
                  i32.store
                end
                local.get 1
                local.get 3
                i32.const 3
                i32.shl
                local.tee 3
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                local.get 3
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  local.get 2
                  i32.shl
                  i32.const 2
                  local.get 2
                  i32.shl
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.or
                  i32.and
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 7
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 1
                  i32.const 8
                  i32.add
                  local.tee 9
                  i32.load
                  local.tee 6
                  local.get 7
                  i32.const 8
                  i32.add
                  local.tee 7
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 7
                  i32.store offset=12
                  local.get 7
                  local.get 6
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 0
                local.get 8
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
              end
              local.get 1
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.add
              local.tee 6
              local.get 2
              i32.const 3
              i32.shl
              local.tee 2
              local.get 3
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 3
              i32.store
              block  ;; label = @6
                local.get 0
                i32.load offset=400
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 1
                i32.const 3
                i32.shr_u
                local.tee 7
                i32.const 3
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.set 2
                local.get 0
                i32.load offset=408
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 8
                    i32.const 1
                    local.get 7
                    i32.const 31
                    i32.and
                    i32.shl
                    local.tee 7
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.load offset=8
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 8
                  local.get 7
                  i32.or
                  i32.store
                  local.get 2
                  local.set 7
                end
                local.get 2
                local.get 1
                i32.store offset=8
                local.get 7
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 2
                i32.store offset=12
                local.get 1
                local.get 7
                i32.store offset=8
              end
              local.get 0
              local.get 6
              i32.store offset=408
              local.get 0
              local.get 3
              i32.store offset=400
              local.get 9
              return
            end
            local.get 7
            i32.load offset=24
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.load offset=12
                  local.tee 6
                  local.get 7
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 20
                  i32.const 16
                  local.get 7
                  i32.const 20
                  i32.add
                  local.tee 6
                  i32.load
                  local.tee 8
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 6
                  br 2 (;@5;)
                end
                local.get 7
                i32.load offset=8
                local.tee 1
                local.get 6
                i32.store offset=12
                local.get 6
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 6
              local.get 7
              i32.const 16
              i32.add
              local.get 8
              select
              local.set 8
              loop  ;; label = @6
                local.get 8
                local.set 9
                block  ;; label = @7
                  local.get 1
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 8
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 8
                  local.get 6
                  i32.load offset=16
                  local.set 1
                end
                local.get 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
            end
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              local.get 7
              i32.load offset=28
              i32.const 2
              i32.shl
              i32.add
              i32.const 272
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.const 20
              local.get 5
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 3 (;@2;)
              br 2 (;@3;)
            end
            local.get 1
            local.get 6
            i32.store
            local.get 6
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=4
            i32.const -2
            local.get 7
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store offset=4
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=400
                      local.tee 1
                      local.get 3
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=404
                      local.tee 1
                      local.get 3
                      i32.gt_u
                      br_if 3 (;@6;)
                      i32.const 0
                      local.set 2
                      local.get 3
                      i32.const 65583
                      i32.add
                      local.tee 6
                      i32.const 16
                      i32.shr_u
                      memory.grow
                      local.tee 1
                      i32.const -1
                      i32.eq
                      br_if 8 (;@1;)
                      local.get 1
                      i32.const 16
                      i32.shl
                      local.tee 8
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      local.get 0
                      i32.load offset=416
                      local.get 6
                      i32.const -65536
                      i32.and
                      local.tee 5
                      i32.add
                      local.tee 1
                      i32.store offset=416
                      local.get 0
                      local.get 0
                      i32.load offset=420
                      local.tee 6
                      local.get 1
                      local.get 6
                      local.get 1
                      i32.gt_u
                      select
                      i32.store offset=420
                      local.get 0
                      i32.load offset=412
                      local.tee 6
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 424
                      i32.add
                      local.tee 4
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        i32.load
                        local.tee 7
                        local.get 1
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        local.get 8
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 1
                        i32.load offset=8
                        local.tee 1
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 0
                    i32.load offset=408
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        local.get 3
                        i32.sub
                        local.tee 6
                        i32.const 15
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 0
                        i32.store offset=408
                        local.get 0
                        i32.const 0
                        i32.store offset=400
                        local.get 2
                        local.get 1
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 1
                        i32.add
                        local.tee 3
                        i32.const 4
                        i32.add
                        local.set 1
                        local.get 3
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        local.set 3
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 6
                      i32.store offset=400
                      local.get 0
                      local.get 2
                      local.get 3
                      i32.add
                      local.tee 7
                      i32.store offset=408
                      local.get 7
                      local.get 6
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 1
                      i32.add
                      local.get 6
                      i32.store
                      local.get 3
                      i32.const 3
                      i32.or
                      local.set 3
                      local.get 2
                      i32.const 4
                      i32.add
                      local.set 1
                    end
                    local.get 1
                    local.get 3
                    i32.store
                    local.get 2
                    i32.const 8
                    i32.add
                    return
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=444
                      local.tee 1
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 8
                      i32.le_u
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    local.get 8
                    i32.store offset=444
                  end
                  local.get 0
                  i32.const 4095
                  i32.store offset=448
                  local.get 0
                  local.get 8
                  i32.store offset=424
                  local.get 0
                  i32.const 436
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 0
                  i32.const 428
                  i32.add
                  local.get 5
                  i32.store
                  local.get 0
                  i32.const 20
                  i32.add
                  local.get 0
                  i32.const 8
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 0
                  i32.const 28
                  i32.add
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 36
                  i32.add
                  local.get 0
                  i32.const 24
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 44
                  i32.add
                  local.get 0
                  i32.const 32
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 52
                  i32.add
                  local.get 0
                  i32.const 40
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 60
                  i32.add
                  local.get 0
                  i32.const 48
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 68
                  i32.add
                  local.get 0
                  i32.const 56
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 76
                  i32.add
                  local.get 0
                  i32.const 64
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 84
                  i32.add
                  local.get 0
                  i32.const 72
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 80
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 92
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 88
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 100
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 96
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 108
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 104
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 116
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 112
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 124
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 120
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 132
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 128
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 136
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 148
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 156
                  i32.add
                  local.get 0
                  i32.const 144
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 164
                  i32.add
                  local.get 0
                  i32.const 152
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 172
                  i32.add
                  local.get 0
                  i32.const 160
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 180
                  i32.add
                  local.get 0
                  i32.const 168
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 188
                  i32.add
                  local.get 0
                  i32.const 176
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 196
                  i32.add
                  local.get 0
                  i32.const 184
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 204
                  i32.add
                  local.get 0
                  i32.const 192
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 212
                  i32.add
                  local.get 0
                  i32.const 200
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 220
                  i32.add
                  local.get 0
                  i32.const 208
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 228
                  i32.add
                  local.get 0
                  i32.const 216
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 236
                  i32.add
                  local.get 0
                  i32.const 224
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 244
                  i32.add
                  local.get 0
                  i32.const 232
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 252
                  i32.add
                  local.get 0
                  i32.const 240
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 260
                  i32.add
                  local.get 0
                  i32.const 248
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 268
                  i32.add
                  local.get 0
                  i32.const 256
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  local.get 8
                  i32.store offset=412
                  local.get 0
                  i32.const 264
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  local.get 5
                  i32.const -40
                  i32.add
                  local.tee 1
                  i32.store offset=404
                  local.get 8
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 1
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  local.get 0
                  i32.const 2097152
                  i32.store offset=440
                  br 3 (;@4;)
                end
                local.get 1
                i32.const 12
                i32.add
                i32.load
                br_if 1 (;@5;)
                local.get 8
                local.get 6
                i32.le_u
                br_if 1 (;@5;)
                local.get 7
                local.get 6
                i32.gt_u
                br_if 1 (;@5;)
                local.get 1
                local.get 9
                local.get 5
                i32.add
                i32.store offset=4
                local.get 0
                local.get 0
                i32.load offset=412
                local.tee 1
                i32.const 15
                i32.add
                i32.const -8
                i32.and
                local.tee 6
                i32.const -8
                i32.add
                i32.store offset=412
                local.get 0
                local.get 1
                local.get 6
                i32.sub
                local.get 0
                i32.load offset=404
                local.get 5
                i32.add
                local.tee 7
                i32.add
                i32.const 8
                i32.add
                local.tee 8
                i32.store offset=404
                local.get 6
                i32.const -4
                i32.add
                local.get 8
                i32.const 1
                i32.or
                i32.store
                local.get 1
                local.get 7
                i32.add
                i32.const 40
                i32.store offset=4
                local.get 0
                i32.const 2097152
                i32.store offset=440
                br 2 (;@4;)
              end
              local.get 0
              local.get 1
              local.get 3
              i32.sub
              local.tee 2
              i32.store offset=404
              local.get 0
              local.get 0
              i32.load offset=412
              local.tee 1
              local.get 3
              i32.add
              local.tee 6
              i32.store offset=412
              local.get 6
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              i32.const 8
              i32.add
              return
            end
            local.get 0
            local.get 0
            i32.load offset=444
            local.tee 1
            local.get 8
            local.get 1
            local.get 8
            i32.lt_u
            select
            i32.store offset=444
            local.get 8
            local.get 5
            i32.add
            local.set 7
            local.get 4
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  i32.load
                  local.get 7
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load offset=8
                  local.tee 1
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 1
              i32.const 12
              i32.add
              i32.load
              br_if 0 (;@5;)
              local.get 1
              local.get 8
              i32.store
              local.get 1
              local.get 1
              i32.load offset=4
              local.get 5
              i32.add
              i32.store offset=4
              local.get 8
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 8
              local.get 3
              i32.add
              local.set 1
              local.get 7
              local.get 8
              i32.sub
              local.get 3
              i32.sub
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=412
                    local.get 7
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    i32.load offset=408
                    local.get 7
                    i32.eq
                    br_if 1 (;@7;)
                    block  ;; label = @9
                      local.get 7
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 2
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 7
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE
                      local.get 2
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 7
                      local.get 2
                      i32.add
                      local.set 7
                    end
                    local.get 7
                    local.get 7
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.add
                    local.get 3
                    i32.store
                    block  ;; label = @9
                      local.get 3
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.const 8
                          i32.shr_u
                          local.tee 6
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          br 1 (;@10;)
                        end
                        i32.const 31
                        local.set 2
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 6
                        local.get 6
                        i32.clz
                        local.tee 2
                        i32.sub
                        i32.const 31
                        i32.and
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 2
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 2
                      end
                      local.get 1
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 1
                      local.get 2
                      i32.store offset=28
                      local.get 0
                      local.get 2
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.const 272
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const 4
                                i32.add
                                local.tee 7
                                i32.load
                                local.tee 9
                                i32.const 1
                                local.get 2
                                i32.const 31
                                i32.and
                                i32.shl
                                local.tee 0
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 6
                                i32.load
                                local.tee 7
                                i32.const 4
                                i32.add
                                i32.load
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 7
                                local.set 2
                                br 2 (;@12;)
                              end
                              local.get 7
                              local.get 9
                              local.get 0
                              i32.or
                              i32.store
                              local.get 6
                              local.get 1
                              i32.store
                              local.get 1
                              local.get 6
                              i32.store offset=24
                              br 3 (;@10;)
                            end
                            local.get 3
                            i32.const 0
                            i32.const 25
                            local.get 2
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            i32.const 31
                            i32.and
                            local.get 2
                            i32.const 31
                            i32.eq
                            select
                            i32.shl
                            local.set 6
                            loop  ;; label = @13
                              local.get 7
                              local.get 6
                              i32.const 29
                              i32.shr_u
                              i32.const 4
                              i32.and
                              i32.add
                              i32.const 16
                              i32.add
                              local.tee 9
                              i32.load
                              local.tee 2
                              i32.eqz
                              br_if 2 (;@11;)
                              local.get 6
                              i32.const 1
                              i32.shl
                              local.set 6
                              local.get 2
                              local.set 7
                              local.get 2
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const -8
                              i32.and
                              local.get 3
                              i32.ne
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 2
                          i32.load offset=8
                          local.tee 3
                          local.get 1
                          i32.store offset=12
                          local.get 2
                          local.get 1
                          i32.store offset=8
                          local.get 1
                          i32.const 0
                          i32.store offset=24
                          local.get 1
                          local.get 2
                          i32.store offset=12
                          local.get 1
                          local.get 3
                          i32.store offset=8
                          br 5 (;@6;)
                        end
                        local.get 9
                        local.get 1
                        i32.store
                        local.get 1
                        local.get 7
                        i32.store offset=24
                      end
                      local.get 1
                      local.get 1
                      i32.store offset=12
                      local.get 1
                      local.get 1
                      i32.store offset=8
                      br 3 (;@6;)
                    end
                    local.get 0
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    local.tee 2
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.const 8
                    i32.add
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 6
                        i32.const 1
                        local.get 2
                        i32.shl
                        local.tee 2
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.load offset=8
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 6
                      local.get 2
                      i32.or
                      i32.store
                      local.get 3
                      local.set 2
                    end
                    local.get 3
                    local.get 1
                    i32.store offset=8
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 3
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  local.get 0
                  local.get 1
                  i32.store offset=412
                  local.get 0
                  local.get 0
                  i32.load offset=404
                  local.get 3
                  i32.add
                  local.tee 3
                  i32.store offset=404
                  local.get 1
                  local.get 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  br 1 (;@6;)
                end
                local.get 0
                local.get 1
                i32.store offset=408
                local.get 0
                local.get 0
                i32.load offset=400
                local.get 3
                i32.add
                local.tee 3
                i32.store offset=400
                local.get 1
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 3
                i32.add
                local.get 3
                i32.store
              end
              local.get 8
              i32.const 8
              i32.add
              return
            end
            local.get 4
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load
                  local.tee 7
                  local.get 6
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 1
                  i32.load offset=4
                  i32.add
                  local.tee 7
                  local.get 6
                  i32.gt_u
                  br_if 2 (;@5;)
                end
                local.get 1
                i32.load offset=8
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 8
            i32.store offset=412
            local.get 0
            local.get 5
            i32.const -40
            i32.add
            local.tee 1
            i32.store offset=404
            local.get 8
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 8
            local.get 1
            i32.add
            i32.const 40
            i32.store offset=4
            local.get 0
            i32.const 2097152
            i32.store offset=440
            local.get 6
            local.get 7
            i32.const -32
            i32.add
            i32.const -8
            i32.and
            i32.const -8
            i32.add
            local.tee 1
            local.get 1
            local.get 6
            i32.const 16
            i32.add
            i32.lt_u
            select
            local.tee 9
            i32.const 27
            i32.store offset=4
            local.get 4
            i64.load align=4
            local.set 10
            local.get 9
            i32.const 16
            i32.add
            local.get 4
            i32.const 8
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 9
            local.get 10
            i64.store offset=8 align=4
            local.get 0
            i32.const 436
            i32.add
            i32.const 0
            i32.store
            local.get 0
            i32.const 428
            i32.add
            local.get 5
            i32.store
            local.get 0
            local.get 8
            i32.store offset=424
            local.get 0
            i32.const 432
            i32.add
            local.get 9
            i32.const 8
            i32.add
            i32.store
            local.get 9
            i32.const 28
            i32.add
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 7
              i32.store
              local.get 7
              local.get 1
              i32.const 4
              i32.add
              local.tee 1
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 9
            local.get 6
            i32.eq
            br_if 0 (;@4;)
            local.get 9
            local.get 9
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 6
            local.get 9
            local.get 6
            i32.sub
            local.tee 8
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 9
            local.get 8
            i32.store
            block  ;; label = @5
              local.get 8
              i32.const 256
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.const 8
                  i32.shr_u
                  local.tee 7
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  br 1 (;@6;)
                end
                i32.const 31
                local.set 1
                local.get 8
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 8
                i32.const 6
                local.get 7
                i32.clz
                local.tee 1
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 1
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 1
              end
              local.get 6
              i64.const 0
              i64.store offset=16 align=4
              local.get 6
              i32.const 28
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 2
              i32.shl
              i32.add
              i32.const 272
              i32.add
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 9
                        i32.load
                        local.tee 5
                        i32.const 1
                        local.get 1
                        i32.const 31
                        i32.and
                        i32.shl
                        local.tee 4
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 7
                        i32.load
                        local.tee 9
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -8
                        i32.and
                        local.get 8
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 9
                        local.set 1
                        br 2 (;@8;)
                      end
                      local.get 9
                      local.get 5
                      local.get 4
                      i32.or
                      i32.store
                      local.get 7
                      local.get 6
                      i32.store
                      local.get 6
                      i32.const 24
                      i32.add
                      local.get 7
                      i32.store
                      br 3 (;@6;)
                    end
                    local.get 8
                    i32.const 0
                    i32.const 25
                    local.get 1
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 31
                    i32.and
                    local.get 1
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 7
                    loop  ;; label = @9
                      local.get 9
                      local.get 7
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 5
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 7
                      i32.const 1
                      i32.shl
                      local.set 7
                      local.get 1
                      local.set 9
                      local.get 1
                      i32.const 4
                      i32.add
                      i32.load
                      i32.const -8
                      i32.and
                      local.get 8
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 1
                  i32.load offset=8
                  local.tee 7
                  local.get 6
                  i32.store offset=12
                  local.get 1
                  local.get 6
                  i32.store offset=8
                  local.get 6
                  i32.const 24
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store offset=12
                  local.get 6
                  local.get 7
                  i32.store offset=8
                  br 3 (;@4;)
                end
                local.get 5
                local.get 6
                i32.store
                local.get 6
                i32.const 24
                i32.add
                local.get 9
                i32.store
              end
              local.get 6
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 6
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            local.get 8
            i32.const 3
            i32.shr_u
            local.tee 7
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 8
                i32.const 1
                local.get 7
                i32.shl
                local.tee 7
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=8
                local.set 7
                br 1 (;@5;)
              end
              local.get 0
              local.get 8
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.set 7
            end
            local.get 1
            local.get 6
            i32.store offset=8
            local.get 7
            local.get 6
            i32.store offset=12
            local.get 6
            local.get 1
            i32.store offset=12
            local.get 6
            local.get 7
            i32.store offset=8
          end
          local.get 0
          i32.load offset=404
          local.tee 1
          local.get 3
          i32.le_u
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          local.tee 2
          i32.store offset=404
          local.get 0
          local.get 0
          i32.load offset=412
          local.tee 1
          local.get 3
          i32.add
          local.tee 6
          i32.store offset=412
          local.get 6
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          return
        end
        local.get 6
        local.get 5
        i32.store offset=24
        block  ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 6
          i32.store offset=24
        end
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 20
        i32.add
        local.get 1
        i32.store
        local.get 1
        local.get 6
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 3
          i32.add
          local.tee 3
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 2
          i32.add
          local.get 2
          i32.store
          block  ;; label = @4
            local.get 0
            i32.load offset=400
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 8
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 6
            local.get 0
            i32.load offset=408
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 9
                i32.const 1
                local.get 8
                i32.const 31
                i32.and
                i32.shl
                local.tee 8
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=8
                local.set 8
                br 1 (;@5;)
              end
              local.get 0
              local.get 9
              local.get 8
              i32.or
              i32.store
              local.get 6
              local.set 8
            end
            local.get 6
            local.get 1
            i32.store offset=8
            local.get 8
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 6
            i32.store offset=12
            local.get 1
            local.get 8
            i32.store offset=8
          end
          local.get 0
          local.get 3
          i32.store offset=408
          local.get 0
          local.get 2
          i32.store offset=400
          br 1 (;@2;)
        end
        local.get 7
        local.get 2
        local.get 3
        i32.add
        local.tee 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 7
        local.get 1
        i32.add
        local.tee 1
        local.get 1
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 7
      i32.const 8
      i32.add
      return
    end
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 24
          i32.add
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=12
                local.tee 4
                local.get 1
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.const 20
                i32.const 16
                local.get 1
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 5
                select
                i32.add
                i32.load
                local.tee 2
                br_if 1 (;@5;)
                i32.const 0
                local.set 4
                br 2 (;@4;)
              end
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 4
            local.get 1
            i32.const 16
            i32.add
            local.get 5
            select
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.set 6
              block  ;; label = @6
                local.get 2
                local.tee 4
                i32.const 20
                i32.add
                local.tee 5
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 4
                i32.const 16
                i32.add
                local.set 5
                local.get 4
                i32.load offset=16
                local.set 2
              end
              local.get 2
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.tee 2
            i32.load
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 4
            i32.store
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 2
          local.get 4
          i32.store
          local.get 4
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=4
          i32.const -2
          local.get 1
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=4
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=8
          return
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 2
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.store offset=24
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 2
        i32.store offset=16
        local.get 2
        local.get 4
        i32.store offset=24
      end
      local.get 1
      i32.const 20
      i32.add
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 20
      i32.add
      local.get 2
      i32.store
      local.get 2
      local.get 4
      i32.store offset=24
      return
    end)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17h66953827db786132E (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const -65588
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.set 4
      local.get 1
      i32.const -4
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.const -8
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const -8
                    i32.add
                    local.tee 8
                    local.get 7
                    i32.add
                    local.set 9
                    local.get 7
                    local.get 4
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load offset=412
                    local.get 9
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 0
                    i32.load offset=408
                    local.get 9
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 9
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 6
                    i32.const 2
                    i32.and
                    br_if 6 (;@2;)
                    local.get 6
                    i32.const -8
                    i32.and
                    local.tee 6
                    local.get 7
                    i32.add
                    local.tee 7
                    local.get 4
                    i32.ge_u
                    br_if 4 (;@4;)
                    br 6 (;@2;)
                  end
                  local.get 4
                  i32.const 256
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 7
                  local.get 4
                  i32.const 4
                  i32.or
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 7
                  local.get 4
                  i32.sub
                  i32.const 131073
                  i32.ge_u
                  br_if 5 (;@2;)
                  br 4 (;@3;)
                end
                local.get 7
                local.get 4
                i32.sub
                local.tee 2
                i32.const 16
                i32.lt_u
                br_if 3 (;@3;)
                local.get 5
                local.get 4
                local.get 6
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 4
                i32.add
                local.tee 3
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 9
                local.get 9
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                local.get 2
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h155b474cca4b6a14E
                br 3 (;@3;)
              end
              local.get 0
              i32.load offset=404
              local.get 7
              i32.add
              local.tee 7
              local.get 4
              i32.le_u
              br_if 3 (;@2;)
              local.get 5
              local.get 4
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 8
              local.get 4
              i32.add
              local.tee 2
              local.get 7
              local.get 4
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.store offset=404
              local.get 0
              local.get 2
              i32.store offset=412
              br 2 (;@3;)
            end
            local.get 0
            i32.load offset=400
            local.get 7
            i32.add
            local.tee 7
            local.get 4
            i32.lt_u
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                local.get 4
                i32.sub
                local.tee 2
                i32.const 15
                i32.gt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 6
                i32.const 1
                i32.and
                local.get 7
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 7
                i32.add
                local.tee 2
                local.get 2
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 0
                local.set 2
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              local.get 5
              local.get 4
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 8
              local.get 4
              i32.add
              local.tee 3
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 8
              local.get 7
              i32.add
              local.tee 4
              local.get 2
              i32.store
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
            end
            local.get 0
            local.get 3
            i32.store offset=408
            local.get 0
            local.get 2
            i32.store offset=400
            br 1 (;@3;)
          end
          local.get 0
          local.get 9
          local.get 6
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE
          block  ;; label = @4
            local.get 7
            local.get 4
            i32.sub
            local.tee 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            local.get 5
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 8
            local.get 4
            i32.add
            local.tee 3
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 7
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            local.get 2
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h155b474cca4b6a14E
            br 1 (;@3;)
          end
          local.get 5
          local.get 7
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 8
          local.get 7
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
        end
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h9a9676d60fded2e9E
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 1
      local.get 2
      local.get 5
      i32.load
      local.tee 3
      i32.const -8
      i32.and
      i32.const 4
      i32.const 8
      local.get 3
      i32.const 3
      i32.and
      select
      i32.sub
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      call $memcpy
      local.set 2
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h679d467e7de3b1b4E
      local.get 2
      return
    end
    local.get 3)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h155b474cca4b6a14E (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 4
              i32.const 3
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load
              local.tee 4
              local.get 2
              i32.add
              local.set 2
              block  ;; label = @6
                local.get 0
                i32.load offset=408
                local.get 1
                local.get 4
                i32.sub
                local.tee 1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=4
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 1 (;@5;)
                local.get 0
                local.get 2
                i32.store offset=400
                local.get 3
                local.get 3
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 2
                i32.store
                return
              end
              local.get 0
              local.get 1
              local.get 4
              call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.const 2
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.const 4
                i32.add
                local.get 4
                i32.const -2
                i32.and
                i32.store
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 2
                i32.add
                local.get 2
                i32.store
                br 1 (;@5;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=412
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=408
                  local.get 3
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 0
                  local.get 3
                  local.get 4
                  i32.const -8
                  i32.and
                  local.tee 4
                  call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE
                  local.get 1
                  local.get 4
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 2
                  i32.add
                  local.get 2
                  i32.store
                  local.get 1
                  local.get 0
                  i32.load offset=408
                  i32.ne
                  br_if 2 (;@5;)
                  local.get 0
                  local.get 2
                  i32.store offset=400
                  return
                end
                local.get 0
                local.get 1
                i32.store offset=412
                local.get 0
                local.get 0
                i32.load offset=404
                local.get 2
                i32.add
                local.tee 2
                i32.store offset=404
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 2 (;@4;)
                local.get 0
                i32.const 0
                i32.store offset=400
                local.get 0
                i32.const 0
                i32.store offset=408
                return
              end
              local.get 0
              local.get 1
              i32.store offset=408
              local.get 0
              local.get 0
              i32.load offset=400
              local.get 2
              i32.add
              local.tee 2
              i32.store offset=400
              local.get 1
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 2
              i32.store
              return
            end
            local.get 2
            i32.const 256
            i32.lt_u
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 8
                i32.shr_u
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              i32.const 31
              local.set 3
              local.get 2
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 6
              local.get 4
              i32.clz
              local.tee 3
              i32.sub
              i32.const 31
              i32.and
              i32.shr_u
              i32.const 1
              i32.and
              local.get 3
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 3
            end
            local.get 1
            i64.const 0
            i64.store offset=16 align=4
            local.get 1
            i32.const 28
            i32.add
            local.get 3
            i32.store
            local.get 0
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 0
                  i32.load
                  local.tee 5
                  i32.const 1
                  local.get 3
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 6
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load
                  local.tee 4
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.ne
                  br_if 1 (;@6;)
                  local.get 4
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 0
                local.get 5
                local.get 6
                i32.or
                i32.store
                local.get 4
                local.get 1
                i32.store
                local.get 1
                i32.const 24
                i32.add
                local.get 4
                i32.store
                br 4 (;@2;)
              end
              local.get 2
              i32.const 0
              i32.const 25
              local.get 3
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 31
              i32.and
              local.get 3
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 3
              loop  ;; label = @6
                local.get 4
                local.get 3
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 5
                i32.load
                local.tee 0
                i32.eqz
                br_if 3 (;@3;)
                local.get 3
                i32.const 1
                i32.shl
                local.set 3
                local.get 0
                local.set 4
                local.get 0
                i32.const 4
                i32.add
                i32.load
                i32.const -8
                i32.and
                local.get 2
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 1
            i32.const 24
            i32.add
            i32.const 0
            i32.store
            local.get 1
            local.get 0
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
          end
          return
        end
        local.get 5
        local.get 1
        i32.store
        local.get 1
        i32.const 24
        i32.add
        local.get 4
        i32.store
      end
      local.get 1
      local.get 1
      i32.store offset=12
      local.get 1
      local.get 1
      i32.store offset=8
      return
    end
    local.get 0
    local.get 2
    i32.const 3
    i32.shr_u
    local.tee 3
    i32.const 3
    i32.shl
    i32.add
    i32.const 8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 4
        i32.const 1
        local.get 3
        i32.shl
        local.tee 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=8
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      local.get 3
      i32.or
      i32.store
      local.get 2
      local.set 0
    end
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h679d467e7de3b1b4E (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -8
    i32.add
    local.tee 2
    local.get 1
    i32.const -4
    i32.add
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 1
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.tee 3
            local.get 1
            i32.add
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load offset=408
              local.get 2
              local.get 3
              i32.sub
              local.tee 2
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.store offset=400
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 0
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 4
              i32.add
              local.tee 5
              i32.load
              local.tee 3
              i32.const 2
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 3
              i32.const -2
              i32.and
              i32.store
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              local.get 1
              i32.add
              local.get 1
              i32.store
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=412
                local.get 4
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=408
                local.get 4
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 4
                local.get 3
                i32.const -8
                i32.and
                local.tee 3
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hfb2166c367c8b8aeE
                local.get 2
                local.get 3
                local.get 1
                i32.add
                local.tee 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                local.get 1
                i32.add
                local.get 1
                i32.store
                local.get 2
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 2 (;@4;)
                local.get 0
                local.get 1
                i32.store offset=400
                return
              end
              local.get 0
              local.get 2
              i32.store offset=412
              local.get 0
              local.get 0
              i32.load offset=404
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=404
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              block  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.const 0
                i32.store offset=400
                local.get 0
                i32.const 0
                i32.store offset=408
              end
              local.get 0
              i32.const 440
              i32.add
              i32.load
              local.tee 3
              local.get 1
              i32.ge_u
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=412
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 0
                i32.load offset=404
                local.tee 5
                i32.const 41
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 424
                i32.add
                local.set 2
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load
                    local.tee 4
                    local.get 1
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 2
                    i32.load offset=4
                    i32.add
                    local.get 1
                    i32.gt_u
                    br_if 2 (;@6;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.tee 2
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 432
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                  i32.const 4095
                  local.set 2
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  local.get 1
                  i32.load offset=8
                  local.tee 1
                  br_if 0 (;@7;)
                end
                local.get 2
                i32.const 4095
                local.get 2
                i32.const 4095
                i32.gt_u
                select
                local.set 2
              end
              local.get 0
              local.get 2
              i32.store offset=448
              local.get 5
              local.get 3
              i32.le_u
              br_if 2 (;@3;)
              local.get 0
              i32.const 440
              i32.add
              i32.const -1
              i32.store
              return
            end
            local.get 0
            local.get 2
            i32.store offset=408
            local.get 0
            local.get 0
            i32.load offset=400
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=400
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 1
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 8
              i32.shr_u
              local.tee 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            i32.const 31
            local.set 4
            local.get 1
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 6
            local.get 3
            i32.clz
            local.tee 4
            i32.sub
            i32.const 31
            i32.and
            i32.shr_u
            i32.const 1
            i32.and
            local.get 4
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 2
          i32.const 28
          i32.add
          local.get 4
          i32.store
          local.get 0
          local.get 4
          i32.const 2
          i32.shl
          i32.add
          i32.const 272
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 4
                      i32.add
                      local.tee 5
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 4
                      i32.const 31
                      i32.and
                      i32.shl
                      local.tee 7
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i32.load
                      local.tee 5
                      i32.const 4
                      i32.add
                      i32.load
                      i32.const -8
                      i32.and
                      local.get 1
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 5
                      local.set 4
                      br 2 (;@7;)
                    end
                    local.get 5
                    local.get 6
                    local.get 7
                    i32.or
                    i32.store
                    local.get 3
                    local.get 2
                    i32.store
                    local.get 2
                    i32.const 24
                    i32.add
                    local.get 3
                    i32.store
                    br 3 (;@5;)
                  end
                  local.get 1
                  i32.const 0
                  i32.const 25
                  local.get 4
                  i32.const 1
                  i32.shr_u
                  i32.sub
                  i32.const 31
                  i32.and
                  local.get 4
                  i32.const 31
                  i32.eq
                  select
                  i32.shl
                  local.set 3
                  loop  ;; label = @8
                    local.get 5
                    local.get 3
                    i32.const 29
                    i32.shr_u
                    i32.const 4
                    i32.and
                    i32.add
                    i32.const 16
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 3
                    i32.const 1
                    i32.shl
                    local.set 3
                    local.get 4
                    local.set 5
                    local.get 4
                    i32.const 4
                    i32.add
                    i32.load
                    i32.const -8
                    i32.and
                    local.get 1
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 4
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 4
                local.get 2
                i32.store offset=8
                local.get 2
                i32.const 24
                i32.add
                i32.const 0
                i32.store
                local.get 2
                local.get 4
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 2 (;@4;)
              end
              local.get 6
              local.get 2
              i32.store
              local.get 2
              i32.const 24
              i32.add
              local.get 5
              i32.store
            end
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
          end
          local.get 0
          local.get 0
          i32.load offset=448
          i32.const -1
          i32.add
          local.tee 2
          i32.store offset=448
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
        end
        return
      end
      local.get 0
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 4
      i32.const 3
      i32.shl
      i32.add
      i32.const 8
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          local.get 4
          i32.shl
          local.tee 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=8
          local.set 0
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        local.get 4
        i32.or
        i32.store
        local.get 1
        local.set 0
      end
      local.get 1
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 432
      i32.add
      i32.load
      local.tee 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 4095
      i32.store offset=448
      return
    end
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 1
      i32.load offset=8
      local.tee 1
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.const 4095
    local.get 2
    i32.const 4095
    i32.gt_u
    select
    i32.store offset=448)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17hf5202c70c1037bf6E (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const -65587
      local.get 1
      i32.const 16
      local.get 1
      i32.const 16
      i32.gt_u
      select
      local.tee 1
      i32.sub
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h9a9676d60fded2e9E
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 5
          local.get 2
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const -4
        i32.add
        local.tee 6
        i32.load
        local.tee 7
        i32.const -8
        i32.and
        local.get 5
        local.get 2
        i32.add
        i32.const 0
        local.get 1
        i32.sub
        i32.and
        i32.const -8
        i32.add
        local.tee 2
        local.get 2
        local.get 1
        i32.add
        local.get 2
        local.get 3
        i32.sub
        i32.const 16
        i32.gt_u
        select
        local.tee 1
        local.get 3
        i32.sub
        local.tee 2
        i32.sub
        local.set 5
        block  ;; label = @3
          local.get 7
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store offset=4
          local.get 1
          local.get 5
          i32.add
          local.tee 5
          local.get 5
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 6
          local.get 2
          local.get 6
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          local.get 2
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h155b474cca4b6a14E
          br 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 3
        local.get 1
        local.get 5
        i32.store offset=4
        local.get 1
        local.get 3
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.tee 3
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.add
        local.get 4
        local.get 2
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 4
        i32.add
        local.tee 2
        local.get 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 4
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h155b474cca4b6a14E
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func $_ZN5alloc5alloc18handle_alloc_error17hecc1ef9fb398d35cE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17hf2be99ee29d9fb92E (type 10)
    i32.const 1049979
    i32.const 17
    i32.const 1049996
    call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h319f38c1f5e36359E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr13drop_in_place17h0171895b419b6359E (type 0) (param i32))
  (func $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 38
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1050180
    i32.store offset=8
    local.get 3
    i32.const 38
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
    unreachable)
  (func $_ZN4core9panicking5panic17h8b3fe00fe4eab248E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1050012
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
    unreachable)
  (func $_ZN4core5slice20slice_index_len_fail17h83bcbaa74d10d479E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 38
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1050592
    i32.store offset=8
    local.get 3
    i32.const 38
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
    unreachable)
  (func $_ZN4core5slice22slice_index_order_fail17h1e83f979b0065c35E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 38
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1050644
    i32.store offset=8
    local.get 3
    i32.const 38
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17he3ad29129b59126aE (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.eq
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 1
            local.get 2
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 4)
            local.set 3
            br 3 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          local.get 2
          i32.add
          local.set 5
          local.get 0
          i32.const 20
          i32.add
          i32.load
          i32.const 1
          i32.add
          local.set 6
          i32.const 0
          local.set 7
          local.get 1
          local.set 3
          local.get 1
          local.set 8
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load8_s
                  local.tee 10
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 9
                      local.get 5
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 11
                      local.get 5
                      local.set 3
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.load8_u offset=1
                    i32.const 63
                    i32.and
                    local.set 11
                    local.get 3
                    i32.const 2
                    i32.add
                    local.tee 9
                    local.set 3
                  end
                  local.get 10
                  i32.const 31
                  i32.and
                  local.set 12
                  block  ;; label = @8
                    local.get 10
                    i32.const 255
                    i32.and
                    local.tee 10
                    i32.const 223
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 12
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set 10
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      local.get 5
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 13
                      local.get 5
                      local.set 14
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 13
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 9
                    local.set 14
                  end
                  local.get 13
                  local.get 11
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set 11
                  block  ;; label = @8
                    local.get 10
                    i32.const 240
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 12
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set 10
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 14
                      local.get 5
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 10
                      local.get 9
                      local.set 3
                      br 1 (;@8;)
                    end
                    local.get 14
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 14
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 10
                  end
                  local.get 11
                  i32.const 6
                  i32.shl
                  local.get 12
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get 10
                  i32.or
                  local.tee 10
                  i32.const 1114112
                  i32.ne
                  br_if 2 (;@5;)
                  br 4 (;@3;)
                end
                local.get 10
                i32.const 255
                i32.and
                local.set 10
              end
              local.get 9
              local.set 3
            end
            block  ;; label = @5
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 8
              i32.sub
              local.get 3
              i32.add
              local.set 7
              local.get 3
              local.set 8
              local.get 5
              local.get 3
              i32.ne
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 10
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              local.get 7
              local.get 2
              i32.ge_u
              br_if 1 (;@4;)
              local.get 1
              local.get 7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 1
            local.set 3
          end
          local.get 7
          local.get 2
          local.get 3
          select
          local.set 2
          local.get 3
          local.get 1
          local.get 3
          select
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        return
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.set 10
        local.get 1
        local.set 3
        loop  ;; label = @3
          local.get 9
          local.get 3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 2
        local.get 9
        i32.sub
        local.get 0
        i32.load offset=12
        local.tee 6
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        return
      end
      i32.const 0
      local.set 7
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        local.get 2
        local.set 10
        local.get 1
        local.set 3
        loop  ;; label = @3
          local.get 9
          local.get 3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 9
      local.get 2
      i32.sub
      local.get 6
      i32.add
      local.tee 9
      local.set 10
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            local.get 0
            i32.load8_u offset=32
            local.tee 3
            local.get 3
            i32.const 3
            i32.eq
            select
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 9
          i32.const 1
          i32.shr_u
          local.set 7
          local.get 9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 10
          br 1 (;@2;)
        end
        i32.const 0
        local.set 10
        local.get 9
        local.set 7
      end
      local.get 7
      i32.const 1
      i32.add
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=24
          local.get 0
          i32.load offset=4
          local.get 0
          i32.load offset=28
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      local.get 0
      i32.load offset=4
      local.set 9
      i32.const 1
      local.set 3
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 4)
      br_if 0 (;@1;)
      local.get 10
      i32.const 1
      i32.add
      local.set 3
      local.get 0
      i32.load offset=28
      local.set 10
      local.get 0
      i32.load offset=24
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        local.get 0
        local.get 9
        local.get 10
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 1
      return
    end
    local.get 3)
  (func $_ZN4core3str16slice_error_fail17h17ee88678cda6674E (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    i32.const 1
    local.set 6
    local.get 1
    local.set 7
    block  ;; label = @1
      local.get 1
      i32.const 257
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.sub
      local.set 8
      i32.const 256
      local.set 9
      loop  ;; label = @2
        block  ;; label = @3
          local.get 9
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          local.get 0
          local.get 9
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if 0 (;@3;)
          local.get 9
          local.set 7
          br 2 (;@1;)
        end
        local.get 9
        i32.const -1
        i32.add
        local.set 7
        i32.const 0
        local.set 6
        local.get 9
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 8
        local.get 9
        i32.add
        local.set 10
        local.get 7
        local.set 9
        local.get 10
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 5
    local.get 7
    i32.store offset=20
    local.get 5
    local.get 0
    i32.store offset=16
    local.get 5
    i32.const 0
    i32.const 5
    local.get 6
    select
    i32.store offset=28
    local.get 5
    i32.const 1050012
    i32.const 1050760
    local.get 6
    select
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 1
            i32.gt_u
            local.tee 6
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.le_u
                br_if 1 (;@5;)
                local.get 0
                local.get 2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 3
              local.set 2
            end
            local.get 5
            local.get 2
            i32.store offset=32
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.add
            local.set 9
            loop  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 1
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.add
                i32.load8_s
                i32.const -64
                i32.ge_s
                br_if 4 (;@2;)
              end
              local.get 2
              i32.const -1
              i32.add
              local.set 6
              local.get 2
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              local.get 9
              local.get 2
              i32.eq
              local.set 3
              local.get 6
              local.set 2
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          local.get 5
          local.get 2
          local.get 3
          local.get 6
          select
          i32.store offset=40
          local.get 5
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 3
          i32.store
          local.get 5
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 39
          i32.store
          local.get 5
          i32.const 84
          i32.add
          i32.const 39
          i32.store
          local.get 5
          i64.const 3
          i64.store offset=52 align=4
          local.get 5
          i32.const 1050800
          i32.store offset=48
          local.get 5
          i32.const 38
          i32.store offset=76
          local.get 5
          local.get 5
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 5
          local.get 5
          i32.const 24
          i32.add
          i32.store offset=88
          local.get 5
          local.get 5
          i32.const 16
          i32.add
          i32.store offset=80
          local.get 5
          local.get 5
          i32.const 40
          i32.add
          i32.store offset=72
          local.get 5
          i32.const 48
          i32.add
          local.get 4
          call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
          unreachable
        end
        local.get 5
        i32.const 100
        i32.add
        i32.const 39
        i32.store
        local.get 5
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 39
        i32.store
        local.get 5
        i32.const 84
        i32.add
        i32.const 38
        i32.store
        local.get 5
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get 5
        i64.const 4
        i64.store offset=52 align=4
        local.get 5
        i32.const 1050860
        i32.store offset=48
        local.get 5
        i32.const 38
        i32.store offset=76
        local.get 5
        local.get 5
        i32.const 72
        i32.add
        i32.store offset=64
        local.get 5
        local.get 5
        i32.const 24
        i32.add
        i32.store offset=96
        local.get 5
        local.get 5
        i32.const 16
        i32.add
        i32.store offset=88
        local.get 5
        local.get 5
        i32.const 12
        i32.add
        i32.store offset=80
        local.get 5
        local.get 5
        i32.const 8
        i32.add
        i32.store offset=72
        local.get 5
        i32.const 48
        i32.add
        local.get 4
        call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
        unreachable
      end
      local.get 2
      local.set 6
    end
    block  ;; label = @1
      local.get 6
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 1
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 6
              i32.add
              local.tee 3
              i32.load8_s
              local.tee 2
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              i32.const 0
              local.set 9
              local.get 0
              local.get 1
              i32.add
              local.tee 1
              local.set 7
              block  ;; label = @6
                local.get 3
                i32.const 1
                i32.add
                local.get 1
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.const 2
                i32.add
                local.set 7
                local.get 3
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set 9
              end
              local.get 2
              i32.const 31
              i32.and
              local.set 3
              local.get 2
              i32.const 255
              i32.and
              i32.const 223
              i32.gt_u
              br_if 1 (;@4;)
              local.get 9
              local.get 3
              i32.const 6
              i32.shl
              i32.or
              local.set 2
              br 2 (;@3;)
            end
            local.get 5
            local.get 2
            i32.const 255
            i32.and
            i32.store offset=36
            local.get 5
            i32.const 40
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          i32.const 0
          local.set 0
          local.get 1
          local.set 8
          block  ;; label = @4
            local.get 7
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 7
            i32.const 1
            i32.add
            local.set 8
            local.get 7
            i32.load8_u
            i32.const 63
            i32.and
            local.set 0
          end
          local.get 0
          local.get 9
          i32.const 6
          i32.shl
          i32.or
          local.set 9
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.and
            i32.const 240
            i32.ge_u
            br_if 0 (;@4;)
            local.get 9
            local.get 3
            i32.const 12
            i32.shl
            i32.or
            local.set 2
            br 1 (;@3;)
          end
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 8
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 8
            i32.load8_u
            i32.const 63
            i32.and
            local.set 2
          end
          local.get 9
          i32.const 6
          i32.shl
          local.get 3
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.get 2
          i32.or
          local.tee 2
          i32.const 1114112
          i32.eq
          br_if 2 (;@1;)
        end
        local.get 5
        local.get 2
        i32.store offset=36
        i32.const 1
        local.set 9
        local.get 5
        i32.const 40
        i32.add
        local.set 1
        local.get 2
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 9
        local.get 2
        i32.const 2048
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 3
        i32.const 4
        local.get 2
        i32.const 65536
        i32.lt_u
        select
        local.set 9
      end
      local.get 5
      local.get 6
      i32.store offset=40
      local.get 5
      local.get 9
      local.get 6
      i32.add
      i32.store offset=44
      local.get 5
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 5
      i32.store
      local.get 5
      i32.const 108
      i32.add
      i32.const 39
      i32.store
      local.get 5
      i32.const 100
      i32.add
      i32.const 39
      i32.store
      local.get 5
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 40
      i32.store
      local.get 5
      i32.const 84
      i32.add
      i32.const 41
      i32.store
      local.get 5
      i64.const 5
      i64.store offset=52 align=4
      local.get 5
      i32.const 1050944
      i32.store offset=48
      local.get 5
      local.get 1
      i32.store offset=88
      local.get 5
      i32.const 38
      i32.store offset=76
      local.get 5
      local.get 5
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 5
      local.get 5
      i32.const 24
      i32.add
      i32.store offset=104
      local.get 5
      local.get 5
      i32.const 16
      i32.add
      i32.store offset=96
      local.get 5
      local.get 5
      i32.const 36
      i32.add
      i32.store offset=80
      local.get 5
      local.get 5
      i32.const 32
      i32.add
      i32.store offset=72
      local.get 5
      i32.const 48
      i32.add
      local.get 4
      call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
      unreachable
    end
    i32.const 1050038
    i32.const 43
    local.get 4
    call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1050112
    i32.store offset=4
    local.get 2
    i32.const 1050012
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h162f0ba249169d30E (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417ha4a7304351a3ca66E)
  (func $_ZN4core3fmt5write17h03db344ecc8f6131E (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.set 5
              local.get 2
              i32.load offset=4
              local.tee 6
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              local.get 7
              local.get 6
              i32.gt_u
              select
              local.tee 7
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.const 20
              i32.add
              i32.load
              local.set 8
              local.get 2
              i32.load offset=16
              local.set 9
              local.get 0
              local.get 5
              i32.load
              local.get 5
              i32.load offset=4
              local.get 1
              i32.load offset=12
              call_indirect (type 4)
              br_if 3 (;@2;)
              local.get 5
              i32.const 12
              i32.add
              local.set 2
              i32.const 0
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 3
                    local.get 4
                    i32.const 4
                    i32.add
                    i32.load
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.const 28
                    i32.add
                    i32.load8_u
                    i32.store8 offset=40
                    local.get 3
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.load
                    i32.store offset=8
                    local.get 4
                    i32.const 24
                    i32.add
                    i32.load
                    local.set 0
                    i32.const 0
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.const 20
                          i32.add
                          i32.load
                          br_table 1 (;@10;) 0 (;@11;) 2 (;@9;) 1 (;@10;)
                        end
                        local.get 0
                        local.get 8
                        i32.ge_u
                        br_if 3 (;@7;)
                        local.get 0
                        i32.const 3
                        i32.shl
                        local.set 11
                        i32.const 0
                        local.set 1
                        local.get 9
                        local.get 11
                        i32.add
                        local.tee 11
                        i32.load offset=4
                        i32.const 42
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 11
                        i32.load
                        i32.load
                        local.set 0
                      end
                      i32.const 1
                      local.set 1
                    end
                    local.get 3
                    local.get 0
                    i32.store offset=20
                    local.get 3
                    local.get 1
                    i32.store offset=16
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.load
                    local.set 0
                    i32.const 0
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.const 12
                          i32.add
                          i32.load
                          br_table 1 (;@10;) 0 (;@11;) 2 (;@9;) 1 (;@10;)
                        end
                        local.get 0
                        local.get 8
                        i32.ge_u
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 3
                        i32.shl
                        local.set 11
                        local.get 9
                        local.get 11
                        i32.add
                        local.tee 11
                        i32.load offset=4
                        i32.const 42
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 11
                        i32.load
                        i32.load
                        local.set 0
                      end
                      i32.const 1
                      local.set 1
                    end
                    local.get 3
                    local.get 0
                    i32.store offset=28
                    local.get 3
                    local.get 1
                    i32.store offset=24
                    block  ;; label = @9
                      local.get 4
                      i32.load
                      local.tee 0
                      local.get 8
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 9
                      local.get 0
                      i32.const 3
                      i32.shl
                      i32.add
                      local.tee 0
                      i32.load
                      local.get 3
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.load offset=4
                      call_indirect (type 1)
                      br_if 7 (;@2;)
                      local.get 10
                      i32.const 1
                      i32.add
                      local.tee 10
                      local.get 7
                      i32.ge_u
                      br_if 6 (;@3;)
                      local.get 4
                      i32.const 32
                      i32.add
                      local.set 4
                      local.get 2
                      i32.const -4
                      i32.add
                      local.set 0
                      local.get 2
                      i32.load
                      local.set 1
                      local.get 2
                      i32.const 8
                      i32.add
                      local.set 2
                      local.get 3
                      i32.load offset=32
                      local.get 0
                      i32.load
                      local.get 1
                      local.get 3
                      i32.load offset=36
                      i32.load offset=12
                      call_indirect (type 4)
                      i32.eqz
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                  end
                  local.get 0
                  local.get 8
                  i32.const 1050460
                  call $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E
                  unreachable
                end
                local.get 0
                local.get 8
                i32.const 1050476
                call $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E
                unreachable
              end
              local.get 0
              local.get 8
              i32.const 1050476
              call $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E
              unreachable
            end
            local.get 2
            i32.load
            local.set 5
            local.get 2
            i32.load offset=4
            local.tee 6
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 4
            local.get 4
            local.get 6
            i32.gt_u
            select
            local.tee 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=16
            local.set 4
            local.get 0
            local.get 5
            i32.load
            local.get 5
            i32.load offset=4
            local.get 1
            i32.load offset=12
            call_indirect (type 4)
            br_if 2 (;@2;)
            local.get 5
            i32.const 12
            i32.add
            local.set 2
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 4
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 1)
              br_if 3 (;@2;)
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              local.get 7
              i32.ge_u
              br_if 2 (;@3;)
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 2
              i32.const -4
              i32.add
              local.set 1
              local.get 2
              i32.load
              local.set 10
              local.get 2
              i32.const 8
              i32.add
              local.set 2
              local.get 3
              i32.load offset=32
              local.get 1
              i32.load
              local.get 10
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 4)
              i32.eqz
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
          end
          i32.const 0
          local.set 7
        end
        block  ;; label = @3
          local.get 6
          local.get 7
          i32.le_u
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=32
          local.get 5
          local.get 7
          i32.const 3
          i32.shl
          i32.add
          local.tee 4
          i32.load
          local.get 4
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h645c96638f72f5e6E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h05f99be8a52fd6a8E
        br_if 0 (;@2;)
        local.get 1
        i32.const 28
        i32.add
        i32.load
        local.set 3
        local.get 1
        i32.load offset=24
        local.set 4
        local.get 2
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 2
        i32.const 1050012
        i32.store offset=24
        local.get 2
        i64.const 1
        i64.store offset=12 align=4
        local.get 2
        i32.const 1050016
        i32.store offset=8
        local.get 4
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        call $_ZN4core3fmt5write17h03db344ecc8f6131E
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      i32.const 1
      return
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h05f99be8a52fd6a8E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h05f99be8a52fd6a8E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417ha4a7304351a3ca66E
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load
            local.set 4
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              local.get 4
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 87
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 4
              i32.const 4
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 4
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1050236
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h6c9db939575a4fe6E
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.add
            i32.const 127
            i32.add
            local.get 4
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 55
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 4
            i32.const 4
            i32.shr_u
            local.tee 4
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 128
          i32.add
          local.tee 4
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1050236
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 0
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h6c9db939575a4fe6E
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 4
      i32.const 128
      i32.const 1050220
      call $_ZN4core5slice22slice_index_order_fail17h1e83f979b0065c35E
      unreachable
    end
    local.get 4
    i32.const 128
    i32.const 1050220
    call $_ZN4core5slice22slice_index_order_fail17h1e83f979b0065c35E
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h30b8b0d209a018f3E (type 6) (param i32) (result i64)
    i64.const 8666219567486784685)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hea57602a460b72afE (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1050024
    i32.const 14
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 4))
  (func $_ZN4core6option13expect_failed17ha7932b8a5e77ea56E (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    local.get 3
    i64.const 1
    i64.store offset=20 align=4
    local.get 3
    i32.const 1050084
    i32.store offset=16
    local.get 3
    i32.const 39
    i32.store offset=44
    local.get 3
    local.get 3
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf3e5e191b35fe362E (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17he3ad29129b59126aE)
  (func $_ZN4core6option18expect_none_failed17ha72d60de35a76889E (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 5
    i32.const 60
    i32.add
    i32.const 43
    i32.store
    local.get 5
    i64.const 2
    i64.store offset=28 align=4
    local.get 5
    i32.const 1050096
    i32.store offset=24
    local.get 5
    i32.const 39
    i32.store offset=52
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17ha8209066b105fcddE
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc123663923fce076E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_ZN4core5panic9PanicInfo7message17h07341bab64d53fa5E (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic9PanicInfo8location17h6e7758c42293c44bE (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN4core5panic8Location6caller17h0f2bd38cb2e93bf6E (type 5) (param i32) (result i32)
    local.get 0)
  (func $_ZN4core3fmt9Formatter12pad_integral17h6c9db939575a4fe6E (type 12) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.set 10
        local.get 2
        local.set 1
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 3
      i32.add
      local.get 9
      i32.sub
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h15cb9fa1608ae439E
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 9
        local.get 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h15cb9fa1608ae439E
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 8
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          local.get 9
          local.get 8
          i32.sub
          local.tee 9
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 10
                local.get 10
                i32.const 3
                i32.eq
                select
                br_table 2 (;@4;) 1 (;@5;) 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 9
              i32.const 1
              i32.shr_u
              local.set 1
              local.get 9
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 8
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
            local.get 9
            local.set 1
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=4
        local.get 0
        i32.load8_u offset=32
        local.set 11
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h15cb9fa1608ae439E
        br_if 1 (;@1;)
        i32.const 0
        local.set 1
        local.get 9
        local.get 8
        i32.sub
        local.tee 10
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 0
              i32.load8_u offset=32
              local.tee 9
              local.get 9
              i32.const 3
              i32.eq
              select
              br_table 2 (;@3;) 1 (;@4;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            local.get 10
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
          local.get 10
          local.set 1
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 10
        i32.const 1
        local.set 1
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 4)
        br_if 1 (;@1;)
        local.get 3
        i32.const 1
        i32.add
        local.set 9
        local.get 0
        i32.load offset=28
        local.set 3
        local.get 0
        i32.load offset=24
        local.set 2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            local.set 1
            local.get 2
            local.get 10
            local.get 3
            i32.load offset=16
            call_indirect (type 1)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 11
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=4
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=4
      local.set 10
      i32.const 1
      local.set 1
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h15cb9fa1608ae439E
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 4)
      br_if 0 (;@1;)
      local.get 8
      i32.const 1
      i32.add
      local.set 9
      local.get 0
      i32.load offset=28
      local.set 3
      local.get 0
      i32.load offset=24
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        i32.const 1
        local.set 1
        local.get 0
        local.get 10
        local.get 3
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h15cb9fa1608ae439E (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 2
      local.get 3
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 4)
      local.set 4
    end
    local.get 4)
  (func $_ZN4core3fmt9Formatter9write_fmt17h26f79d83f172eb1cE (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h03db344ecc8f6131E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h365a6b66e954875cE (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        i32.const 34
        local.get 2
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type 1)
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.add
          local.set 6
          i32.const 0
          local.set 5
          local.get 0
          local.set 7
          i32.const 0
          local.set 8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.set 9
              local.get 7
              i32.const 1
              i32.add
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.load8_s
                    local.tee 11
                    i32.const -1
                    i32.gt_s
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 10
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 12
                        local.get 6
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.load8_u offset=1
                      i32.const 63
                      i32.and
                      local.set 12
                      local.get 7
                      i32.const 2
                      i32.add
                      local.tee 10
                      local.set 7
                    end
                    local.get 11
                    i32.const 31
                    i32.and
                    local.set 4
                    block  ;; label = @9
                      local.get 11
                      i32.const 255
                      i32.and
                      local.tee 11
                      i32.const 223
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 12
                      local.get 4
                      i32.const 6
                      i32.shl
                      i32.or
                      local.set 12
                      br 2 (;@7;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 7
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 13
                        local.get 6
                        local.set 14
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.load8_u
                      i32.const 63
                      i32.and
                      local.set 13
                      local.get 7
                      i32.const 1
                      i32.add
                      local.tee 10
                      local.set 14
                    end
                    local.get 13
                    local.get 12
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set 12
                    block  ;; label = @9
                      local.get 11
                      i32.const 240
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 12
                      local.get 4
                      i32.const 12
                      i32.shl
                      i32.or
                      local.set 12
                      br 2 (;@7;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 14
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 11
                        local.get 10
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 14
                      i32.const 1
                      i32.add
                      local.set 7
                      local.get 14
                      i32.load8_u
                      i32.const 63
                      i32.and
                      local.set 11
                    end
                    local.get 12
                    i32.const 6
                    i32.shl
                    local.get 4
                    i32.const 18
                    i32.shl
                    i32.const 1835008
                    i32.and
                    i32.or
                    local.get 11
                    i32.or
                    local.tee 12
                    i32.const 1114112
                    i32.ne
                    br_if 2 (;@6;)
                    br 4 (;@4;)
                  end
                  local.get 11
                  i32.const 255
                  i32.and
                  local.set 12
                end
                local.get 10
                local.set 7
              end
              i32.const 2
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 12
                          i32.const -9
                          i32.add
                          local.tee 11
                          i32.const 30
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 12
                          i32.const 92
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        i32.const 116
                        local.set 14
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 11
                            br_table 5 (;@7;) 1 (;@11;) 2 (;@10;) 2 (;@10;) 0 (;@12;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 3 (;@9;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 3 (;@9;) 5 (;@7;)
                          end
                          i32.const 114
                          local.set 14
                          br 4 (;@7;)
                        end
                        i32.const 110
                        local.set 14
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 12
                        call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h4ebc0efc61b46dd0E
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 12
                            i32.const 65536
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 12
                            i32.const 131072
                            i32.lt_u
                            br_if 1 (;@11;)
                            local.get 12
                            i32.const -918000
                            i32.add
                            i32.const 196112
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -201547
                            i32.add
                            i32.const 716213
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -195102
                            i32.add
                            i32.const 1506
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -191457
                            i32.add
                            i32.const 3103
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -183970
                            i32.add
                            i32.const 14
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const 2097150
                            i32.and
                            i32.const 178206
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -173790
                            i32.add
                            i32.const 34
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 12
                            i32.const -177973
                            i32.add
                            i32.const 10
                            i32.le_u
                            br_if 2 (;@10;)
                            br 6 (;@6;)
                          end
                          local.get 12
                          i32.const 1051048
                          i32.const 41
                          i32.const 1051130
                          i32.const 290
                          i32.const 1051420
                          i32.const 309
                          call $_ZN4core7unicode9printable5check17h40ae2338c3f1931aE
                          i32.eqz
                          br_if 1 (;@10;)
                          br 5 (;@6;)
                        end
                        local.get 12
                        i32.const 1051729
                        i32.const 38
                        i32.const 1051805
                        i32.const 175
                        i32.const 1051980
                        i32.const 419
                        call $_ZN4core7unicode9printable5check17h40ae2338c3f1931aE
                        br_if 4 (;@6;)
                      end
                      local.get 12
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 2
                      i32.shr_u
                      i32.const 7
                      i32.xor
                      i64.extend_i32_u
                      i64.const 21474836480
                      i64.or
                      local.set 15
                      i32.const 3
                      local.set 10
                      br 1 (;@8;)
                    end
                  end
                  local.get 12
                  local.set 14
                end
                local.get 3
                local.get 1
                i32.store offset=4
                local.get 3
                local.get 0
                i32.store
                local.get 3
                local.get 5
                i32.store offset=8
                local.get 3
                local.get 8
                i32.store offset=12
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    local.get 5
                    i32.lt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 5
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 1
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 0
                      local.get 5
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 1
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 0
                      local.get 8
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 1 (;@8;)
                    end
                    local.get 2
                    i32.load offset=24
                    local.get 0
                    local.get 5
                    i32.add
                    local.get 8
                    local.get 5
                    i32.sub
                    local.get 2
                    i32.load offset=28
                    i32.load offset=12
                    call_indirect (type 4)
                    i32.eqz
                    br_if 1 (;@7;)
                    i32.const 1
                    local.set 4
                    br 6 (;@2;)
                  end
                  local.get 3
                  local.get 3
                  i32.const 12
                  i32.add
                  i32.store offset=24
                  local.get 3
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.store offset=20
                  local.get 3
                  local.get 3
                  i32.store offset=16
                  local.get 3
                  i32.const 16
                  i32.add
                  call $_ZN4core3str6traits101_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h810fd5cc3c4031a3E
                  unreachable
                end
                loop  ;; label = @7
                  local.get 10
                  local.set 11
                  i32.const 1
                  local.set 4
                  i32.const 92
                  local.set 5
                  i32.const 1
                  local.set 10
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 11
                              br_table 2 (;@11;) 1 (;@12;) 5 (;@8;) 0 (;@13;) 2 (;@11;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 15
                                    i64.const 32
                                    i64.shr_u
                                    i32.wrap_i64
                                    i32.const 255
                                    i32.and
                                    br_table 5 (;@11;) 3 (;@13;) 2 (;@14;) 1 (;@15;) 0 (;@16;) 6 (;@10;) 5 (;@11;)
                                  end
                                  local.get 15
                                  i64.const -1095216660481
                                  i64.and
                                  i64.const 12884901888
                                  i64.or
                                  local.set 15
                                  i32.const 3
                                  local.set 10
                                  i32.const 117
                                  local.set 5
                                  br 7 (;@8;)
                                end
                                local.get 15
                                i64.const -1095216660481
                                i64.and
                                i64.const 8589934592
                                i64.or
                                local.set 15
                                i32.const 3
                                local.set 10
                                i32.const 123
                                local.set 5
                                br 6 (;@8;)
                              end
                              local.get 14
                              local.get 15
                              i32.wrap_i64
                              local.tee 11
                              i32.const 2
                              i32.shl
                              i32.const 28
                              i32.and
                              i32.shr_u
                              i32.const 15
                              i32.and
                              local.tee 10
                              i32.const 48
                              i32.or
                              local.get 10
                              i32.const 87
                              i32.add
                              local.get 10
                              i32.const 10
                              i32.lt_u
                              select
                              local.set 5
                              block  ;; label = @14
                                local.get 11
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 15
                                i64.const -1
                                i64.add
                                i64.const 4294967295
                                i64.and
                                local.get 15
                                i64.const -4294967296
                                i64.and
                                i64.or
                                local.set 15
                                br 5 (;@9;)
                              end
                              local.get 15
                              i64.const -1095216660481
                              i64.and
                              i64.const 4294967296
                              i64.or
                              local.set 15
                              br 4 (;@9;)
                            end
                            local.get 15
                            i64.const -1095216660481
                            i64.and
                            local.set 15
                            i32.const 3
                            local.set 10
                            i32.const 125
                            local.set 5
                            br 4 (;@8;)
                          end
                          i32.const 0
                          local.set 10
                          local.get 14
                          local.set 5
                          br 3 (;@8;)
                        end
                        i32.const 1
                        local.set 10
                        block  ;; label = @11
                          local.get 12
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 2
                          local.set 10
                          local.get 12
                          i32.const 2048
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 3
                          i32.const 4
                          local.get 12
                          i32.const 65536
                          i32.lt_u
                          select
                          local.set 10
                        end
                        local.get 10
                        local.get 8
                        i32.add
                        local.set 5
                        br 4 (;@6;)
                      end
                      local.get 15
                      i64.const -1095216660481
                      i64.and
                      i64.const 17179869184
                      i64.or
                      local.set 15
                    end
                    i32.const 3
                    local.set 10
                  end
                  local.get 2
                  i32.load offset=24
                  local.get 5
                  local.get 2
                  i32.load offset=28
                  i32.load offset=16
                  call_indirect (type 1)
                  i32.eqz
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
              end
              local.get 8
              local.get 9
              i32.sub
              local.get 7
              i32.add
              local.set 8
              local.get 6
              local.get 7
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          local.get 1
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.get 5
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if 2 (;@1;)
        end
        i32.const 1
        local.set 4
        local.get 2
        i32.load offset=24
        local.get 0
        local.get 5
        i32.add
        local.get 1
        local.get 5
        i32.sub
        local.get 2
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 4)
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=24
        i32.const 34
        local.get 2
        i32.load offset=28
        i32.load offset=16
        call_indirect (type 1)
        local.set 4
      end
      local.get 3
      i32.const 32
      i32.add
      global.set 0
      local.get 4
      return
    end
    local.get 0
    local.get 1
    local.get 5
    local.get 1
    i32.const 1050744
    call $_ZN4core3str16slice_error_fail17h17ee88678cda6674E
    unreachable)
  (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h4ebc0efc61b46dd0E (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.const 15
          local.get 0
          i32.const 68900
          i32.lt_u
          select
          local.tee 1
          local.get 1
          i32.const 8
          i32.add
          local.tee 1
          local.get 1
          i32.const 2
          i32.shl
          i32.const 1052484
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get 0
          i32.const 11
          i32.shl
          local.tee 1
          i32.gt_u
          select
          local.tee 2
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 2
          i32.const 2
          i32.shl
          i32.const 1052484
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get 1
          i32.gt_u
          select
          local.tee 2
          local.get 2
          i32.const 2
          i32.add
          local.tee 2
          local.get 2
          i32.const 2
          i32.shl
          i32.const 1052484
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get 1
          i32.gt_u
          select
          local.tee 2
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          local.get 2
          i32.const 2
          i32.shl
          i32.const 1052484
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get 1
          i32.gt_u
          select
          local.tee 2
          i32.const 2
          i32.shl
          i32.const 1052484
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.tee 3
          local.get 1
          i32.eq
          local.get 3
          local.get 1
          i32.lt_u
          i32.add
          local.get 2
          i32.add
          local.tee 1
          i32.const 30
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 689
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 30
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 2
            i32.shl
            i32.const 1052488
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.set 3
          end
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 4
            local.get 1
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 31
            i32.ge_u
            br_if 3 (;@1;)
            local.get 4
            i32.const 2
            i32.shl
            i32.const 1052484
            i32.add
            i32.load
            i32.const 2097151
            i32.and
            local.set 2
          end
          block  ;; label = @4
            local.get 3
            local.get 1
            i32.const 2
            i32.shl
            i32.const 1052484
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.tee 1
            i32.const 1
            i32.add
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i32.sub
            local.set 2
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 1
              i32.const 688
              i32.gt_u
              br_if 3 (;@2;)
              local.get 0
              local.get 1
              i32.const 1052608
              i32.add
              i32.load8_u
              i32.add
              local.tee 0
              local.get 2
              i32.gt_u
              br_if 1 (;@4;)
              local.get 3
              local.get 1
              i32.const 1
              i32.add
              local.tee 1
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 3
            local.set 1
          end
          local.get 1
          i32.const 1
          i32.and
          return
        end
        local.get 1
        i32.const 31
        i32.const 1052436
        call $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E
        unreachable
      end
      local.get 1
      i32.const 689
      i32.const 1052452
      call $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E
      unreachable
    end
    local.get 4
    i32.const 31
    i32.const 1052468
    call $_ZN4core9panicking18panic_bounds_check17h81c7ae3b0a6a7000E
    unreachable)
  (func $_ZN4core7unicode9printable5check17h40ae2338c3f1931aE (type 13) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.const 1
        i32.shl
        i32.add
        local.set 8
        local.get 0
        i32.const 65280
        i32.and
        i32.const 8
        i32.shr_u
        local.set 9
        i32.const 0
        local.set 10
        local.get 0
        i32.const 255
        i32.and
        local.set 11
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.set 12
            local.get 10
            local.get 1
            i32.load8_u offset=1
            local.tee 2
            i32.add
            local.set 13
            block  ;; label = @5
              local.get 1
              i32.load8_u
              local.tee 1
              local.get 9
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              local.get 9
              i32.gt_u
              br_if 3 (;@2;)
              local.get 13
              local.set 10
              local.get 12
              local.set 1
              local.get 12
              local.get 8
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 13
              local.get 10
              i32.lt_u
              br_if 0 (;@5;)
              local.get 13
              local.get 4
              i32.gt_u
              br_if 2 (;@3;)
              local.get 3
              local.get 10
              i32.add
              local.set 1
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const -1
                  i32.add
                  local.set 2
                  local.get 1
                  i32.load8_u
                  local.set 10
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 10
                  local.get 11
                  i32.ne
                  br_if 0 (;@7;)
                end
                i32.const 0
                local.set 7
                br 5 (;@1;)
              end
              local.get 13
              local.set 10
              local.get 12
              local.set 1
              local.get 12
              local.get 8
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
          end
          local.get 10
          local.get 13
          i32.const 1051016
          call $_ZN4core5slice22slice_index_order_fail17h1e83f979b0065c35E
          unreachable
        end
        local.get 13
        local.get 4
        i32.const 1051016
        call $_ZN4core5slice20slice_index_len_fail17h83bcbaa74d10d479E
        unreachable
      end
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 6
      i32.add
      local.set 11
      local.get 0
      i32.const 65535
      i32.and
      local.set 1
      i32.const 1
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load8_u
              local.tee 2
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              local.tee 13
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 10
              local.set 5
              br 1 (;@4;)
            end
            local.get 10
            local.get 11
            i32.eq
            br_if 2 (;@2;)
            local.get 13
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            local.get 5
            i32.load8_u offset=1
            i32.or
            local.set 2
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 1
          local.get 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          local.get 7
          i32.const 1
          i32.xor
          local.set 7
          local.get 5
          local.get 11
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 1050038
      i32.const 43
      i32.const 1051032
      call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
      unreachable
    end
    local.get 7
    i32.const 1
    i32.and)
  (func $_ZN4core3str6traits101_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h810fd5cc3c4031a3E (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load offset=4
    i32.load
    local.get 0
    i32.load offset=8
    i32.load
    i32.const 1050728
    call $_ZN4core3str16slice_error_fail17h17ee88678cda6674E
    unreachable)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17he18faca3a390c132E (type 4) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17he3ad29129b59126aE)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b4162a60f573758E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type 1)
      br_if 0 (;@1;)
      i32.const 2
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 0
                i32.const -9
                i32.add
                local.tee 4
                i32.const 30
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 92
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 116
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  br_table 5 (;@2;) 1 (;@6;) 2 (;@5;) 2 (;@5;) 0 (;@7;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 3 (;@4;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 3 (;@4;) 5 (;@2;)
                end
                i32.const 114
                local.set 5
                br 4 (;@2;)
              end
              i32.const 110
              local.set 5
              br 3 (;@2;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h4ebc0efc61b46dd0E
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 65536
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 131072
                        i32.lt_u
                        br_if 1 (;@9;)
                        local.get 0
                        i32.const -918000
                        i32.add
                        i32.const 196112
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const -201547
                        i32.add
                        i32.const 716213
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const -195102
                        i32.add
                        i32.const 1506
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const -191457
                        i32.add
                        i32.const 3103
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const -183970
                        i32.add
                        i32.const 14
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const 2097150
                        i32.and
                        i32.const 178206
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const -173790
                        i32.add
                        i32.const 34
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const -177973
                        i32.add
                        i32.const 10
                        i32.gt_u
                        br_if 5 (;@5;)
                        br 2 (;@8;)
                      end
                      local.get 0
                      i32.const 1051048
                      i32.const 41
                      i32.const 1051130
                      i32.const 290
                      i32.const 1051420
                      i32.const 309
                      call $_ZN4core7unicode9printable5check17h40ae2338c3f1931aE
                      i32.eqz
                      br_if 1 (;@8;)
                      br 4 (;@5;)
                    end
                    local.get 0
                    i32.const 1051729
                    i32.const 38
                    i32.const 1051805
                    i32.const 175
                    i32.const 1051980
                    i32.const 419
                    call $_ZN4core7unicode9printable5check17h40ae2338c3f1931aE
                    br_if 3 (;@5;)
                  end
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.clz
                  i32.const 2
                  i32.shr_u
                  i32.const 7
                  i32.xor
                  i64.extend_i32_u
                  i64.const 21474836480
                  i64.or
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 1
                i32.or
                i32.clz
                i32.const 2
                i32.shr_u
                i32.const 7
                i32.xor
                i64.extend_i32_u
                i64.const 21474836480
                i64.or
                local.set 6
              end
              i32.const 3
              local.set 3
              br 2 (;@3;)
            end
            i32.const 1
            local.set 3
            br 1 (;@3;)
          end
        end
        local.get 0
        local.set 5
      end
      loop  ;; label = @2
        local.get 3
        local.set 4
        i32.const 92
        local.set 0
        i32.const 1
        local.set 2
        i32.const 1
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_table 2 (;@6;) 1 (;@7;) 5 (;@3;) 0 (;@8;) 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i64.const 32
                          i64.shr_u
                          i32.wrap_i64
                          i32.const 255
                          i32.and
                          br_table 5 (;@6;) 3 (;@8;) 2 (;@9;) 1 (;@10;) 0 (;@11;) 6 (;@5;) 5 (;@6;)
                        end
                        local.get 6
                        i64.const -1095216660481
                        i64.and
                        i64.const 12884901888
                        i64.or
                        local.set 6
                        i32.const 117
                        local.set 0
                        br 6 (;@4;)
                      end
                      local.get 6
                      i64.const -1095216660481
                      i64.and
                      i64.const 8589934592
                      i64.or
                      local.set 6
                      i32.const 123
                      local.set 0
                      br 5 (;@4;)
                    end
                    local.get 5
                    local.get 6
                    i32.wrap_i64
                    local.tee 4
                    i32.const 2
                    i32.shl
                    i32.const 28
                    i32.and
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee 3
                    i32.const 48
                    i32.or
                    local.get 3
                    i32.const 87
                    i32.add
                    local.get 3
                    i32.const 10
                    i32.lt_u
                    select
                    local.set 0
                    block  ;; label = @9
                      local.get 4
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      i64.const -1
                      i64.add
                      i64.const 4294967295
                      i64.and
                      local.get 6
                      i64.const -4294967296
                      i64.and
                      i64.or
                      local.set 6
                      br 5 (;@4;)
                    end
                    local.get 6
                    i64.const -1095216660481
                    i64.and
                    i64.const 4294967296
                    i64.or
                    local.set 6
                    br 4 (;@4;)
                  end
                  local.get 6
                  i64.const -1095216660481
                  i64.and
                  local.set 6
                  i32.const 125
                  local.set 0
                  br 3 (;@4;)
                end
                i32.const 0
                local.set 3
                local.get 5
                local.set 0
                br 3 (;@3;)
              end
              local.get 1
              i32.load offset=24
              i32.const 39
              local.get 1
              i32.load offset=28
              i32.load offset=16
              call_indirect (type 1)
              return
            end
            local.get 6
            i64.const -1095216660481
            i64.and
            i64.const 17179869184
            i64.or
            local.set 6
          end
          i32.const 3
          local.set 3
        end
        local.get 1
        i32.load offset=24
        local.get 0
        local.get 1
        i32.load offset=28
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $_ZN4core5slice6memchr7memrchr17hc34ac4d470038efdE (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 3
    i32.const 0
    local.get 3
    i32.const 4
    local.get 2
    i32.const 3
    i32.and
    local.tee 4
    i32.sub
    i32.const 0
    local.get 4
    select
    local.tee 5
    i32.sub
    i32.const 7
    i32.and
    local.get 3
    local.get 5
    i32.lt_u
    local.tee 6
    select
    local.tee 4
    i32.sub
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            local.get 5
            local.get 6
            select
            local.set 8
            local.get 2
            local.get 7
            i32.add
            local.get 2
            local.get 3
            i32.add
            local.tee 5
            i32.sub
            local.set 6
            local.get 5
            i32.const -1
            i32.add
            local.set 5
            local.get 1
            i32.const 255
            i32.and
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 6
                i32.const 1
                i32.add
                local.set 6
                local.get 4
                i32.const -1
                i32.add
                local.set 4
                local.get 5
                i32.load8_u
                local.set 10
                local.get 5
                i32.const -1
                i32.add
                local.set 5
                local.get 10
                local.get 9
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 7
              local.get 6
              i32.sub
              local.set 4
              br 3 (;@2;)
            end
            local.get 1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 7
                local.tee 4
                local.get 8
                i32.le_u
                br_if 1 (;@5;)
                local.get 4
                i32.const -8
                i32.add
                local.set 7
                local.get 2
                local.get 4
                i32.add
                local.tee 6
                i32.const -4
                i32.add
                i32.load
                local.get 5
                i32.xor
                local.tee 10
                i32.const -1
                i32.xor
                local.get 10
                i32.const -16843009
                i32.add
                i32.and
                local.get 6
                i32.const -8
                i32.add
                i32.load
                local.get 5
                i32.xor
                local.tee 6
                i32.const -1
                i32.xor
                local.get 6
                i32.const -16843009
                i32.add
                i32.and
                i32.or
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 4
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const -1
            i32.add
            local.set 6
            local.get 1
            i32.const 255
            i32.and
            local.set 10
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 5 (;@1;)
              end
              local.get 6
              local.get 4
              i32.add
              local.set 5
              local.get 4
              i32.const -1
              i32.add
              local.set 4
              local.get 5
              i32.load8_u
              local.get 10
              i32.eq
              br_if 3 (;@2;)
              br 0 (;@5;)
            end
          end
          local.get 7
          local.get 3
          i32.const 1050520
          call $_ZN4core5slice22slice_index_order_fail17h1e83f979b0065c35E
          unreachable
        end
        local.get 4
        local.get 3
        i32.const 1050536
        call $_ZN4core5slice20slice_index_len_fail17h83bcbaa74d10d479E
        unreachable
      end
      i32.const 1
      local.set 5
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store)
  (func $_ZN4core5slice25slice_index_overflow_fail17h4a745af05ff6d99dE (type 0) (param i32)
    i32.const 1050660
    i32.const 44
    local.get 0
    call $_ZN4core9panicking5panic17h8b3fe00fe4eab248E
    unreachable)
  (func $_ZN4core3fmt3num3imp7fmt_u6417ha4a7304351a3ca66E (type 14) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1050238
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1050238
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1050238
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1050238
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1050012
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h6c9db939575a4fe6E
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hdd9edd0824210c6fE (type 1) (param i32 i32) (result i32)
    (local i64)
    local.get 0
    i32.load
    local.tee 0
    i64.extend_i32_s
    local.tee 2
    local.get 2
    i64.const 63
    i64.shr_s
    local.tee 2
    i64.add
    local.get 2
    i64.xor
    local.get 0
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417ha4a7304351a3ca66E)
  (func $memcpy (type 4) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 46 46 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1053817))
  (global (;2;) i32 (i32.const 1053817))
  (export "memory" (memory 0))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "rpc_echo" (func $rpc_echo))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) $_ZN4core3ptr13drop_in_place17h9ab3edcd257e5862E $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hee8677008b554f95E $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hd9c35dba327af930E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdeceb18e10a734d8E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad81c7fe37a3cf6E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hdd9edd0824210c6fE $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hb05b02514dd04541E $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h553fdfa11009b9e8E $_ZN3std5alloc24default_alloc_error_hook17hce7bb12e13f004efE $_ZN4core3ptr13drop_in_place17h04904c5d9a5a99c4E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h78779fa51a733229E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hdd93b2a5e46c40beE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h28786e51332a2a7eE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2c3e687b1155b19dE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfd8b6b9a0c4486b4E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hcafd743a5547c758E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h6dd7bd1ad58de43bE $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hea57602a460b72afE $_ZN4core3ptr13drop_in_place17h2ad0181d59c596c8E $_ZN3std5error5Error5cause17h1366f086b795537eE $_ZN3std5error5Error7type_id17h15aaa14311501381E $_ZN3std5error5Error9backtrace17hd36a369f97a500f1E $_ZN243_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$std..error..Error$GT$11description17h34263f8fe2f5da6bE $_ZN244_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17hb43d7b5bc68a1c53E $_ZN242_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17h91aa905952ea65c1E $_ZN4core3ptr13drop_in_place17h21540f752325e797E $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17haa7142f3d1b1f4dfE $_ZN4core3fmt5Write10write_char17h5ea608a6c1de0e14E $_ZN4core3fmt5Write9write_fmt17h237a9b205847c34eE $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h343d2a1ba1a85bdfE $_ZN4core3ptr13drop_in_place17h73367cb5d6fc27feE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h44e504a8438812daE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h2aa62db920c95ad9E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdea912f8e168b91dE $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3f421cf08063488aE $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17hee5dfcdb6bd41862E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h07bf1170f5057864E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h162f0ba249169d30E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf3e5e191b35fe362E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h645c96638f72f5e6E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b4162a60f573758E $_ZN4core3ops8function6FnOnce9call_once17h319f38c1f5e36359E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc123663923fce076E $_ZN4core3ptr13drop_in_place17h0171895b419b6359E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h30b8b0d209a018f3E)
  (data (;0;) (i32.const 1048576) "assertion failed: 4 <= buf.len()/home/andrewosh/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/libstd/macros.rs \00\10\00l\00\00\00\0d\00\00\00\17\00\00\00IN FREE!!\0a\00\00\9c\00\10\00\0a\00\00\00\01\00\00\00\08\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\01\00\00\00\08\00\00\00\04\00\00\00\04\00\00\00\0a\00\00\00\04\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0a\00\00\00\04\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00already borrowed/rustc/04488afe34512aa4c33566eb16d8c912a3ae04f9/src/libcore/cell.rs\00\14\01\10\00C\00\00\00c\03\00\00\1f\00\00\00\0a\00\00\00\00\00\00\00\01\00\00\00\11\00\00\00called `Option::unwrap()` on a `None` value\00\0a\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\14\00\00\00\18\00\00\00\19\00\00\00src/libstd/io/buffered.rs\00\00\00\dc\01\10\00\19\00\00\00\0f\02\00\00)\00\00\00\dc\01\10\00\19\00\00\00I\02\00\00\1d\00\00\00\dc\01\10\00\19\00\00\00\03\04\00\00#\00\00\00unexpected end of fileother os erroroperation interruptedwrite zerotimed outinvalid datainvalid input parameteroperation would blockentity already existsbroken pipeaddress not availableaddress in usenot connectedconnection abortedconnection resetconnection refusedpermission deniedentity not found\00\00\00h\01\10\00\00\00\00\00 (os error )h\01\10\00\00\00\00\00\5c\03\10\00\0b\00\00\00g\03\10\00\01\00\00\00failed to write whole buffersrc/libstd/io/stdio.rscannot access stdout during shutdown\00\00\9c\03\10\00\16\00\00\00J\02\00\003\00\00\00failed printing to : \00\00\00\e8\03\10\00\13\00\00\00\fb\03\10\00\02\00\00\00\9c\03\10\00\16\00\00\00\bb\03\00\00\09\00\00\00stdoutsrc/libstd/io/mod.rs\00\00&\04\10\00\14\00\00\00}\05\00\00!\00\00\00formatter error\00\1a\00\00\00\0c\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\0a\00\00\00\04\00\00\00\04\00\00\00\1e\00\00\00src/libstd/panicking.rs\00\84\04\10\00\17\00\00\00\b3\01\00\00\1f\00\00\00\84\04\10\00\17\00\00\00\b4\01\00\00\1e\00\00\00\1f\00\00\00\10\00\00\00\04\00\00\00 \00\00\00!\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\22\00\00\00\0a\00\00\00\08\00\00\00\04\00\00\00#\00\00\00$\00\00\00\0a\00\00\00\08\00\00\00\04\00\00\00%\00\00\00operation successfulcannot recursively acquire mutexsrc/libstd/sys/wasm/mutex.rs8\05\10\00\1c\00\00\00\15\00\00\00\09\00\00\00src/liballoc/raw_vec.rscapacity overflowd\05\10\00\17\00\00\00\17\02\00\00\05\00\00\00`..\00\9d\05\10\00\02\00\00\00BorrowMutErrorcalled `Option::unwrap()` on a `None` value\00\00\00\9c\05\10\00\00\00\00\00: \00\00\9c\05\10\00\00\00\00\00\ec\05\10\00\02\00\00\00,\00\00\00\00\00\00\00\01\00\00\00-\00\00\00index out of bounds: the len is  but the index is \00\00\10\06\10\00 \00\00\000\06\10\00\12\00\00\00src/libcore/fmt/num.rs\00\00T\06\10\00\16\00\00\00T\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899src/libcore/fmt/mod.rsF\07\10\00\16\00\00\00S\04\00\00\11\00\00\00F\07\10\00\16\00\00\00]\04\00\00$\00\00\00src/libcore/slice/memchr.rs\00|\07\10\00\1b\00\00\00i\00\00\00\1a\00\00\00|\07\10\00\1b\00\00\00\83\00\00\00\05\00\00\00index  out of range for slice of length \b8\07\10\00\06\00\00\00\be\07\10\00\22\00\00\00slice index starts at  but ends at \00\f0\07\10\00\16\00\00\00\06\08\10\00\0d\00\00\00attempted to index slice up to maximum usizesrc/libcore/str/mod.rs\00\00P\08\10\00\16\00\00\00\96\07\00\00/\00\00\00P\08\10\00\16\00\00\00/\08\00\00/\00\00\00[...]byte index  is out of bounds of `\00\00\8d\08\10\00\0b\00\00\00\98\08\10\00\16\00\00\00\9c\05\10\00\01\00\00\00begin <= end ( <= ) when slicing `\00\00\c8\08\10\00\0e\00\00\00\d6\08\10\00\04\00\00\00\da\08\10\00\10\00\00\00\9c\05\10\00\01\00\00\00 is not a char boundary; it is inside  (bytes ) of `\8d\08\10\00\0b\00\00\00\0c\09\10\00&\00\00\002\09\10\00\08\00\00\00:\09\10\00\06\00\00\00\9c\05\10\00\01\00\00\00src/libcore/unicode/printable.rsh\09\10\00 \00\00\00\0a\00\00\00\1c\00\00\00h\09\10\00 \00\00\00\1a\00\00\006\00\00\00\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\03,\02-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\c0\c1\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5(\0b\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06!?L\04-\03t\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\b3-t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\ee\0d\03\84\8d\037\09\81\5c\14\80\b8\08\80\cb*8\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e8\02\ee \f0\04\f8\02\f9\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afy\ccno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*V\1c\14\17\09N\04\1e\0fC\0e\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\139\07\0a6,\04\10\80\c0<dS\0cH\09\0aFE\1bH\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\f7\81\1f1\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\80\d5-\03\1a\04\02\81p:\05\01\85\00\80\d7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\08\0d\03\0d\03t\0cY\07\0c\14\0c\048\08\0a\06(\08\22N\81T\0c\15\03\03\05\07\09\19\07\07\09\03\0d\07)\80\cb%\0a\84\06src/libcore/unicode/unicode_data.rs\00\00\ef\0e\10\00#\00\00\00K\00\00\00(\00\00\00\ef\0e\10\00#\00\00\00W\00\00\00\16\00\00\00\ef\0e\10\00#\00\00\00R\00\00\00>\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17\a0\1e\0c \e0\1e\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe\a05\9e\ff\e05\fd\01a6\01\0a\a16$\0da7\ab\0e\e18/\18!90\1caF\f3\1e\a1J\f0jaNOo\a1N\9d\bc!Oe\d1\e1O\00\da!P\00\e0\e1Q0\e1aS\ec\e2\a1T\d0\e8\e1T \00.U\f0\01\bfU\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03w\0f\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\019\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03w\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\11?\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6:\01\05\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b\b0\016\0f8\031\04\02\02E\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\04\00\07m\07\00`\80\f0\00"))
