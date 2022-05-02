(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $runtime.fd_write (type 0)))
  (func $__wasm_call_ctors (type 1))
  (func $runtime.alloc (type 2) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=65704
    local.tee 1
    local.get 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 2
    i32.add
    local.tee 0
    i32.store offset=65704
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 0
          i32.load offset=65716
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 0
            local.get 2
            i32.ge_u
            br_if 3 (;@1;)
            local.get 1
            local.get 0
            i32.add
            i32.const 0
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            memory.size
            memory.grow
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            memory.size
            i32.const 16
            i32.shl
            i32.store offset=65716
            br 1 (;@3;)
          end
          i32.const 65536
          i32.const 13
          call $runtime.runtimePanic
        end
        i32.const 0
        i32.load offset=65704
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 1)
  (func $runtime.runtimePanic (type 3) (param i32 i32)
    i32.const 65549
    i32.const 22
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printstring
    call $runtime.printnl
    unreachable
    unreachable)
  (func $runtime.printstring (type 3) (param i32 i32)
    local.get 1
    i32.const 0
    local.get 1
    i32.const 0
    i32.gt_s
    select
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load8_u
        call $runtime.putchar
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end)
  (func $runtime.printnl (type 1)
    i32.const 10
    call $runtime.putchar)
  (func $runtime.putchar (type 4) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=65720
      local.tee 1
      i32.const 119
      i32.le_u
      br_if 0 (;@1;)
      call $runtime.lookupPanic
      unreachable
    end
    i32.const 0
    local.get 1
    i32.const 1
    i32.add
    local.tee 2
    i32.store offset=65720
    local.get 1
    i32.const 65724
    i32.add
    local.get 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 119
        i32.ne
        br_if 1 (;@1;)
      end
      i32.const 0
      local.get 2
      i32.store offset=65712
      i32.const 1
      i32.const 65708
      i32.const 1
      i32.const 65844
      call $runtime.fd_write
      drop
      i32.const 0
      i32.const 0
      i32.store offset=65720
    end)
  (func $runtime.lookupPanic (type 1)
    i32.const 65571
    i32.const 18
    call $runtime.runtimePanic)
  (func $malloc (type 2) (param i32) (result i32)
    local.get 0
    call $runtime.alloc)
  (func $free (type 4) (param i32))
  (func $calloc (type 5) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.mul
    call $runtime.alloc)
  (func $realloc (type 5) (param i32 i32) (result i32)
    i32.const 65589
    i32.const 22
    call $runtime.runtimePanic
    i32.const 0)
  (func $posix_memalign (type 6) (param i32 i32 i32) (result i32)
    i32.const 65611
    i32.const 29
    call $runtime.runtimePanic
    i32.const 0)
  (func $aligned_alloc (type 5) (param i32 i32) (result i32)
    i32.const 65640
    i32.const 28
    call $runtime.runtimePanic
    i32.const 0)
  (func $malloc_usable_size (type 2) (param i32) (result i32)
    i32.const 65668
    i32.const 33
    call $runtime.runtimePanic
    i32.const 0)
  (func $_start (type 1)
    (local i32)
    memory.size
    local.set 0
    i32.const 0
    i32.const 65863
    i32.const -16
    i32.and
    i32.store offset=65704
    i32.const 0
    local.get 0
    i32.const 16
    i32.shl
    i32.store offset=65716
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=65716
    call $__wasm_call_ctors)
  (func $fibonacci (type 2) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.add
        return
      end
      local.get 0
      i32.const -1
      i32.add
      call $fibonacci
      local.get 1
      i32.add
      local.set 1
      local.get 0
      i32.const -2
      i32.add
      local.set 0
      br 0 (;@1;)
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 65536))
  (export "memory" (memory 0))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "calloc" (func $calloc))
  (export "realloc" (func $realloc))
  (export "posix_memalign" (func $posix_memalign))
  (export "aligned_alloc" (func $aligned_alloc))
  (export "malloc_usable_size" (func $malloc_usable_size))
  (export "_start" (func $_start))
  (export "fibonacci" (func $fibonacci))
  (data (;0;) (i32.const 65536) "out of memorypanic: runtime error: index out of rangeunimplemented: reallocunimplemented: posix_memalignunimplemented: aligned_allocunimplemented: malloc_usable_size")
  (data (;1;) (i32.const 65704) "8\01\01\00\bc\00\01\00\00\00\00\00"))
