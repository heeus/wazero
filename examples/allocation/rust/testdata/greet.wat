(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32) (result i64)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32)))
  (type (;10;) (func (param i32) (result i64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "log" (func $_ZN5greet4_log17h8368eb68379ab306E (type 4)))
  (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9912e7afea954547E (type 4) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17ha4d875f6f75123f2E
    end)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17ha4d875f6f75123f2E (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.store offset=4
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        i32.const -1
        i32.add
        local.tee 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 1049312
        i32.store offset=8
        local.get 2
        local.get 0
        i32.const 2
        i32.shl
        i32.const 1049316
        i32.add
        local.tee 0
        i32.load
        i32.store offset=12
        local.get 2
        i32.const 4
        i32.add
        local.get 2
        i32.const 12
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.const 1049260
        call $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17heba328f154c73eb5E
        local.get 0
        local.get 2
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.load offset=1049312
      i32.store offset=12
      local.get 2
      i32.const 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049284
      i32.const 1049284
      call $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17heba328f154c73eb5E
      i32.const 0
      local.get 2
      i32.load offset=12
      i32.store offset=1049312
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5greet8greeting17h2b54de1c4fb0a090E (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 28
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i32.load offset=8
    i32.store
    local.get 2
    i32.const 1048584
    i32.store offset=24
    local.get 2
    i32.const 7
    i32.store offset=12
    local.get 2
    i32.const 1048585
    i32.store offset=8
    local.get 2
    local.get 1
    i32.load
    i32.store offset=16
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 3
    call $_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6concat17heae3eac0f1705d30E
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6concat17heae3eac0f1705d30E (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 2
    i32.const 3
    i32.shl
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.set 5
    i32.const 0
    local.set 6
    local.get 1
    local.set 7
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const -8
        i32.add
        local.set 4
        local.get 6
        local.get 7
        i32.load offset=4
        i32.add
        local.tee 8
        local.get 6
        i32.ge_u
        local.set 9
        local.get 7
        i32.const 8
        i32.add
        local.set 7
        local.get 8
        local.set 6
        local.get 9
        br_if 0 (;@2;)
      end
      call $_ZN4core6option13expect_failed17h52436cb58dfe4ec3E
      unreachable
    end
    local.get 3
    local.get 6
    call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h6ee7ff606c0b3d38E
    local.get 1
    i32.load
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        local.tee 10
        local.get 3
        i32.load offset=8
        local.tee 7
        i32.sub
        local.get 1
        i32.load offset=4
        local.tee 8
        i32.lt_u
        br_if 0 (;@2;)
        local.get 7
        local.get 8
        i32.add
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          local.get 8
          i32.add
          local.tee 4
          local.get 7
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          i32.const 0
          local.set 11
          local.get 4
          local.set 12
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
        local.get 3
        i32.const 16
        i32.add
        local.get 10
        i32.const 1
        i32.shl
        local.tee 11
        local.get 4
        local.get 11
        local.get 4
        i32.gt_u
        select
        local.tee 11
        i32.const 8
        local.get 11
        i32.const 8
        i32.gt_u
        select
        local.tee 13
        local.get 3
        i32.load
        i32.const 0
        local.get 10
        select
        local.get 10
        i32.const 1
        call $_ZN5alloc7raw_vec11finish_grow17h6bd1ccd664ecd2f3E
        block  ;; label = @3
          local.get 3
          i32.load offset=16
          br_if 0 (;@3;)
          local.get 3
          local.get 3
          i32.load offset=20
          i32.store
          local.get 13
          local.set 10
          br 1 (;@2;)
        end
        local.get 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        local.set 11
        local.get 3
        i32.load offset=20
        local.set 12
        i32.const 1
        local.set 1
      end
      local.get 1
      local.get 12
      local.get 11
      call $_ZN5alloc7raw_vec14handle_reserve17h0b4a0401f31247b6E
    end
    local.get 3
    i32.load
    local.tee 11
    local.get 7
    i32.add
    local.get 9
    local.get 8
    call $memcpy
    drop
    local.get 6
    local.get 4
    i32.sub
    local.set 8
    local.get 11
    local.get 4
    i32.add
    local.set 9
    local.get 2
    i32.const 3
    i32.shl
    i32.const -8
    i32.add
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load
        local.set 1
        local.get 5
        i32.load offset=4
        local.set 7
        local.get 3
        i32.const 16
        i32.add
        local.get 9
        local.get 8
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1c57078ae0fd673cE
        local.get 3
        i32.load offset=28
        local.set 8
        local.get 3
        i32.load offset=24
        local.set 9
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        i32.const 1049284
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h2088335462a744bbE
        local.get 3
        i32.const 16
        i32.add
        local.get 9
        local.get 8
        local.get 7
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1c57078ae0fd673cE
        local.get 3
        i32.load offset=28
        local.set 8
        local.get 3
        i32.load offset=24
        local.set 9
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 1
        local.get 7
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h2088335462a744bbE
        local.get 4
        i32.const -8
        i32.add
        local.set 4
        local.get 5
        i32.const 8
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 10
    i32.store offset=4
    local.get 0
    local.get 11
    i32.store
    local.get 0
    local.get 6
    local.get 8
    i32.sub
    i32.store offset=8
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $greet (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $_ZN5greet13ptr_to_string17h42696f79fa96e15fE
    local.get 2
    i32.const 48
    i32.add
    local.get 2
    call $_ZN5greet8greeting17h2b54de1c4fb0a090E
    local.get 2
    i32.const 44
    i32.add
    local.get 2
    i32.load offset=56
    i32.store
    local.get 2
    i32.const 8
    i32.store offset=36
    local.get 2
    i32.const 1048576
    i32.store offset=32
    local.get 2
    local.get 2
    i32.load offset=48
    local.tee 0
    i32.store offset=40
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 32
    i32.add
    i32.const 2
    call $_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6concat17heae3eac0f1705d30E
    local.get 2
    i32.load offset=16
    local.tee 1
    local.get 2
    i32.load offset=24
    call $_ZN5greet4_log17h8368eb68379ab306E
    local.get 1
    local.get 2
    i32.load offset=20
    call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9912e7afea954547E
    local.get 0
    local.get 2
    i32.load offset=52
    call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9912e7afea954547E
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9912e7afea954547E
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5greet13ptr_to_string17h42696f79fa96e15fE (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h6ee7ff606c0b3d38E
    local.get 3
    i32.load
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.store
    local.get 0
    local.get 3
    i64.load
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $greeting (type 6) (param i32 i32) (result i64)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $_ZN5greet13ptr_to_string17h42696f79fa96e15fE
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    call $_ZN5greet8greeting17h2b54de1c4fb0a090E
    local.get 2
    i64.load32_u offset=24
    local.set 3
    local.get 2
    i64.load32_u offset=16
    local.set 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9912e7afea954547E
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3
    local.get 4
    i64.const 32
    i64.shl
    i64.or)
  (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h6ee7ff606c0b3d38E (type 4) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        call $_ZN5alloc5alloc6Global10alloc_impl17h3d0bd17ef7ef07a8E
        local.get 2
        i32.load offset=8
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E
      unreachable
    end
    unreachable
    unreachable)
  (func $allocate (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        call $_ZN5alloc5alloc6Global10alloc_impl17h3d0bd17ef7ef07a8E
        local.get 1
        i32.load offset=8
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17ha4d875f6f75123f2E
          i32.const 0
          local.get 0
          local.get 0
          call $_ZN5alloc7raw_vec14handle_reserve17h0b4a0401f31247b6E
          i32.const 1
          local.set 2
        end
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E
      unreachable
    end
    unreachable
    unreachable)
  (func $_ZN5alloc5alloc6Global10alloc_impl17h3d0bd17ef7ef07a8E (type 4) (param i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hf559270b331bfec1E
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_ZN5alloc7raw_vec14handle_reserve17h0b4a0401f31247b6E (type 5) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        unreachable
        unreachable
      end
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E (type 7)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1049284
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1048832
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1048840
    call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
    unreachable)
  (func $deallocate (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9912e7afea954547E)
  (func $_ZN5alloc7raw_vec11finish_grow17h6bd1ccd664ecd2f3E (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              local.get 5
              i32.const 8
              i32.add
              local.get 1
              call $_ZN5alloc5alloc6Global10alloc_impl17h3d0bd17ef7ef07a8E
              local.get 5
              i32.load offset=12
              local.set 6
              local.get 5
              i32.load offset=8
              local.set 2
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 2
              local.get 3
              local.get 1
              call $__rust_realloc
              local.tee 2
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 2 (;@3;)
            end
            local.get 1
            local.set 6
            br 1 (;@3;)
          end
          local.get 5
          local.get 1
          call $_ZN5alloc5alloc6Global10alloc_impl17h3d0bd17ef7ef07a8E
          local.get 5
          i32.load offset=4
          local.set 6
          local.get 5
          i32.load
          local.set 2
        end
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          i32.store offset=4
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        i32.const 1
        local.set 6
      end
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 6
    i32.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__rust_realloc (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.const 1
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hf559270b331bfec1E
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      local.get 1
      local.get 1
      local.get 2
      i32.gt_u
      select
      call $memcpy
      drop
      local.get 0
      local.get 1
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17ha4d875f6f75123f2E
    end
    local.get 3)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hf559270b331bfec1E (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        local.tee 0
        i32.const -1
        i32.add
        local.tee 3
        i32.const 256
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.load offset=1049312
        i32.store offset=8
        local.get 0
        local.get 1
        local.get 2
        i32.const 8
        i32.add
        i32.const 1049284
        i32.const 1049284
        call $_ZN9wee_alloc17alloc_with_refill17h7cacfde2a26486c8E
        local.set 1
        i32.const 0
        local.get 2
        i32.load offset=8
        i32.store offset=1049312
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1049312
      i32.store offset=4
      local.get 2
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1049316
      i32.add
      local.tee 3
      i32.load
      i32.store offset=12
      local.get 0
      local.get 1
      local.get 2
      i32.const 12
      i32.add
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049260
      call $_ZN9wee_alloc17alloc_with_refill17h7cacfde2a26486c8E
      local.set 1
      local.get 3
      local.get 2
      i32.load offset=12
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core6option13expect_failed17h52436cb58dfe4ec3E (type 7)
    call $_ZN4core9panicking9panic_str17h67b1f0cb1c7ca19bE
    unreachable)
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1c57078ae0fd673cE (type 2) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 0
      i32.const 12
      i32.add
      local.get 2
      local.get 3
      i32.sub
      i32.store
      local.get 0
      local.get 1
      local.get 3
      i32.add
      i32.store offset=8
      return
    end
    i32.const 1048752
    i32.const 35
    i32.const 1048736
    call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
    unreachable)
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h2088335462a744bbE (type 2) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $memcpy
      drop
      return
    end
    local.get 1
    local.get 3
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h5382b079ea0c7454E
    unreachable)
  (func $_ZN4core9panicking5panic17he88f1b1582b09c8cE (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1049284
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
    call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
    unreachable)
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h5382b079ea0c7454E (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=12 align=4
    local.get 2
    i32.const 1049148
    i32.store offset=8
    local.get 2
    i32.const 1
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 2
    i32.const 8
    i32.add
    i32.const 1048736
    call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store8 offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    i32.const 1048856
    i32.store offset=12
    local.get 2
    i32.const 1049284
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h1de381c7fe17233bE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.load32_u
        local.tee 4
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 4
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.add
        local.tee 0
        i32.const -4
        i32.add
        local.get 4
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const -10000
        i64.mul
        local.get 4
        i64.add
        i32.wrap_i64
        local.tee 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 7
        i32.const 1
        i32.shl
        i32.const 1048881
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 0
        i32.const -2
        i32.add
        local.get 7
        i32.const -100
        i32.mul
        local.get 6
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048881
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 4
        i64.const 99999999
        i64.gt_u
        local.set 0
        local.get 5
        local.set 4
        local.get 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 0
      i32.const 99
      i32.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const -100
      i32.mul
      local.get 6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048881
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -2
        i32.add
        local.tee 3
        i32.add
        local.get 0
        i32.const 1
        i32.shl
        i32.const 1048881
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 48
      i32.add
      i32.store8
    end
    i32.const 39
    local.get 3
    i32.sub
    local.set 8
    i32.const 1
    local.set 0
    i32.const 43
    i32.const 1114112
    local.get 1
    i32.load
    local.tee 6
    i32.const 1
    i32.and
    local.tee 7
    select
    local.set 9
    local.get 6
    i32.const 29
    i32.shl
    i32.const 31
    i32.shr_s
    i32.const 1049284
    i32.and
    local.set 10
    local.get 2
    i32.const 9
    i32.add
    local.get 3
    i32.add
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        local.get 9
        local.get 10
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=24
        local.get 11
        local.get 8
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 12
                i32.add
                i32.load
                local.tee 12
                local.get 8
                local.get 7
                i32.add
                local.tee 0
                i32.le_u
                br_if 0 (;@6;)
                local.get 6
                i32.const 8
                i32.and
                br_if 4 (;@2;)
                i32.const 0
                local.set 3
                local.get 12
                local.get 0
                i32.sub
                local.tee 6
                local.set 13
                i32.const 1
                local.get 1
                i32.load8_u offset=32
                local.tee 0
                local.get 0
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              i32.const 1
              local.set 0
              local.get 1
              local.get 9
              local.get 10
              call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
              br_if 4 (;@1;)
              local.get 1
              i32.load offset=24
              local.get 11
              local.get 8
              local.get 1
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 0)
              local.set 0
              br 4 (;@1;)
            end
            i32.const 0
            local.set 13
            local.get 6
            local.set 3
            br 1 (;@3;)
          end
          local.get 6
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 6
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 13
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 28
        i32.add
        i32.load
        local.set 7
        local.get 1
        i32.load offset=4
        local.set 6
        local.get 1
        i32.load offset=24
        local.set 12
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 12
            local.get 6
            local.get 7
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 0
          br 2 (;@1;)
        end
        i32.const 1
        local.set 0
        local.get 6
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        local.get 9
        local.get 10
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
        br_if 1 (;@1;)
        local.get 12
        local.get 11
        local.get 8
        local.get 7
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        i32.const 0
        local.set 3
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 13
              local.get 3
              i32.ne
              br_if 0 (;@5;)
              local.get 13
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 12
            local.get 6
            local.get 7
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const -1
          i32.add
          local.set 3
        end
        local.get 3
        local.get 13
        i32.lt_u
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=4
      local.set 13
      local.get 1
      i32.const 48
      i32.store offset=4
      local.get 1
      i32.load8_u offset=32
      local.set 14
      i32.const 1
      local.set 0
      local.get 1
      i32.const 1
      i32.store8 offset=32
      local.get 1
      local.get 9
      local.get 10
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
      br_if 0 (;@1;)
      local.get 3
      local.get 12
      i32.add
      local.get 7
      i32.sub
      i32.const -38
      i32.add
      local.set 3
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.set 6
      local.get 1
      i32.load offset=24
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 7
          i32.const 48
          local.get 6
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 7
      local.get 11
      local.get 8
      local.get 6
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 1
      local.get 14
      i32.store8 offset=32
      local.get 1
      local.get 13
      i32.store offset=4
      i32.const 0
      local.set 0
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 3
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=16
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        local.set 3
      end
      local.get 3
      return
    end
    local.get 0
    i32.load offset=24
    local.get 2
    i32.const 0
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0))
  (func $rust_begin_unwind (type 9) (param i32)
    local.get 0
    i32.load offset=8
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hf36fa2f04a35a920E
    local.get 0
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h9f6add6df687a1bfE
    unreachable)
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hb157a09373bf5ee3E (type 9) (param i32))
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h02851016e297d883E (type 10) (param i32) (result i64)
    i64.const 1502398661243083777)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb15fe0cb47bd378bE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.load offset=16
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 4
        local.get 3
        i32.add
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 20
            i32.add
            i32.load
            local.tee 7
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            local.get 4
            local.set 2
            br 1 (;@3;)
          end
          i32.const 0
          local.set 8
          local.get 4
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.tee 0
            local.get 6
            i32.eq
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_s
                local.tee 2
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                local.get 0
                i32.const 1
                i32.add
                local.set 2
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const -32
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 2
                i32.add
                local.set 2
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 3
                i32.add
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 0
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get 0
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 2
              i32.const 255
              i32.and
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              i32.const 1114112
              i32.eq
              br_if 4 (;@1;)
              local.get 0
              i32.const 4
              i32.add
              local.set 2
            end
            local.get 8
            local.get 0
            i32.sub
            local.get 2
            i32.add
            local.set 8
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 6
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.load8_s
          local.tee 0
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 0
          i32.const -32
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          i32.const -16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u offset=2
          i32.const 63
          i32.and
          i32.const 6
          i32.shl
          local.get 2
          i32.load8_u offset=1
          i32.const 63
          i32.and
          i32.const 12
          i32.shl
          i32.or
          local.get 2
          i32.load8_u offset=3
          i32.const 63
          i32.and
          i32.or
          local.get 0
          i32.const 255
          i32.and
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          i32.const 1114112
          i32.eq
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 8
              local.get 3
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 0
              local.get 3
              local.set 2
              local.get 8
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            i32.const 0
            local.set 0
            local.get 8
            local.set 2
            local.get 4
            local.get 8
            i32.add
            i32.load8_s
            i32.const -64
            i32.lt_s
            br_if 1 (;@3;)
          end
          local.get 2
          local.set 8
          local.get 4
          local.set 0
        end
        local.get 8
        local.get 3
        local.get 0
        select
        local.set 3
        local.get 0
        local.get 4
        local.get 0
        select
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=24
      local.get 4
      local.get 3
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    block  ;; label = @1
      local.get 5
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=24
      local.get 4
      local.get 3
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 0
            local.get 4
            i32.sub
            local.tee 6
            i32.lt_u
            br_if 2 (;@2;)
            local.get 6
            i32.const 4
            i32.gt_u
            br_if 2 (;@2;)
            local.get 3
            local.get 6
            i32.sub
            local.tee 5
            i32.const 4
            i32.lt_u
            br_if 2 (;@2;)
            local.get 5
            i32.const 3
            i32.and
            local.set 10
            i32.const 0
            local.set 11
            i32.const 0
            local.set 2
            block  ;; label = @5
              local.get 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.const 3
              i32.and
              local.set 8
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 4
                  i32.const -1
                  i32.xor
                  i32.add
                  i32.const 3
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 2
                  local.get 4
                  local.set 0
                  br 1 (;@6;)
                end
                local.get 6
                i32.const -4
                i32.and
                local.set 7
                i32.const 0
                local.set 2
                local.get 4
                local.set 0
                loop  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 0
                  i32.const 1
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 0
                  i32.const 2
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 0
                  i32.const 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 2
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 0
                  local.get 7
                  i32.const -4
                  i32.add
                  local.tee 7
                  br_if 0 (;@7;)
                end
              end
              local.get 8
              i32.eqz
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 2
                local.get 0
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 2
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                local.get 8
                i32.const -1
                i32.add
                local.tee 8
                br_if 0 (;@6;)
              end
            end
            local.get 4
            local.get 6
            i32.add
            local.set 0
            block  ;; label = @5
              local.get 10
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              i32.const -4
              i32.and
              i32.add
              local.tee 8
              i32.load8_s
              i32.const -65
              i32.gt_s
              local.set 11
              local.get 10
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 11
              local.get 8
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.set 11
              local.get 10
              i32.const 2
              i32.eq
              br_if 0 (;@5;)
              local.get 11
              local.get 8
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.set 11
            end
            local.get 5
            i32.const 2
            i32.shr_u
            local.set 5
            local.get 11
            local.get 2
            i32.add
            local.set 7
            loop  ;; label = @5
              local.get 0
              local.set 10
              local.get 5
              i32.eqz
              br_if 4 (;@1;)
              local.get 5
              i32.const 192
              local.get 5
              i32.const 192
              i32.lt_u
              select
              local.tee 11
              i32.const 3
              i32.and
              local.set 12
              local.get 11
              i32.const 2
              i32.shl
              local.set 13
              block  ;; label = @6
                block  ;; label = @7
                  local.get 11
                  i32.const 252
                  i32.and
                  local.tee 14
                  i32.const 2
                  i32.shl
                  local.tee 0
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 10
                local.get 0
                i32.add
                local.set 6
                i32.const 0
                local.set 2
                local.get 10
                local.set 0
                loop  ;; label = @7
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 8
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 8
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.load
                  local.tee 8
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 8
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 8
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 8
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 0
                  i32.load
                  local.tee 8
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 8
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 2
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  local.set 2
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 0
                  local.get 6
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 10
              local.get 13
              i32.add
              local.set 0
              local.get 5
              local.get 11
              i32.sub
              local.set 5
              local.get 2
              i32.const 8
              i32.shr_u
              i32.const 16711935
              i32.and
              local.get 2
              i32.const 16711935
              i32.and
              i32.add
              i32.const 65537
              i32.mul
              i32.const 16
              i32.shr_u
              local.get 7
              i32.add
              local.set 7
              local.get 12
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 10
            local.get 14
            i32.const 2
            i32.shl
            i32.add
            local.set 0
            local.get 12
            i32.const 1073741823
            i32.add
            local.tee 11
            i32.const 1073741823
            i32.and
            local.tee 2
            i32.const 1
            i32.add
            local.tee 8
            i32.const 3
            i32.and
            local.set 5
            block  ;; label = @5
              local.get 2
              i32.const 3
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 2 (;@3;)
            end
            local.get 8
            i32.const 2147483644
            i32.and
            local.set 8
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 6
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 6
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 6
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 6
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 6
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.load
              local.tee 6
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 6
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 8
              i32.const -4
              i32.add
              local.tee 8
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            br 3 (;@1;)
          end
          local.get 3
          i32.const 3
          i32.and
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              local.get 4
              local.set 0
              br 1 (;@4;)
            end
            local.get 3
            i32.const -4
            i32.and
            local.set 8
            i32.const 0
            local.set 7
            local.get 4
            local.set 0
            loop  ;; label = @5
              local.get 7
              local.get 0
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 0
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 0
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 0
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 7
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 8
              i32.const -4
              i32.add
              local.tee 8
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          loop  ;; label = @4
            local.get 7
            local.get 0
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 7
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 11
          i32.const -1073741823
          i32.add
          local.set 8
          loop  ;; label = @4
            local.get 0
            i32.load
            local.tee 6
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 6
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 2
            i32.add
            local.set 2
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 16711935
        i32.and
        local.get 2
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 7
        i32.add
        local.set 7
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.and
      local.set 2
      i32.const 0
      local.set 7
      local.get 4
      local.set 0
      loop  ;; label = @2
        local.get 7
        local.get 0
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.get 0
        i32.const 1
        i32.add
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.get 0
        i32.const 2
        i32.add
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.get 0
        i32.const 3
        i32.add
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 7
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        local.get 2
        i32.const -4
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 3
      i32.and
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 7
        local.get 0
        local.get 2
        i32.add
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 7
        local.get 8
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 9
      local.get 7
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 0
      local.get 9
      local.get 7
      i32.sub
      local.tee 2
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            local.get 1
            i32.load8_u offset=32
            local.tee 8
            local.get 8
            i32.const 3
            i32.eq
            select
            i32.const 3
            i32.and
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 6
          local.get 2
          local.set 0
          br 1 (;@2;)
        end
        local.get 2
        i32.const 1
        i32.shr_u
        local.set 0
        local.get 2
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 6
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.set 8
      local.get 1
      i32.load offset=4
      local.set 2
      local.get 1
      i32.load offset=24
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.const -1
          i32.add
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 7
          local.get 2
          local.get 8
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        local.get 4
        local.get 3
        local.get 8
        i32.load offset=12
        call_indirect (type 0)
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 6
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 7
            local.get 2
            local.get 8
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const -1
          i32.add
          local.set 0
        end
        local.get 0
        local.get 6
        i32.lt_u
        local.set 0
      end
      local.get 0
      return
    end
    local.get 1
    i32.load offset=24
    local.get 4
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0))
  (func $_ZN4core9panicking9panic_str17h67b1f0cb1c7ca19bE (type 7)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 53
    i32.store offset=12
    local.get 0
    i32.const 1048592
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN4core9panicking13panic_display17h6044410459e300ccE
    unreachable)
  (func $_ZN4core9panicking13panic_display17h6044410459e300ccE (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 1
    i32.const 1048872
    i32.store
    local.get 1
    i32.const 2
    i32.store offset=28
    local.get 1
    local.get 0
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 1048720
    call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
    unreachable)
  (func $rust_panic (type 7)
    unreachable
    unreachable)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hf36fa2f04a35a920E (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1049172
      i32.const 43
      i32.const 1049244
      call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
      unreachable
    end
    local.get 0)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h9f6add6df687a1bfE (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h4939ceabc7a11060E
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h4939ceabc7a11060E (type 4) (param i32 i32)
    (local i32)
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        br_table 0 (;@2;) 0 (;@2;) 1 (;@1;)
      end
      local.get 2
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=16
      call $_ZN3std9panicking20rust_panic_with_hook17h623ac32ff431b114E
      unreachable
    end
    local.get 1
    i32.load8_u offset=16
    call $_ZN3std9panicking20rust_panic_with_hook17h623ac32ff431b114E
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h623ac32ff431b114E (type 9) (param i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    i32.const 0
    i32.const 0
    i32.load offset=1050344
    local.tee 2
    i32.const 1
    i32.add
    i32.store offset=1050344
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1050352
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1050360
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=1050352
    end
    i32.const 0
    local.get 1
    i32.store offset=1050360
    block  ;; label = @1
      local.get 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 2
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1050340
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      call $rust_panic
      unreachable
    end
    unreachable
    unreachable)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17ha6fc2c180c252835E (type 2) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.load
    local.tee 1
    i32.load
    i32.store offset=12
    local.get 2
    i32.const 2
    i32.add
    local.tee 2
    local.get 2
    i32.mul
    local.tee 2
    i32.const 2048
    local.get 2
    i32.const 2048
    i32.gt_u
    select
    local.tee 5
    i32.const 4
    local.get 4
    i32.const 12
    i32.add
    i32.const 1049284
    i32.const 1049284
    call $_ZN9wee_alloc17alloc_with_refill17h7cacfde2a26486c8E
    local.set 2
    local.get 1
    local.get 4
    i32.load offset=12
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=4 align=4
      local.get 2
      local.get 2
      local.get 5
      i32.const 2
      i32.shl
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set 1
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN9wee_alloc17alloc_with_refill17h7cacfde2a26486c8E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_ZN9wee_alloc15alloc_first_fit17h1e8e10992219a2a4E
      local.tee 6
      br_if 0 (;@1;)
      local.get 5
      i32.const 8
      i32.add
      local.get 3
      local.get 0
      local.get 1
      local.get 4
      i32.load offset=12
      call_indirect (type 2)
      i32.const 0
      local.set 6
      local.get 5
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=12
      local.tee 6
      local.get 2
      i32.load
      i32.store offset=8
      local.get 2
      local.get 6
      i32.store
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_ZN9wee_alloc15alloc_first_fit17h1e8e10992219a2a4E
      local.set 6
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $_ZN9wee_alloc15alloc_first_fit17h1e8e10992219a2a4E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -1
    i32.add
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.get 1
    i32.sub
    local.set 7
    local.get 0
    i32.const 2
    i32.shl
    local.set 8
    local.get 2
    i32.load
    local.set 9
    block  ;; label = @1
      loop  ;; label = @2
        local.get 9
        i32.eqz
        br_if 1 (;@1;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.tee 9
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i32.load
                i32.const -4
                i32.and
                local.tee 10
                local.get 1
                i32.const 8
                i32.add
                local.tee 11
                i32.sub
                local.get 8
                i32.lt_u
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 11
                    local.get 3
                    local.get 0
                    local.get 4
                    i32.load offset=16
                    call_indirect (type 1)
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 8
                    i32.add
                    local.get 10
                    local.get 8
                    i32.sub
                    local.get 7
                    i32.and
                    local.tee 9
                    i32.le_u
                    br_if 0 (;@8;)
                    local.get 11
                    i32.load
                    local.set 9
                    local.get 5
                    local.get 11
                    i32.and
                    br_if 3 (;@5;)
                    local.get 2
                    local.get 9
                    i32.const -4
                    i32.and
                    i32.store
                    local.get 1
                    local.get 1
                    i32.load
                    i32.const 1
                    i32.or
                    i32.store
                    local.get 1
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 9
                  i32.const 0
                  i32.store
                  local.get 9
                  i32.const -8
                  i32.add
                  local.tee 9
                  i64.const 0
                  i64.store align=4
                  local.get 9
                  local.get 1
                  i32.load
                  i32.const -4
                  i32.and
                  i32.store
                  block  ;; label = @8
                    local.get 1
                    i32.load
                    local.tee 2
                    i32.const -4
                    i32.and
                    local.tee 11
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 11
                    local.get 2
                    i32.const 2
                    i32.and
                    select
                    local.tee 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 2
                    i32.load offset=4
                    i32.const 3
                    i32.and
                    local.get 9
                    i32.or
                    i32.store offset=4
                  end
                  local.get 9
                  local.get 9
                  i32.load offset=4
                  i32.const 3
                  i32.and
                  local.get 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 1
                  i32.load offset=8
                  i32.const -2
                  i32.and
                  i32.store offset=8
                  local.get 1
                  local.get 1
                  i32.load
                  local.tee 2
                  i32.const 3
                  i32.and
                  local.get 9
                  i32.or
                  local.tee 11
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      local.get 9
                      i32.load
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 11
                    i32.const -3
                    i32.and
                    i32.store
                    local.get 9
                    local.get 9
                    i32.load
                    i32.const 2
                    i32.or
                    local.tee 1
                    i32.store
                  end
                  local.get 9
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store
                end
                local.get 9
                i32.const 8
                i32.add
                local.set 6
                br 5 (;@1;)
              end
              local.get 1
              local.get 9
              i32.const -2
              i32.and
              i32.store offset=8
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load offset=4
                  i32.const -4
                  i32.and
                  local.tee 9
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 9
                  br 1 (;@6;)
                end
                i32.const 0
                local.get 9
                local.get 9
                i32.load8_u
                i32.const 1
                i32.and
                select
                local.set 9
              end
              local.get 1
              call $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17hd3ffaf12bd1197f5E
              local.get 1
              i32.load8_u
              i32.const 2
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 9
              local.get 9
              i32.load
              i32.const 2
              i32.or
              i32.store
              br 1 (;@4;)
            end
            local.get 2
            local.get 9
            i32.store
            br 2 (;@2;)
          end
          local.get 2
          local.get 9
          i32.store
          local.get 9
          local.set 1
          br 0 (;@3;)
        end
      end
    end
    local.get 6)
  (func $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17hd3ffaf12bd1197f5E (type 9) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const -4
      i32.and
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      local.get 1
      i32.const 2
      i32.and
      select
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.load offset=4
      i32.const 3
      i32.and
      local.get 0
      i32.load offset=4
      i32.const -4
      i32.and
      i32.or
      i32.store offset=4
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -4
      i32.and
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 2
      i32.load
      i32.const 3
      i32.and
      local.get 0
      i32.load
      i32.const -4
      i32.and
      i32.or
      i32.store
      local.get 0
      i32.load offset=4
      local.set 1
    end
    local.get 0
    local.get 1
    i32.const 3
    i32.and
    i32.store offset=4
    local.get 0
    local.get 0
    i32.load
    i32.const 3
    i32.and
    i32.store)
  (func $_ZN4core3ptr48drop_in_place$LT$wee_alloc..LargeAllocPolicy$GT$17h8bbe655bd9d0332cE (type 9) (param i32))
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h0d8e43019cf20f49E (type 2) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 2
        i32.shl
        local.tee 2
        local.get 3
        i32.const 3
        i32.shl
        i32.const 16384
        i32.add
        local.tee 3
        local.get 2
        local.get 3
        i32.gt_u
        select
        i32.const 65543
        i32.add
        local.tee 4
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 3
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const 16
      i32.shl
      local.tee 3
      i64.const 0
      i64.store
      i32.const 0
      local.set 2
      local.get 3
      i32.const 0
      i32.store offset=8
      local.get 3
      local.get 3
      local.get 4
      i32.const -65536
      i32.and
      i32.add
      i32.const 2
      i32.or
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h79b6c72fcf99487dE (type 1) (param i32 i32) (result i32)
    i32.const 512)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h407226cb09583f57E (type 3) (param i32) (result i32)
    i32.const 1)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h179a24b218457674E (type 1) (param i32 i32) (result i32)
    local.get 1)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h35125b7be1215a0bE (type 3) (param i32) (result i32)
    i32.const 0)
  (func $_ZN4core3ptr66drop_in_place$LT$wee_alloc..size_classes..SizeClassAllocPolicy$GT$17h1be1a6a970d45f4cE (type 9) (param i32))
  (func $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17heba328f154c73eb5E (type 2) (param i32 i32 i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    i32.const -8
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const -2
    i32.and
    i32.store
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.load offset=20
      call_indirect (type 3)
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const -4
          i32.add
          i32.load
          i32.const -4
          i32.and
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 0
          call $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17hd3ffaf12bd1197f5E
          local.get 0
          i32.load8_u
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 2
          i32.load
          i32.const 2
          i32.or
          i32.store
          return
        end
        local.get 0
        i32.load
        local.tee 2
        i32.const -4
        i32.and
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.get 3
        local.get 2
        i32.const 2
        i32.and
        select
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load8_u
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.load offset=8
        i32.const -4
        i32.and
        i32.store
        local.get 2
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=8
      end
      return
    end
    local.get 4
    local.get 1
    i32.load
    i32.store
    local.get 1
    local.get 0
    i32.store)
  (func $_ZN17compiler_builtins3mem6memcpy17hc7cd6018de877557E (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 15
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 24
          i32.and
          local.set 2
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
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
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17hc7cd6018de877557E)
  (table (;0;) 13 13 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1050364))
  (global (;2;) i32 (i32.const 1050368))
  (export "memory" (memory 0))
  (export "greet" (func $greet))
  (export "greeting" (func $greeting))
  (export "allocate" (func $allocate))
  (export "deallocate" (func $deallocate))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h1de381c7fe17233bE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb15fe0cb47bd378bE $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hb157a09373bf5ee3E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h02851016e297d883E $_ZN4core3ptr66drop_in_place$LT$wee_alloc..size_classes..SizeClassAllocPolicy$GT$17h1be1a6a970d45f4cE $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17ha6fc2c180c252835E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h179a24b218457674E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h35125b7be1215a0bE $_ZN4core3ptr48drop_in_place$LT$wee_alloc..LargeAllocPolicy$GT$17h8bbe655bd9d0332cE $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h0d8e43019cf20f49E $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h79b6c72fcf99487dE $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h407226cb09583f57E)
  (data $.rodata (i32.const 1048576) "wasm >> !Hello, attempt to join into collection with len > usize::MAX/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/alloc/src/str.rs\00\00\00E\00\10\00H\00\00\00\ab\00\00\00\0a\00\00\00E\00\10\00H\00\00\00\c2\00\00\00\16\00\00\00assertion failed: mid <= self.len()library/alloc/src/raw_vec.rscapacity overflow\ef\00\10\00\11\00\00\00\d3\00\10\00\1c\00\00\00\06\02\00\00\05\00\00\00\03\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\c4\02\10\00\00\00\00\00)00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899source slice length () does not match destination slice length (\00\00\00\f9\01\10\00\15\00\00\00\0e\02\10\00+\00\00\000\01\10\00\01\00\00\00called `Option::unwrap()` on a `None` valuelibrary/std/src/panicking.rs\00\7f\02\10\00\1c\00\00\00G\02\00\00\1e\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\00\00\00\00\01\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00"))
