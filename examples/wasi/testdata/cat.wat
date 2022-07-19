(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i64 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32 i64 i64 i32 i32) (result i32)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32) (result f64)))
  (type (;15;) (func (param i32 i32 i32) (result i64)))
  (type (;16;) (func (param i32 i64 i64 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i64 i64 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i32 i64)))
  (type (;22;) (func (param i32 i32 i32 i64 i64)))
  (type (;23;) (func (param i32 i64 i32)))
  (type (;24;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;25;) (func (param i32 i64 i32) (result i64)))
  (type (;26;) (func (param i32 i32 i32 i32 i64 i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $runtime.fd_write (type 0)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $runtime.clock_time_get (type 1)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $runtime.args_sizes_get (type 2)))
  (import "wasi_snapshot_preview1" "args_get" (func $runtime.args_get (type 2)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $runtime.proc_exit (type 3)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type 2)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type 2)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type 4)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type 2)))
  (import "wasi_snapshot_preview1" "fd_filestat_get" (func $__imported_wasi_snapshot_preview1_fd_filestat_get (type 2)))
  (import "wasi_snapshot_preview1" "fd_prestat_get" (func $__imported_wasi_snapshot_preview1_fd_prestat_get (type 2)))
  (import "wasi_snapshot_preview1" "fd_prestat_dir_name" (func $__imported_wasi_snapshot_preview1_fd_prestat_dir_name (type 5)))
  (import "wasi_snapshot_preview1" "fd_read" (func $__imported_wasi_snapshot_preview1_fd_read (type 0)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type 6)))
  (import "wasi_snapshot_preview1" "path_open" (func $__imported_wasi_snapshot_preview1_path_open (type 7)))
  (func $__wasm_call_ctors (type 8)
    call $__wasilibc_populate_preopens)
  (func $undefined_weak:__wasilibc_find_relpath_alloc (type 9) (param i32 i32 i32 i32 i32) (result i32)
    unreachable)
  (func $_reflect.Value_.pointer (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_reflect.Value_.isIndirect
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_reflect.Value_.isIndirect (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 1
    i32.and)
  (func $_reflect.Value_.Kind (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 0
    i32.const 1
    i32.shr_u
    local.tee 3
    i32.const 7
    i32.and
    i32.const 19
    i32.add
    local.get 3
    i32.const 31
    i32.and
    local.get 0
    i32.const 1
    i32.and
    select)
  (func $_reflect.Value_.Index (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 136
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    i64.const 0
    i64.store
    local.get 5
    i32.const 8
    i32.add
    local.get 3
    i32.store8
    local.get 5
    i64.const 0
    i64.store
    local.get 5
    i64.const 85899345920
    i64.store offset=136
    local.get 5
    i64.const 0
    i64.store offset=216
    local.get 5
    i64.const 0
    i64.store offset=208
    local.get 5
    i64.const 0
    i64.store offset=200
    local.get 5
    i64.const 0
    i64.store offset=192
    local.get 5
    i64.const 0
    i64.store offset=184
    local.get 5
    i64.const 0
    i64.store offset=176
    local.get 5
    i64.const 0
    i64.store offset=168
    local.get 5
    i64.const 0
    i64.store offset=160
    local.get 5
    i64.const 0
    i64.store offset=152
    i32.const 0
    i32.load offset=68120
    local.set 7
    i32.const 0
    local.get 5
    i32.const 136
    i32.add
    i32.store offset=68120
    local.get 5
    local.get 1
    i32.store
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 6
    local.get 5
    i32.store
    local.get 5
    local.get 7
    i32.store offset=136
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    local.get 2
                    local.get 3
                    call $_reflect.Value_.Kind
                    i32.const -17
                    i32.add
                    br_table 1 (;@7;) 5 (;@3;) 5 (;@3;) 5 (;@3;) 5 (;@3;) 0 (;@8;) 2 (;@6;) 5 (;@3;)
                  end
                  local.get 5
                  i32.const 160
                  i32.add
                  local.get 2
                  i32.load
                  local.tee 6
                  i32.store
                  local.get 5
                  i32.const 152
                  i32.add
                  local.get 6
                  i32.store
                  local.get 5
                  local.get 2
                  i32.load offset=4
                  local.tee 8
                  i32.store offset=20
                  local.get 5
                  local.get 2
                  i32.load offset=8
                  i32.store offset=24
                  local.get 5
                  i32.const 148
                  i32.add
                  local.get 5
                  i32.const 16
                  i32.add
                  i32.store
                  local.get 5
                  local.get 6
                  i32.store offset=16
                  local.get 8
                  local.get 4
                  i32.le_u
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 40
                  i32.add
                  local.tee 2
                  i32.const 0
                  i32.store8
                  local.get 5
                  i64.const 0
                  i64.store offset=32
                  local.get 5
                  i32.const 156
                  i32.add
                  local.get 5
                  i32.const 32
                  i32.add
                  i32.store
                  local.get 1
                  call $_reflect.rawType_.elem
                  local.set 1
                  local.get 2
                  local.get 3
                  i32.const 1
                  i32.or
                  local.tee 3
                  i32.store8
                  local.get 5
                  local.get 1
                  i32.store offset=32
                  local.get 5
                  local.get 6
                  local.get 1
                  call $_reflect.rawType_.Size
                  local.get 4
                  i32.mul
                  i32.add
                  local.tee 4
                  i32.store offset=36
                  br 6 (;@1;)
                end
                local.get 5
                i32.const 176
                i32.add
                local.get 2
                i32.load
                local.tee 1
                i32.store
                local.get 5
                i32.const 168
                i32.add
                local.get 1
                i32.store
                local.get 5
                local.get 2
                i32.load offset=4
                local.tee 3
                i32.store offset=52
                local.get 5
                i32.const 164
                i32.add
                local.get 5
                i32.const 48
                i32.add
                i32.store
                local.get 5
                local.get 1
                i32.store offset=48
                local.get 3
                local.get 4
                i32.le_u
                br_if 2 (;@4;)
                i32.const 0
                local.set 3
                local.get 5
                i32.const 64
                i32.add
                i32.const 0
                i32.store8
                local.get 5
                i64.const 0
                i64.store offset=56
                local.get 5
                i32.const 172
                i32.add
                local.get 5
                i32.const 56
                i32.add
                i32.store
                local.get 5
                i32.const 180
                i32.add
                local.get 1
                local.get 4
                i32.add
                i32.load8_u
                local.tee 4
                i32.store
                local.get 5
                local.get 4
                i32.store offset=60
                i32.const 16
                local.set 1
                local.get 5
                i32.const 16
                i32.store offset=56
                br 5 (;@1;)
              end
              local.get 1
              call $_reflect.rawType_.elem
              call $_reflect.rawType_.Size
              local.set 6
              local.get 1
              call $_reflect.rawType_.Size
              local.tee 8
              br_if 3 (;@2;)
              i32.const 0
              local.set 4
              local.get 5
              i32.const 80
              i32.add
              local.tee 2
              i32.const 0
              i32.store8
              local.get 5
              i64.const 0
              i64.store offset=72
              local.get 5
              i32.const 184
              i32.add
              local.get 5
              i32.const 72
              i32.add
              i32.store
              local.get 1
              call $_reflect.rawType_.elem
              local.set 1
              local.get 2
              local.get 3
              i32.store8
              local.get 5
              local.get 1
              i32.store offset=72
              br 4 (;@1;)
            end
            i32.const 34
            i32.const 65824
            call $runtime._panic
            unreachable
          end
          i32.const 34
          i32.const 65872
          call $runtime._panic
          unreachable
        end
        local.get 5
        i32.const 200
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 3
        i32.store
        local.get 5
        i32.const 204
        i32.add
        local.get 3
        i32.store
        local.get 3
        i32.const 5
        i32.store offset=4
        local.get 3
        i32.const 65880
        i32.store
        i32.const 9189
        local.get 3
        call $runtime._panic
        unreachable
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 8
            i32.const 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            local.get 3
            call $_reflect.Value_.isIndirect
            i32.const 1
            i32.and
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 2
          local.get 6
          local.get 4
          i32.mul
          i32.add
          local.set 4
          block  ;; label = @4
            local.get 1
            local.get 2
            local.get 3
            call $_reflect.Value_.isIndirect
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 5
            i32.const 196
            i32.add
            local.get 4
            local.get 6
            call $reflect.loadValue
            local.tee 4
            i32.store
          end
          local.get 5
          i32.const 188
          i32.add
          local.get 4
          i32.store
          local.get 5
          i32.const 112
          i32.add
          local.tee 2
          i32.const 0
          i32.store8
          local.get 5
          i64.const 0
          i64.store offset=104
          local.get 5
          i32.const 192
          i32.add
          local.get 5
          i32.const 104
          i32.add
          i32.store
          local.get 1
          call $_reflect.rawType_.elem
          local.set 1
          local.get 2
          local.get 3
          i32.store8
          local.get 5
          local.get 1
          i32.store offset=104
          local.get 5
          local.get 4
          i32.store offset=108
          br 2 (;@1;)
        end
        local.get 5
        i32.const 96
        i32.add
        local.tee 8
        i32.const 0
        i32.store8
        local.get 5
        i64.const 0
        i64.store offset=88
        local.get 5
        i32.const 212
        i32.add
        local.get 5
        i32.const 88
        i32.add
        i32.store
        local.get 1
        call $_reflect.rawType_.elem
        local.set 1
        local.get 8
        local.get 3
        i32.store8
        local.get 5
        local.get 1
        i32.store offset=88
        local.get 5
        local.get 2
        local.get 6
        local.get 4
        i32.mul
        i32.add
        local.tee 4
        i32.store offset=92
        br 1 (;@1;)
      end
      local.get 2
      local.get 6
      local.get 4
      i32.mul
      local.get 6
      call $reflect.maskAndShift
      local.set 4
      local.get 5
      i32.const 128
      i32.add
      local.tee 2
      i32.const 0
      i32.store8
      local.get 5
      i64.const 0
      i64.store offset=120
      local.get 5
      i32.const 216
      i32.add
      local.get 5
      i32.const 120
      i32.add
      i32.store
      local.get 1
      call $_reflect.rawType_.elem
      local.set 1
      local.get 2
      local.get 3
      i32.store8
      local.get 5
      i32.const 220
      i32.add
      local.get 4
      i32.store
      local.get 5
      local.get 1
      i32.store offset=120
      local.get 5
      local.get 4
      i32.store offset=124
    end
    i32.const 0
    local.get 7
    i32.store offset=68120
    local.get 5
    i32.const 208
    i32.add
    local.get 4
    i32.store
    local.get 0
    local.get 3
    i32.store8 offset=8
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 5
    i32.const 224
    i32.add
    global.set $__stack_pointer)
  (func $_reflect.rawType_.elem (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=28
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 1
            i32.shr_u
            local.tee 3
            i32.const 7
            i32.and
            i32.const 19
            i32.add
            local.get 3
            i32.const 31
            i32.and
            local.get 0
            i32.const 1
            i32.and
            select
            i32.const -19
            i32.add
            br_table 0 (;@4;) 3 (;@1;) 0 (;@4;) 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 0
          call $_reflect.rawType_.stripPrefix
          local.set 0
          br 1 (;@2;)
        end
        local.get 1
        i32.const 24
        i32.add
        local.get 0
        call $_reflect.rawType_.stripPrefix
        i32.const 67096
        i32.add
        local.tee 0
        i32.store
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        call $reflect.readVarint
        local.get 1
        i32.const 28
        i32.add
        local.get 1
        i32.load offset=12
        i32.store
        local.get 1
        i32.load offset=8
        local.set 0
      end
      i32.const 0
      local.get 2
      i32.store offset=68120
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 34
    i32.const 65664
    call $runtime._panic
    unreachable)
  (func $_reflect.rawType_.Size (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=108
    local.get 1
    i64.const 0
    i64.store offset=100 align=4
    local.get 1
    i64.const 4
    i64.store offset=92 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 88
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=88
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      local.tee 4
                      i32.const 7
                      i32.and
                      i32.const 19
                      i32.add
                      local.get 4
                      i32.const 31
                      i32.and
                      local.get 0
                      i32.const 1
                      i32.and
                      select
                      i32.const -1
                      i32.add
                      br_table 7 (;@2;) 2 (;@7;) 7 (;@2;) 0 (;@9;) 2 (;@7;) 4 (;@5;) 2 (;@7;) 7 (;@2;) 0 (;@9;) 2 (;@7;) 4 (;@5;) 2 (;@7;) 2 (;@7;) 4 (;@5;) 4 (;@5;) 1 (;@8;) 4 (;@5;) 2 (;@7;) 2 (;@7;) 4 (;@5;) 2 (;@7;) 3 (;@6;) 5 (;@4;) 4 (;@5;) 2 (;@7;) 6 (;@3;) 8 (;@1;)
                    end
                    i32.const 2
                    local.set 3
                    br 6 (;@2;)
                  end
                  i32.const 16
                  local.set 3
                  br 5 (;@2;)
                end
                i32.const 4
                local.set 3
                br 4 (;@2;)
              end
              i32.const 12
              local.set 3
              br 3 (;@2;)
            end
            i32.const 8
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          call $_reflect.rawType_.elem
          call $_reflect.rawType_.Size
          local.get 0
          call $_reflect.rawType_.Len
          i32.mul
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        local.set 3
        local.get 0
        call $_reflect.rawType_.NumField
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.tee 3
        i64.const 0
        i64.store
        local.get 1
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        local.tee 5
        i64.const 0
        i64.store
        local.get 1
        i32.const 69
        i32.add
        i64.const 0
        i64.store align=1
        local.get 1
        i64.const 0
        i64.store offset=48
        local.get 1
        i32.const 88
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i32.const 48
        i32.add
        i32.store
        local.get 1
        i32.const 0
        i32.store offset=80
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        local.get 4
        i32.const -1
        i32.add
        call $_reflect.rawType_.rawField
        local.get 1
        i32.const 108
        i32.add
        local.get 1
        i32.load offset=28
        local.tee 4
        i32.store
        local.get 1
        i32.const 88
        i32.add
        i32.const 16
        i32.add
        local.get 1
        i32.load offset=16
        local.tee 6
        i32.store
        local.get 1
        i32.const 88
        i32.add
        i32.const 12
        i32.add
        local.get 1
        i32.load offset=8
        local.tee 7
        i32.store
        local.get 1
        i32.const 72
        i32.add
        local.get 1
        i32.load offset=32
        i32.store
        local.get 5
        local.get 1
        i32.load offset=24
        local.tee 8
        i32.store
        local.get 1
        i32.const 48
        i32.add
        i32.const 12
        i32.add
        local.get 1
        i32.load offset=20
        i32.store
        local.get 3
        local.get 6
        i32.store
        local.get 1
        local.get 1
        i32.load offset=40
        local.tee 3
        i32.store offset=80
        local.get 1
        local.get 4
        i32.store offset=68
        local.get 1
        local.get 1
        i32.load offset=12
        i32.store offset=52
        local.get 1
        local.get 7
        i32.store offset=48
        local.get 1
        local.get 1
        i32.load8_u offset=36
        i32.const 1
        i32.and
        i32.store8 offset=76
        local.get 3
        local.get 8
        call $_reflect.rawType_.Size
        i32.add
        local.get 0
        call $_reflect.rawType_.Align
        local.tee 0
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        i32.and
        local.set 3
      end
      i32.const 0
      local.get 2
      i32.store offset=68120
      local.get 1
      i32.const 112
      i32.add
      global.set $__stack_pointer
      local.get 3
      return
    end
    i32.const 34
    i32.const 65616
    call $runtime._panic
    unreachable)
  (func $runtime._panic (type 11) (param i32 i32)
    i32.const 66208
    i32.const 7
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printitf
    call $runtime.printnl
    unreachable
    unreachable)
  (func $runtime.alloc (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 68116
      return
    end
    local.get 0
    i32.const 15
    i32.add
    i32.const 4
    i32.shr_u
    local.set 1
    i32.const 68272
    i32.const -4
    i32.and
    local.set 2
    i32.const 0
    i32.load offset=68108
    local.tee 3
    local.set 4
    i32.const 0
    local.set 5
    i32.const 0
    local.set 6
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          local.get 3
          i32.ne
          br_if 0 (;@3;)
          i32.const 1
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 255
              i32.and
              br_table 3 (;@2;) 0 (;@5;) 1 (;@4;)
            end
            i32.const 68120
            local.set 7
            block  ;; label = @5
              loop  ;; label = @6
                local.get 7
                i32.load
                local.tee 7
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 8
                i32.add
                local.tee 6
                local.get 6
                local.get 7
                i32.load offset=4
                i32.const 2
                i32.shl
                i32.add
                call $runtime.markRoots
                br 0 (;@6;)
              end
            end
            i32.const 65536
            local.get 2
            call $runtime.markRoots
            loop  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load8_u offset=68117
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                i32.const 0
                local.set 7
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.const 0
                    i32.load offset=68112
                    i32.lt_u
                    br_if 0 (;@8;)
                    i32.const 2
                    local.set 7
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 7
                          call $_runtime.gcBlock_.state
                          i32.const 255
                          i32.and
                          i32.const -1
                          i32.add
                          br_table 1 (;@10;) 0 (;@11;) 2 (;@9;) 3 (;@8;)
                        end
                        local.get 6
                        i32.const 1
                        i32.and
                        local.set 3
                        i32.const 0
                        local.set 6
                        local.get 3
                        i32.eqz
                        br_if 2 (;@8;)
                      end
                      local.get 7
                      call $_runtime.gcBlock_.markFree
                      i32.const 1
                      local.set 6
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 6
                    i32.const 0
                    i32.load offset=68104
                    local.get 7
                    i32.const 2
                    i32.shr_u
                    i32.add
                    local.tee 3
                    local.get 3
                    i32.load8_u
                    i32.const 2
                    local.get 7
                    i32.const 1
                    i32.shl
                    i32.const 6
                    i32.and
                    i32.shl
                    i32.const -1
                    i32.xor
                    i32.and
                    i32.store8
                  end
                  local.get 7
                  i32.const 1
                  i32.add
                  local.set 7
                  br 0 (;@7;)
                end
              end
              i32.const 0
              local.set 7
              i32.const 0
              i32.const 0
              i32.store8 offset=68117
              loop  ;; label = @6
                local.get 7
                i32.const 0
                i32.load offset=68112
                i32.ge_u
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  call $_runtime.gcBlock_.state
                  i32.const 255
                  i32.and
                  i32.const 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 7
                  call $runtime.startMark
                end
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                br 0 (;@6;)
              end
            end
          end
          block  ;; label = @4
            memory.size
            memory.grow
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            memory.size
            local.set 7
            i32.const 0
            i32.load offset=67976
            local.set 3
            i32.const 0
            local.get 7
            i32.const 16
            i32.shl
            i32.store offset=67976
            i32.const 0
            i32.load offset=68104
            local.set 7
            call $runtime.calculateHeapAddresses
            i32.const 0
            i32.load offset=68104
            local.get 7
            local.get 3
            local.get 7
            i32.sub
            call $memcpy
            drop
            br 1 (;@3;)
          end
          i32.const 66149
          i32.const 13
          call $runtime.runtimePanic
          unreachable
        end
        local.get 6
        local.set 7
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          local.get 4
          local.get 4
          i32.const 0
          i32.load offset=68112
          i32.eq
          local.tee 3
          select
          local.tee 6
          call $_runtime.gcBlock_.state
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 1
          i32.add
          local.set 4
          i32.const 0
          local.set 5
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 4
        i32.const 1
        local.get 5
        i32.const 1
        i32.add
        local.get 3
        select
        local.tee 5
        local.get 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 4
        i32.store offset=68108
        local.get 4
        local.get 1
        i32.sub
        local.tee 4
        i32.const 1
        call $_runtime.gcBlock_.setState
        local.get 6
        local.get 1
        i32.sub
        i32.const 2
        i32.add
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 7
            i32.const 0
            i32.load offset=68108
            i32.eq
            br_if 1 (;@3;)
            local.get 7
            i32.const 2
            call $_runtime.gcBlock_.setState
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 0 (;@4;)
          end
        end
        i32.const 0
        i32.load offset=67608
        local.get 4
        i32.const 4
        i32.shl
        i32.add
        i32.const 0
        local.get 0
        call $memset
        return
      end
      i32.const 0
      i32.load offset=68108
      local.set 3
      local.get 7
      local.set 6
      br 0 (;@1;)
    end)
  (func $reflect.loadValue (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.get 0
        i32.load8_u
        local.get 3
        i32.shl
        local.get 3
        i32.const 31
        i32.gt_u
        select
        local.get 2
        i32.or
        local.set 2
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 2)
  (func $reflect.maskAndShift (type 5) (param i32 i32 i32) (result i32)
    i32.const 0
    i32.const -1
    i32.const 32
    local.get 2
    i32.const 3
    i32.shl
    local.tee 2
    i32.sub
    i32.shr_u
    i32.const 0
    local.get 2
    i32.sub
    i32.const -32
    i32.lt_u
    select
    i32.const 0
    local.get 0
    local.get 1
    i32.const 3
    i32.shl
    local.tee 2
    i32.shr_u
    local.get 2
    i32.const 31
    i32.gt_u
    select
    i32.and)
  (func $_reflect.Value_.Pointer (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.store8
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=44
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 4
    i32.store offset=28
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.Kind
                local.tee 5
                i32.const 25
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 1
                local.get 5
                i32.shl
                i32.const 36438016
                i32.and
                br_if 2 (;@4;)
                local.get 5
                i32.const 22
                i32.eq
                br_if 1 (;@5;)
                local.get 5
                i32.const 24
                i32.eq
                br_if 3 (;@3;)
              end
              local.get 3
              i32.const 40
              i32.add
              i32.const 8
              call $runtime.alloc
              local.tee 1
              i32.store
              local.get 3
              i32.const 44
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.const 7
              i32.store offset=4
              local.get 1
              i32.const 65936
              i32.store
              i32.const 9189
              local.get 1
              call $runtime._panic
              unreachable
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.load
            local.set 1
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          call $_reflect.Value_.pointer
          local.set 1
          br 2 (;@1;)
        end
        i32.const 34
        i32.const 65928
        call $runtime._panic
        unreachable
      end
      call $runtime.nilPanic
      unreachable
    end
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $runtime.nilPanic (type 8)
    i32.const 66237
    i32.const 23
    call $runtime.runtimePanic
    unreachable)
  (func $_reflect.Value_.Elem (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.store8
    local.get 4
    i64.const 0
    i64.store offset=8
    local.get 4
    i64.const 0
    i64.store offset=116 align=4
    local.get 4
    i64.const 0
    i64.store offset=108 align=4
    local.get 4
    i64.const 0
    i64.store offset=100 align=4
    local.get 4
    i64.const 0
    i64.store offset=92 align=4
    local.get 4
    i64.const 0
    i64.store offset=84 align=4
    local.get 4
    i32.const 11
    i32.store offset=76
    local.get 4
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 5
    i32.const 0
    local.get 4
    i32.const 72
    i32.add
    i32.store offset=68120
    local.get 4
    local.get 5
    i32.store offset=72
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 2
              local.get 3
              call $_reflect.Value_.Kind
              i32.const -20
              i32.add
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;)
            end
            local.get 4
            i32.const 84
            i32.add
            local.get 1
            local.get 2
            local.get 3
            call $_reflect.Value_.pointer
            local.tee 2
            i32.store
            local.get 4
            i32.const 96
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 4
            i32.const 48
            i32.add
            local.tee 6
            i32.const 0
            i32.store8
            local.get 4
            i64.const 0
            i64.store offset=40
            local.get 4
            i32.const 92
            i32.add
            local.get 4
            i32.const 40
            i32.add
            i32.store
            local.get 1
            call $_reflect.rawType_.elem
            local.set 1
            local.get 6
            local.get 3
            i32.const 1
            i32.or
            local.tee 3
            i32.store8
            local.get 4
            local.get 2
            i32.store offset=44
            local.get 4
            local.get 1
            i32.store offset=40
            br 3 (;@1;)
          end
          local.get 4
          i32.const 100
          i32.add
          i32.const 8
          call $runtime.alloc
          local.tee 2
          i32.store
          local.get 4
          i32.const 104
          i32.add
          local.get 2
          i32.store
          local.get 2
          i32.const 4
          i32.store offset=4
          local.get 2
          i32.const 65776
          i32.store
          i32.const 9189
          local.get 2
          call $runtime._panic
          unreachable
        end
        local.get 4
        i32.const 108
        i32.add
        local.get 2
        i32.load offset=4
        local.tee 1
        i32.store
        local.get 4
        local.get 2
        i32.load
        local.get 1
        call $runtime.decomposeInterface
        local.get 4
        i32.const 56
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 254
        i32.and
        local.tee 3
        i32.store8
        local.get 4
        i32.const 120
        i32.add
        local.get 4
        i32.load offset=4
        local.tee 2
        i32.store
        local.get 4
        i32.const 112
        i32.add
        local.get 2
        i32.store
        local.get 4
        i64.const 0
        i64.store offset=56
        local.get 4
        i32.const 116
        i32.add
        local.get 4
        i32.const 56
        i32.add
        i32.store
        local.get 4
        local.get 4
        i32.load
        local.tee 1
        i32.store offset=56
        local.get 4
        local.get 2
        i32.store offset=60
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      local.get 4
      i32.const 32
      i32.add
      i32.const 0
      i32.store8
      local.get 4
      i64.const 0
      i64.store offset=24
      local.get 4
      i32.const 88
      i32.add
      local.get 4
      i32.const 24
      i32.add
      i32.store
      i32.const 0
      local.set 2
      i32.const 0
      local.set 3
    end
    i32.const 0
    local.get 5
    i32.store offset=68120
    local.get 0
    local.get 3
    i32.store8 offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 128
    i32.add
    global.set $__stack_pointer)
  (func $runtime.decomposeInterface (type 13) (param i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_reflect.Value_.Field (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 160
    i32.add
    i32.const 12
    i32.add
    local.tee 6
    i64.const 0
    i64.store align=4
    local.get 5
    i32.const 188
    i32.add
    local.tee 7
    i64.const 0
    i64.store align=4
    local.get 5
    i32.const 180
    i32.add
    local.tee 8
    i64.const 0
    i64.store align=4
    local.get 5
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.store8
    local.get 5
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    local.tee 9
    i64.const 0
    i64.store
    local.get 5
    i32.const 56
    i32.add
    i32.const 16
    i32.add
    local.tee 10
    i64.const 0
    i64.store
    local.get 5
    i32.const 77
    i32.add
    i64.const 0
    i64.store align=1
    local.get 5
    i64.const 0
    i64.store offset=40
    local.get 5
    i64.const 0
    i64.store offset=212 align=4
    local.get 5
    i64.const 0
    i64.store offset=204 align=4
    local.get 5
    i64.const 0
    i64.store offset=196 align=4
    local.get 5
    i32.const 13
    i32.store offset=164
    local.get 5
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i32.const 40
    i32.add
    i32.store
    local.get 5
    i32.const 0
    i32.store offset=88
    local.get 5
    i64.const 0
    i64.store offset=56
    i32.const 0
    i32.load offset=68120
    local.set 11
    i32.const 0
    local.get 5
    i32.const 160
    i32.add
    i32.store offset=68120
    local.get 5
    local.get 11
    i32.store offset=160
    local.get 5
    local.get 2
    i32.store offset=44
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 6
    local.get 5
    i32.const 56
    i32.add
    i32.store
    local.get 5
    local.get 1
    local.get 4
    call $_reflect.rawType_.rawField
    local.get 7
    local.get 5
    i32.load offset=8
    local.tee 6
    i32.store
    local.get 5
    i32.const 160
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i32.load
    local.tee 7
    i32.store
    local.get 5
    i32.const 160
    i32.add
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=20
    local.tee 12
    i32.store
    local.get 8
    local.get 6
    i32.store
    local.get 5
    i32.const 56
    i32.add
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=24
    i32.store
    local.get 10
    local.get 5
    i32.load offset=16
    local.tee 4
    i32.store
    local.get 5
    i32.const 56
    i32.add
    i32.const 12
    i32.add
    local.get 5
    i32.load offset=12
    local.tee 8
    i32.store
    local.get 9
    local.get 6
    i32.store
    local.get 5
    local.get 5
    i32.load offset=32
    local.tee 9
    i32.store offset=88
    local.get 5
    local.get 12
    i32.store offset=76
    local.get 5
    local.get 5
    i32.load offset=4
    i32.store offset=60
    local.get 5
    local.get 7
    i32.store offset=56
    local.get 5
    local.get 5
    i32.load8_u offset=28
    i32.const 1
    i32.and
    i32.store8 offset=84
    local.get 1
    call $_reflect.rawType_.Size
    local.set 10
    local.get 4
    call $_reflect.rawType_.Size
    local.set 7
    local.get 3
    i32.const -3
    i32.and
    local.get 3
    local.get 8
    select
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          local.get 3
          call $_reflect.Value_.isIndirect
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 7
          i32.const 5
          i32.lt_u
          br_if 1 (;@2;)
        end
        local.get 5
        i32.const 96
        i32.add
        i32.const 8
        i32.add
        local.get 6
        i32.store8
        local.get 5
        i64.const 0
        i64.store offset=96
        local.get 5
        i32.const 192
        i32.add
        local.get 5
        i32.const 96
        i32.add
        i32.store
        local.get 5
        local.get 4
        i32.store offset=96
        local.get 5
        local.get 2
        local.get 9
        i32.add
        local.tee 1
        i32.store offset=100
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 7
        br_if 0 (;@2;)
        local.get 5
        i32.const 120
        i32.add
        local.get 6
        i32.store8
        local.get 5
        i64.const 0
        i64.store offset=112
        local.get 5
        i32.const 196
        i32.add
        local.get 5
        i32.const 112
        i32.add
        i32.store
        local.get 5
        local.get 4
        i32.store offset=112
        i32.const 0
        local.set 1
        local.get 5
        i32.const 0
        i32.store offset=116
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.const 152
        i32.add
        local.get 6
        i32.store8
        local.get 5
        i32.const 216
        i32.add
        local.get 2
        local.get 9
        local.get 7
        call $reflect.maskAndShift
        local.tee 1
        i32.store
        local.get 5
        i64.const 0
        i64.store offset=144
        local.get 5
        i32.const 212
        i32.add
        local.get 5
        i32.const 144
        i32.add
        i32.store
        local.get 5
        local.get 4
        i32.store offset=144
        local.get 5
        local.get 1
        i32.store offset=148
        br 1 (;@1;)
      end
      local.get 5
      i32.const 204
      i32.add
      local.get 2
      local.get 9
      i32.add
      local.get 7
      call $reflect.loadValue
      local.tee 1
      i32.store
      i32.const 0
      local.set 6
      local.get 5
      i32.const 136
      i32.add
      i32.const 0
      i32.store8
      local.get 5
      i64.const 0
      i64.store offset=128
      local.get 5
      i32.const 208
      i32.add
      local.get 5
      i32.const 128
      i32.add
      i32.store
      local.get 5
      local.get 4
      i32.store offset=128
      local.get 5
      local.get 1
      i32.store offset=132
    end
    i32.const 0
    local.get 11
    i32.store offset=68120
    local.get 5
    i32.const 200
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 6
    i32.store8 offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 5
    i32.const 224
    i32.add
    global.set $__stack_pointer)
  (func $_reflect.rawType_.rawField (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 68719476736
    i64.store offset=88
    local.get 3
    i64.const 0
    i64.store offset=152
    local.get 3
    i64.const 0
    i64.store offset=144
    local.get 3
    i64.const 0
    i64.store offset=136
    local.get 3
    i64.const 0
    i64.store offset=128
    local.get 3
    i64.const 0
    i64.store offset=120
    local.get 3
    i64.const 0
    i64.store offset=112
    local.get 3
    i64.const 0
    i64.store offset=104
    local.get 3
    i64.const 0
    i64.store offset=96
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 88
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=88
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.shr_u
        local.tee 5
        i32.const 7
        i32.and
        i32.const 19
        i32.add
        local.get 5
        i32.const 31
        i32.and
        local.get 1
        i32.const 1
        i32.and
        select
        i32.const 26
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 88
        i32.add
        i32.const 16
        i32.add
        local.get 1
        call $_reflect.rawType_.stripPrefix
        i32.const 67104
        i32.add
        local.tee 1
        i32.store
        local.get 3
        i32.const 40
        i32.add
        local.get 1
        call $reflect.readVarint
        local.get 3
        i32.const 108
        i32.add
        local.get 3
        i32.load offset=44
        local.tee 1
        i32.store
        local.get 3
        i32.load offset=40
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 56
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i32.const 69
        i32.add
        i64.const 0
        i64.store align=1
        local.get 3
        i32.const 0
        i32.store offset=80
        local.get 3
        i64.const 0
        i64.store offset=48
        local.get 3
        i32.const 112
        i32.add
        local.get 3
        i32.const 48
        i32.add
        i32.store
        local.get 3
        i32.const 152
        i32.add
        local.set 6
        local.get 3
        i32.const 156
        i32.add
        local.set 7
        local.get 3
        i32.const 148
        i32.add
        local.set 8
        local.get 3
        i32.const 120
        i32.add
        local.set 9
        local.get 3
        i32.const 116
        i32.add
        local.set 10
        local.get 3
        i32.const 124
        i32.add
        local.set 11
        local.get 3
        i32.const 128
        i32.add
        local.set 12
        local.get 3
        i32.const 132
        i32.add
        local.set 13
        local.get 3
        i32.const 144
        i32.add
        local.set 14
        local.get 3
        i32.const 136
        i32.add
        local.set 15
        local.get 3
        i32.const 140
        i32.add
        local.set 16
        i32.const 0
        local.set 17
        i32.const 0
        local.set 18
        i32.const 0
        local.set 19
        i32.const 0
        local.set 20
        i32.const 0
        local.set 21
        i32.const 0
        local.set 22
        i32.const 0
        local.set 5
        i32.const 0
        local.set 23
        i32.const 0
        local.set 24
        i32.const 0
        local.set 25
        i32.const 0
        local.set 26
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.get 5
            i32.store
            local.get 7
            local.get 20
            i32.store
            local.get 8
            local.get 24
            i32.store
            local.get 9
            local.get 1
            i32.store
            local.get 10
            local.get 1
            i32.store
            local.get 26
            local.get 2
            i32.gt_s
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 5
            local.get 3
            i32.const 32
            i32.add
            local.get 1
            i32.const 1
            i32.add
            call $reflect.readVarint
            local.get 11
            local.get 3
            i32.load offset=36
            local.tee 1
            i32.store
            local.get 3
            local.get 3
            i32.load offset=32
            local.tee 21
            i32.store offset=64
            i32.const 0
            local.set 20
            local.get 3
            local.get 25
            local.get 21
            call $_reflect.rawType_.Align
            local.tee 24
            i32.add
            i32.const -1
            i32.add
            i32.const 0
            local.get 24
            i32.sub
            i32.and
            local.tee 17
            i32.store offset=80
            local.get 21
            call $_reflect.rawType_.Size
            local.set 25
            local.get 3
            i32.const 24
            i32.add
            local.get 1
            call $reflect.readVarint
            local.get 12
            local.get 3
            i32.load offset=28
            local.tee 1
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.get 3
            i32.load offset=24
            call $reflect.readStringSidetable
            local.get 13
            local.get 3
            i32.load offset=16
            local.tee 24
            i32.store
            local.get 3
            local.get 5
            i32.const 1
            i32.and
            local.tee 18
            i32.store8 offset=76
            local.get 3
            local.get 3
            i32.load offset=20
            local.tee 23
            i32.store offset=52
            local.get 3
            local.get 24
            i32.store offset=48
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.set 19
                br 1 (;@5;)
              end
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              call $reflect.readVarint
              local.get 15
              local.get 3
              i32.load offset=12
              local.tee 1
              i32.store
              local.get 3
              local.get 3
              i32.load offset=8
              call $reflect.readStringSidetable
              local.get 16
              local.get 3
              i32.load
              local.tee 20
              i32.store
              local.get 3
              i32.load offset=4
              local.set 19
            end
            local.get 17
            local.get 25
            i32.add
            local.set 25
            local.get 14
            local.get 1
            i32.store
            local.get 3
            local.get 19
            i32.store offset=72
            local.get 3
            local.get 20
            i32.store offset=68
            local.get 3
            i32.const 0
            i32.const 15
            local.get 5
            i32.const 4
            i32.and
            local.tee 5
            select
            local.tee 22
            i32.store offset=60
            local.get 3
            i32.const 0
            i32.const 65720
            local.get 5
            select
            local.tee 5
            i32.store offset=56
            local.get 26
            i32.const 1
            i32.add
            local.set 26
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.get 4
        i32.store offset=68120
        local.get 0
        local.get 17
        i32.store offset=32
        local.get 0
        local.get 18
        i32.const 1
        i32.and
        i32.store8 offset=28
        local.get 0
        local.get 19
        i32.store offset=24
        local.get 0
        local.get 20
        i32.store offset=20
        local.get 0
        local.get 21
        i32.store offset=16
        local.get 0
        local.get 22
        i32.store offset=12
        local.get 0
        local.get 5
        i32.store offset=8
        local.get 0
        local.get 23
        i32.store offset=4
        local.get 0
        local.get 24
        i32.store
        local.get 3
        i32.const 160
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 3
      i32.const 88
      i32.add
      i32.const 8
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 1
      i32.store
      local.get 3
      i32.const 100
      i32.add
      local.get 1
      i32.store
      local.get 1
      i32.const 5
      i32.store offset=4
      local.get 1
      i32.const 65672
      i32.store
      i32.const 13285
      local.get 1
      call $runtime._panic
      unreachable
    end
    i32.const 34
    i32.const 65712
    call $runtime._panic
    unreachable)
  (func $_reflect.rawType_.Len (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=60
    local.get 1
    i64.const 0
    i64.store offset=52 align=4
    local.get 1
    i64.const 0
    i64.store offset=44 align=4
    local.get 1
    i64.const 6
    i64.store offset=36 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.shr_u
      local.tee 3
      i32.const 7
      i32.and
      i32.const 19
      i32.add
      local.get 3
      i32.const 31
      i32.and
      local.get 0
      i32.const 1
      i32.and
      select
      i32.const 23
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=24
      local.get 1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i32.store
      local.get 1
      i32.const 44
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 0
      i32.store
      local.get 1
      i32.const 48
      i32.add
      local.get 0
      i32.store
      local.get 0
      i32.const 3
      i32.store offset=4
      local.get 0
      i32.const 65576
      i32.store
      i32.const 415
      local.get 0
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 52
    i32.add
    local.get 0
    call $_reflect.rawType_.stripPrefix
    i32.const 67096
    i32.add
    local.tee 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    call $reflect.readVarint
    local.get 1
    i32.const 56
    i32.add
    local.get 1
    i32.load offset=20
    local.tee 0
    i32.store
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $reflect.readVarint
    i32.const 0
    local.get 2
    i32.store offset=68120
    local.get 1
    i32.const 60
    i32.add
    local.get 1
    i32.load offset=12
    i32.store
    local.get 1
    i32.load offset=8
    local.set 0
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_reflect.rawType_.NumField (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=28
    local.get 1
    i64.const 0
    i64.store offset=20 align=4
    local.get 1
    i64.const 4
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.shr_u
      local.tee 3
      i32.const 7
      i32.and
      i32.const 19
      i32.add
      local.get 3
      i32.const 31
      i32.and
      local.get 0
      i32.const 1
      i32.and
      select
      i32.const 26
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 0
      i32.store
      local.get 1
      i32.const 20
      i32.add
      local.get 0
      i32.store
      local.get 0
      i32.const 8
      i32.store offset=4
      local.get 0
      i32.const 65579
      i32.store
      i32.const 13285
      local.get 0
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    call $_reflect.rawType_.stripPrefix
    i32.const 67104
    i32.add
    local.tee 0
    i32.store
    local.get 1
    local.get 0
    call $reflect.readVarint
    i32.const 0
    local.get 2
    i32.store offset=68120
    local.get 1
    i32.const 28
    i32.add
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_reflect.rawType_.Align (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=52 align=4
    local.get 1
    i64.const 3
    i64.store offset=44 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 1
                    i32.shr_u
                    local.tee 3
                    i32.const 7
                    i32.and
                    i32.const 19
                    i32.add
                    local.get 3
                    i32.const 31
                    i32.and
                    local.get 0
                    i32.const 1
                    i32.and
                    select
                    i32.const -1
                    i32.add
                    br_table 0 (;@8;) 2 (;@6;) 0 (;@8;) 1 (;@7;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 0 (;@8;) 1 (;@7;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 2 (;@6;) 4 (;@4;) 2 (;@6;) 2 (;@6;) 3 (;@5;) 6 (;@2;)
                  end
                  i32.const 1
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 2
                local.set 3
                br 5 (;@1;)
              end
              i32.const 4
              local.set 3
              br 4 (;@1;)
            end
            i32.const 0
            local.set 4
            local.get 0
            call $_reflect.rawType_.NumField
            local.tee 3
            i32.const 0
            local.get 3
            i32.const 0
            i32.gt_s
            select
            local.set 5
            local.get 1
            i32.const 56
            i32.add
            local.set 6
            local.get 1
            i32.const 52
            i32.add
            local.set 7
            local.get 1
            i32.const 48
            i32.add
            local.set 8
            i32.const 1
            local.set 3
            loop  ;; label = @5
              local.get 5
              local.get 4
              i32.eq
              br_if 4 (;@1;)
              local.get 1
              local.get 0
              local.get 4
              call $_reflect.rawType_.rawField
              local.get 6
              local.get 1
              i32.load offset=20
              i32.store
              local.get 7
              local.get 1
              i32.load offset=8
              i32.store
              local.get 8
              local.get 1
              i32.load
              i32.store
              local.get 1
              i32.load offset=16
              call $_reflect.rawType_.Align
              local.tee 9
              local.get 3
              local.get 9
              local.get 3
              i32.gt_s
              select
              local.set 3
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              br 0 (;@5;)
            end
          end
          local.get 0
          call $_reflect.rawType_.elem
          local.set 0
          br 0 (;@3;)
        end
      end
      i32.const 34
      i32.const 65568
      call $runtime._panic
      unreachable
    end
    i32.const 0
    local.get 2
    i32.store offset=68120
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_reflect.rawType_.stripPrefix (type 4) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 3
      i32.shr_u
      i32.const 536870908
      i32.and
      i32.const 67040
      i32.add
      i32.load
      return
    end
    local.get 0
    i32.const 5
    i32.shr_u)
  (func $reflect.readVarint (type 11) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    loop  ;; label = @1
      i32.const 0
      local.get 1
      i32.load8_s
      local.tee 4
      i32.const 127
      i32.and
      local.get 3
      i32.shl
      local.get 3
      i32.const 31
      i32.gt_u
      select
      local.get 2
      i32.or
      local.set 2
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 3
      i32.const 7
      i32.add
      local.set 3
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $reflect.readStringSidetable (type 11) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.const 67296
    i32.add
    call $reflect.readVarint
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 2
    i32.load
    local.tee 1
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=4
    local.tee 3
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $reflect.ValueOf (type 13) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    call $runtime.decomposeInterface
    local.get 3
    i32.const 24
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 3
    i32.load offset=12
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_reflect.Value_.Bool (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.store8
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          call $_reflect.Value_.Kind
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          call $_reflect.Value_.isIndirect
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u
          local.set 1
          br 2 (;@1;)
        end
        local.get 3
        i32.const 36
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 1
        i32.store
        local.get 3
        i32.const 40
        i32.add
        local.get 1
        i32.store
        local.get 1
        i32.const 4
        i32.store offset=4
        local.get 1
        i32.const 65765
        i32.store
        i32.const 9189
        local.get 1
        call $runtime._panic
        unreachable
      end
      local.get 1
      i32.const 0
      i32.ne
      local.set 1
    end
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_reflect.Value_.Complex (type 12) (param i32 i32 i32 i32)
    (local i32 i32 f64 f64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i32.const 0
    i32.store
    local.get 5
    local.get 3
    i32.store8
    local.get 4
    i64.const 0
    i64.store offset=8
    local.get 4
    i64.const 0
    i64.store offset=36 align=4
    local.get 4
    i32.const 3
    i32.store offset=28
    local.get 4
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 5
    i32.const 0
    local.get 4
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 4
    local.get 5
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 2
            local.get 3
            call $_reflect.Value_.Kind
            i32.const -15
            i32.add
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 4
          i32.const 36
          i32.add
          i32.const 8
          call $runtime.alloc
          local.tee 2
          i32.store
          local.get 4
          i32.const 40
          i32.add
          local.get 2
          i32.store
          local.get 2
          i32.const 7
          i32.store offset=4
          local.get 2
          i32.const 65769
          i32.store
          i32.const 9189
          local.get 2
          call $runtime._panic
          unreachable
        end
        local.get 1
        local.get 2
        local.get 3
        call $_reflect.Value_.isIndirect
        drop
        local.get 2
        f32.load offset=4
        f64.promote_f32
        local.set 6
        local.get 2
        f32.load
        f64.promote_f32
        local.set 7
        br 1 (;@1;)
      end
      local.get 2
      f64.load offset=8
      local.set 6
      local.get 2
      f64.load
      local.set 7
    end
    i32.const 0
    local.get 5
    i32.store offset=68120
    local.get 0
    local.get 6
    f64.store offset=8
    local.get 0
    local.get 7
    f64.store
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_reflect.Value_.Float (type 14) (param i32 i32 i32) (result f64)
    (local i32 i32 i32 f64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i32.const 32
    i32.add
    local.get 3
    i32.const 4
    i32.or
    local.tee 5
    i32.store
    local.get 3
    i32.const 28
    i32.add
    local.get 5
    i32.store
    local.get 4
    local.get 2
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 5
    i32.store offset=20
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.store
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.Kind
              i32.const -13
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            local.get 0
            local.get 1
            local.get 2
            call $_reflect.Value_.isIndirect
            i32.const 1
            i32.and
            br_if 2 (;@2;)
            local.get 1
            f32.reinterpret_i32
            f64.promote_f32
            local.set 6
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          call $_reflect.Value_.isIndirect
          drop
          local.get 1
          f64.load
          local.set 6
          br 2 (;@1;)
        end
        local.get 3
        i32.const 36
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 1
        i32.store
        local.get 3
        i32.const 40
        i32.add
        local.get 1
        i32.store
        local.get 1
        i32.const 5
        i32.store offset=4
        local.get 1
        i32.const 65780
        i32.store
        i32.const 9189
        local.get 1
        call $runtime._panic
        unreachable
      end
      local.get 1
      f32.load
      f64.promote_f32
      local.set 6
    end
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $_reflect.Value_.Int (type 15) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.store8
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          local.get 1
                          local.get 2
                          call $_reflect.Value_.Kind
                          i32.const -2
                          i32.add
                          br_table 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 1 (;@10;) 0 (;@11;)
                        end
                        local.get 3
                        i32.const 36
                        i32.add
                        i32.const 8
                        call $runtime.alloc
                        local.tee 1
                        i32.store
                        local.get 3
                        i32.const 40
                        i32.add
                        local.get 1
                        i32.store
                        local.get 1
                        i32.const 3
                        i32.store offset=4
                        local.get 1
                        i32.const 65885
                        i32.store
                        i32.const 9189
                        local.get 1
                        call $runtime._panic
                        unreachable
                      end
                      local.get 0
                      local.get 1
                      local.get 2
                      call $_reflect.Value_.isIndirect
                      drop
                      local.get 1
                      i64.load
                      local.set 5
                      br 8 (;@1;)
                    end
                    local.get 0
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.isIndirect
                    i32.const 1
                    i32.and
                    br_if 3 (;@5;)
                    br 6 (;@2;)
                  end
                  local.get 0
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.isIndirect
                  i32.const 1
                  i32.and
                  br_if 4 (;@3;)
                  local.get 1
                  i64.extend_i32_u
                  i64.const 56
                  i64.shl
                  i64.const 56
                  i64.shr_s
                  local.set 5
                  br 6 (;@1;)
                end
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.isIndirect
                i32.const 1
                i32.and
                br_if 2 (;@4;)
                local.get 1
                i64.extend_i32_u
                i64.const 48
                i64.shl
                i64.const 48
                i64.shr_s
                local.set 5
                br 5 (;@1;)
              end
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.isIndirect
              i32.const 1
              i32.and
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 1
            i64.load32_s
            local.set 5
            br 3 (;@1;)
          end
          local.get 1
          i64.load16_s
          local.set 5
          br 2 (;@1;)
        end
        local.get 1
        i64.load8_s
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i64.extend_i32_s
      local.set 5
    end
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_reflect.Value_.RawType (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 0)
  (func $_reflect.Value_.String (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.store8
    local.get 4
    i64.const 0
    i64.store
    local.get 4
    local.get 2
    i32.store offset=4
    local.get 4
    local.get 1
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        call $_reflect.Value_.Kind
        i32.const 17
        i32.eq
        br_if 0 (;@2;)
        i32.const 3
        local.set 1
        i32.const 65943
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_reflect.Value_.Uint (type 15) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.store8
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 1
                        local.get 2
                        call $_reflect.Value_.Kind
                        i32.const -7
                        i32.add
                        br_table 5 (;@5;) 3 (;@7;) 4 (;@6;) 6 (;@4;) 1 (;@9;) 2 (;@8;) 0 (;@10;)
                      end
                      local.get 3
                      i32.const 36
                      i32.add
                      i32.const 8
                      call $runtime.alloc
                      local.tee 1
                      i32.store
                      local.get 3
                      i32.const 40
                      i32.add
                      local.get 1
                      i32.store
                      local.get 1
                      i32.const 4
                      i32.store offset=4
                      local.get 1
                      i32.const 65946
                      i32.store
                      i32.const 9189
                      local.get 1
                      call $runtime._panic
                      unreachable
                    end
                    local.get 0
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.isIndirect
                    drop
                    local.get 1
                    i64.load
                    local.set 5
                    br 7 (;@1;)
                  end
                  local.get 0
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.isIndirect
                  i32.const 1
                  i32.and
                  br_if 4 (;@3;)
                  br 5 (;@2;)
                end
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.isIndirect
                i32.const 1
                i32.and
                i32.eqz
                br_if 4 (;@2;)
                local.get 1
                i64.load8_u
                local.set 5
                br 5 (;@1;)
              end
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.isIndirect
              i32.const 1
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              i64.load16_u
              local.set 5
              br 4 (;@1;)
            end
            local.get 0
            local.get 1
            local.get 2
            call $_reflect.Value_.isIndirect
            i32.const 1
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          local.get 2
          call $_reflect.Value_.isIndirect
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 1
        i64.load32_u
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i64.extend_i32_u
      local.set 5
    end
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $errors.New (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 12
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=68120
    local.set 5
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 3
    local.get 5
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    call $runtime.alloc
    local.tee 6
    i32.store
    local.get 4
    local.get 6
    i32.store
    i32.const 0
    local.get 5
    i32.store offset=68120
    local.get 6
    local.get 2
    i32.store offset=4
    local.get 6
    local.get 1
    i32.store
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    i32.const 12261
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $internal/task.Current (type 8)
    i32.const 65997
    i32.const 21
    call $runtime.runtimePanic
    unreachable)
  (func $runtime.runtimePanic (type 11) (param i32 i32)
    i32.const 66215
    i32.const 22
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printstring
    call $runtime.printnl
    unreachable
    unreachable)
  (func $_*sync.Mutex_.Unlock (type 3) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=36 align=4
    local.get 1
    i64.const 0
    i64.store offset=28 align=4
    local.get 1
    i64.const 0
    i64.store offset=20 align=4
    local.get 1
    i64.const 7
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 40
              i32.add
              local.get 0
              i32.load offset=4
              local.tee 3
              i32.store
              local.get 1
              i32.const 32
              i32.add
              local.get 3
              i32.store
              local.get 1
              i32.const 24
              i32.add
              local.get 3
              i32.store
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 3
                i32.load
                local.tee 4
                i32.store offset=4
                local.get 1
                i32.const 28
                i32.add
                local.get 4
                i32.store
                local.get 3
                i32.const 0
                i32.store
                local.get 1
                i32.const 36
                i32.add
                i32.const 0
                i32.load offset=68240
                local.tee 0
                i32.store
                local.get 0
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 0
              i32.const 0
              i32.store8
              br 3 (;@2;)
            end
            i32.const 34
            i32.const 66048
            call $runtime._panic
            unreachable
          end
          local.get 1
          i32.const 16
          i32.add
          i32.const 0
          i32.load offset=68240
          local.tee 0
          i32.store
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 3
          i32.store
        end
        i32.const 0
        local.get 3
        i32.store offset=68240
        local.get 3
        i32.const 0
        i32.store
        local.get 1
        i32.const 20
        i32.add
        i32.const 0
        i32.load offset=68236
        local.tee 0
        i32.store
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.get 3
        i32.store offset=68236
      end
      i32.const 0
      local.get 2
      i32.store offset=68120
      local.get 1
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $runtime.markRoots (type 11) (param i32 i32)
    (local i32)
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.ge_u
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          call $runtime.looksLikePointer
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.load offset=67608
          i32.sub
          i32.const 4
          i32.shr_u
          local.tee 2
          call $_runtime.gcBlock_.state
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call $_runtime.gcBlock_.findHead
          local.tee 2
          call $_runtime.gcBlock_.state
          i32.const 255
          i32.and
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          call $runtime.startMark
        end
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end)
  (func $_runtime.gcBlock_.state (type 4) (param i32) (result i32)
    i32.const 0
    i32.load offset=68104
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    i32.load8_u
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shr_u
    i32.const 3
    i32.and)
  (func $_runtime.gcBlock_.markFree (type 3) (param i32)
    (local i32)
    i32.const 0
    i32.load offset=68104
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 1
    local.get 1
    i32.load8_u
    i32.const 3
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    i32.store8)
  (func $runtime.startMark (type 3) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.const 64
    call $memset
    local.tee 2
    local.get 0
    i32.store
    local.get 0
    i32.const 3
    call $_runtime.gcBlock_.setState
    i32.const 1
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.lt_s
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=67608
          local.get 2
          local.get 3
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee 1
          i32.const 4
          i32.shl
          i32.add
          local.set 0
          local.get 1
          call $_runtime.gcBlock_.findNext
          local.set 1
          i32.const 0
          i32.load offset=67608
          local.get 1
          i32.const 4
          i32.shl
          i32.add
          local.set 4
          loop  ;; label = @4
            local.get 4
            local.get 0
            i32.eq
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load
              local.tee 1
              call $runtime.looksLikePointer
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 0
              i32.load offset=67608
              i32.sub
              i32.const 4
              i32.shr_u
              local.tee 1
              call $_runtime.gcBlock_.state
              i32.const 255
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              call $_runtime.gcBlock_.findHead
              local.tee 1
              call $_runtime.gcBlock_.state
              i32.const 255
              i32.and
              i32.const 3
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.const 3
              call $_runtime.gcBlock_.setState
              block  ;; label = @6
                local.get 3
                i32.const 16
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 1
                i32.store8 offset=68117
                i32.const 16
                local.set 3
                br 1 (;@5;)
              end
              local.get 3
              i32.const 15
              i32.gt_u
              br_if 2 (;@3;)
              local.get 2
              local.get 3
              i32.const 2
              i32.shl
              i32.add
              local.get 1
              i32.store
              local.get 3
              i32.const 1
              i32.add
              local.set 3
            end
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            br 0 (;@4;)
          end
        end
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $runtime.calculateHeapAddresses (type 8)
    (local i32 i32)
    i32.const 0
    i32.const 0
    i32.load offset=67608
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 0
    i32.store offset=67608
    i32.const 0
    i32.const 0
    i32.load offset=67976
    local.tee 1
    local.get 1
    local.get 0
    i32.sub
    i32.const 6
    i32.shr_u
    i32.sub
    local.tee 1
    i32.store offset=68104
    i32.const 0
    local.get 1
    local.get 0
    i32.sub
    i32.const 4
    i32.shr_u
    i32.store offset=68112)
  (func $_runtime.gcBlock_.setState (type 11) (param i32 i32)
    (local i32)
    i32.const 0
    i32.load offset=68104
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 2
    local.get 2
    i32.load8_u
    local.get 1
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.or
    i32.store8)
  (func $runtime.printstring (type 11) (param i32 i32)
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
  (func $runtime.printnl (type 8)
    i32.const 10
    call $runtime.putchar)
  (func $runtime.putchar (type 3) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=67980
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
    i32.store offset=67980
    local.get 1
    i32.const 67984
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
      i32.store offset=67616
      i32.const 1
      i32.const 67612
      i32.const 1
      i32.const 68124
      call $runtime.fd_write
      drop
      i32.const 0
      i32.const 0
      i32.store offset=67980
    end)
  (func $runtime.lookupPanic (type 8)
    i32.const 66260
    i32.const 18
    call $runtime.runtimePanic
    unreachable)
  (func $_runtime.gcBlock_.findNext (type 4) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $_runtime.gcBlock_.state
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        call $_runtime.gcBlock_.state
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 0
    end
    loop  ;; label = @1
      local.get 0
      call $_runtime.gcBlock_.state
      local.set 1
      local.get 0
      i32.const 1
      i32.add
      local.tee 2
      local.set 0
      local.get 1
      i32.const 255
      i32.and
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const -1
    i32.add)
  (func $runtime.looksLikePointer (type 4) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=67608
      local.get 0
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=68104
      local.get 0
      i32.gt_u
      local.set 1
    end
    local.get 1)
  (func $_runtime.gcBlock_.findHead (type 4) (param i32) (result i32)
    (local i32 i32)
    loop  ;; label = @1
      local.get 0
      call $_runtime.gcBlock_.state
      local.set 1
      local.get 0
      i32.const -1
      i32.add
      local.tee 2
      local.set 0
      local.get 1
      i32.const 255
      i32.and
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 1
    i32.add)
  (func $malloc (type 4) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store
    local.get 0
    call $runtime.alloc
    local.set 0
    i32.const 0
    local.get 2
    i32.store offset=68120
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $free (type 3) (param i32))
  (func $calloc (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 1
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=68120
    local.set 3
    i32.const 0
    local.get 2
    i32.store offset=68120
    local.get 2
    local.get 3
    i32.store
    local.get 1
    local.get 0
    i32.mul
    call $runtime.alloc
    local.set 1
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $realloc (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=20 align=4
    local.get 2
    i64.const 3
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=68120
    local.set 3
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 3
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        local.get 1
        call $runtime.alloc
        local.tee 1
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 0
        i32.load offset=67608
        i32.sub
        i32.const 4
        i32.shr_u
        call $_runtime.gcBlock_.findNext
        i32.const 4
        i32.shl
        local.get 0
        i32.sub
        i32.const 0
        i32.load offset=67608
        i32.add
        local.tee 4
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 20
      i32.add
      local.get 1
      call $runtime.alloc
      local.tee 1
      i32.store
      local.get 1
      local.get 0
      local.get 4
      call $memcpy
      drop
    end
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $posix_memalign (type 5) (param i32 i32 i32) (result i32)
    i32.const 66059
    i32.const 29
    call $runtime.runtimePanic
    unreachable)
  (func $aligned_alloc (type 2) (param i32 i32) (result i32)
    i32.const 66088
    i32.const 28
    call $runtime.runtimePanic
    unreachable)
  (func $malloc_usable_size (type 4) (param i32) (result i32)
    i32.const 66116
    i32.const 33
    call $runtime.runtimePanic
    unreachable)
  (func $runtime.printitf (type 11) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=100 align=4
    local.get 2
    i64.const 0
    i64.store offset=92 align=4
    local.get 2
    i64.const 0
    i64.store offset=84 align=4
    local.get 2
    i64.const 0
    i64.store offset=76 align=4
    local.get 2
    i64.const 0
    i64.store offset=68 align=4
    local.get 2
    i64.const 11
    i64.store offset=60 align=4
    i32.const 0
    i32.load offset=68120
    local.set 3
    i32.const 0
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 3
    i32.store offset=56
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
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
                                local.get 0
                                i32.const -16
                                i32.add
                                br_table 1 (;@13;) 10 (;@4;) 10 (;@4;) 10 (;@4;) 2 (;@12;) 0 (;@14;)
                              end
                              local.get 0
                              i32.const 34
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 0
                              i32.const 84
                              i32.eq
                              br_if 7 (;@6;)
                              local.get 0
                              i32.const 127
                              i32.eq
                              br_if 6 (;@7;)
                              block  ;; label = @14
                                local.get 0
                                i32.const 162
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 216
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 997
                                i32.eq
                                br_if 5 (;@9;)
                                local.get 0
                                i32.const 2693
                                i32.eq
                                br_if 6 (;@8;)
                                local.get 0
                                i32.const 4069
                                i32.eq
                                br_if 4 (;@10;)
                                local.get 0
                                i32.const 5189
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 6917
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 8165
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 9189
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 11237
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 12261
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 13285
                                i32.ne
                                br_if 10 (;@4;)
                              end
                              local.get 2
                              local.get 1
                              local.get 0
                              call $interface:_Error:func:___basic:string__.Error$invoke
                              local.get 2
                              i32.const 64
                              i32.add
                              local.get 2
                              i32.load
                              local.tee 0
                              i32.store
                              local.get 0
                              local.get 2
                              i32.load offset=4
                              call $runtime.printstring
                              br 12 (;@1;)
                            end
                            local.get 1
                            i32.const 255
                            i32.and
                            call $runtime.printuint32
                            br 11 (;@1;)
                          end
                          local.get 1
                          call $runtime.printuint32
                          br 10 (;@1;)
                        end
                        local.get 1
                        i32.load
                        local.get 1
                        i32.load offset=4
                        call $runtime.printstring
                        br 9 (;@1;)
                      end
                      local.get 1
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 2
                      i32.const 68
                      i32.add
                      local.get 1
                      i32.load offset=16
                      local.tee 0
                      i32.store
                      local.get 2
                      i32.const 8
                      i32.add
                      local.get 1
                      i64.load
                      local.get 1
                      i64.load offset=8
                      local.get 0
                      call $_time.Time_.String
                      local.get 2
                      i32.const 72
                      i32.add
                      local.get 2
                      i32.load offset=8
                      local.tee 0
                      i32.store
                      local.get 2
                      i32.load offset=12
                      local.set 1
                      br 4 (;@5;)
                    end
                    local.get 2
                    i32.const 76
                    i32.add
                    local.get 1
                    call $_*time.Location_.get
                    local.tee 1
                    i32.store
                    local.get 1
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 2
                    i32.const 80
                    i32.add
                    local.get 1
                    i32.load
                    local.tee 0
                    i32.store
                    local.get 1
                    i32.load offset=4
                    local.set 1
                    br 3 (;@5;)
                  end
                  local.get 1
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.get 1
                  i32.load
                  call $_io/fs.FileMode_.String
                  local.get 2
                  i32.const 84
                  i32.add
                  local.get 2
                  i32.load offset=16
                  local.tee 0
                  i32.store
                  local.get 2
                  i32.load offset=20
                  local.set 1
                  br 2 (;@5;)
                end
                local.get 2
                i32.const 24
                i32.add
                local.get 1
                i64.load
                local.get 1
                i64.load offset=8
                local.get 1
                i32.load offset=16
                call $_time.Time_.String
                local.get 2
                i32.load offset=28
                local.set 1
                local.get 2
                i32.load offset=24
                local.set 0
                br 1 (;@5;)
              end
              local.get 2
              i32.const 32
              i32.add
              local.get 1
              call $_io/fs.FileMode_.String
              local.get 2
              i32.load offset=36
              local.set 1
              local.get 2
              i32.load offset=32
              local.set 0
            end
            local.get 2
            i32.const 88
            i32.add
            local.get 0
            i32.store
            local.get 0
            local.get 1
            call $runtime.printstring
            br 3 (;@1;)
          end
          local.get 2
          i64.const 0
          i64.store offset=48
          local.get 2
          local.get 0
          i32.store offset=40
          local.get 2
          local.get 1
          i32.store offset=44
          local.get 2
          i32.const 100
          i32.add
          local.get 2
          i32.const 48
          i32.add
          i32.store
          local.get 2
          i32.const 56
          i32.add
          i32.const 48
          i32.add
          local.get 2
          i32.const 48
          i32.add
          i32.store
          local.get 2
          i32.const 92
          i32.add
          local.get 2
          i32.const 48
          i32.add
          i32.store
          local.get 2
          local.get 0
          i32.store offset=48
          local.get 2
          local.get 1
          i32.store offset=52
          local.get 2
          i32.const 56
          i32.add
          i32.const 40
          i32.add
          local.get 2
          i32.const 40
          i32.add
          i32.store
          i32.const 40
          call $runtime.putchar
          local.get 0
          call $runtime.printuint32
          i32.const 58
          call $runtime.putchar
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            i32.const 66296
            i32.const 3
            call $runtime.printstring
            br 2 (;@2;)
          end
          i32.const 48
          call $runtime.putchar
          i32.const 120
          call $runtime.putchar
          i32.const 8
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.const 28
            i32.shr_u
            local.tee 4
            i32.const 48
            i32.or
            local.get 4
            i32.const 87
            i32.add
            local.get 4
            i32.const 10
            i32.lt_u
            select
            call $runtime.putchar
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 1
            i32.const 4
            i32.shl
            local.set 1
            br 0 (;@4;)
          end
        end
        call $runtime.nilPanic
        unreachable
      end
      i32.const 41
      call $runtime.putchar
    end
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 2
    i32.const 112
    i32.add
    global.set $__stack_pointer)
  (func $interface:_Error:func:___basic:string__.Error$invoke (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 368
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=360
    local.get 3
    i64.const 0
    i64.store offset=352
    local.get 3
    i64.const 0
    i64.store offset=344
    local.get 3
    i64.const 0
    i64.store offset=336
    local.get 3
    i64.const 0
    i64.store offset=328
    local.get 3
    i64.const 0
    i64.store offset=320
    local.get 3
    i64.const 0
    i64.store offset=312
    local.get 3
    i64.const 0
    i64.store offset=304
    local.get 3
    i64.const 0
    i64.store offset=296
    local.get 3
    i64.const 0
    i64.store offset=288
    local.get 3
    i64.const 0
    i64.store offset=280
    local.get 3
    i64.const 0
    i64.store offset=272
    local.get 3
    i64.const 0
    i64.store offset=264
    local.get 3
    i64.const 0
    i64.store offset=256
    local.get 3
    i64.const 0
    i64.store offset=248
    local.get 3
    i64.const 0
    i64.store offset=240
    local.get 3
    i64.const 0
    i64.store offset=232
    local.get 3
    i64.const 0
    i64.store offset=224
    local.get 3
    i64.const 154618822656
    i64.store offset=216
    local.get 3
    i32.const 0
    i32.load offset=68120
    local.tee 4
    i32.store offset=216
    i32.const 0
    local.get 3
    i32.const 216
    i32.add
    i32.store offset=68120
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 162
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 216
            i32.eq
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.const 5189
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 6917
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 2
                          i32.const 8165
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 2
                          i32.const 9189
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 2
                          i32.const 11237
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 2
                          i32.const 12261
                          i32.eq
                          br_if 6 (;@5;)
                          local.get 2
                          i32.const 13285
                          i32.eq
                          br_if 4 (;@7;)
                          br 10 (;@1;)
                        end
                        local.get 1
                        i32.eqz
                        br_if 9 (;@1;)
                        local.get 3
                        i32.const 224
                        i32.add
                        local.get 1
                        i32.load
                        local.tee 2
                        i32.store
                        local.get 3
                        i32.const 8
                        i32.add
                        local.get 2
                        local.get 1
                        i32.load offset=4
                        call $_time.fileSizeError_.Error
                        local.get 3
                        i32.const 228
                        i32.add
                        local.get 3
                        i32.load offset=8
                        local.tee 2
                        i32.store
                        local.get 3
                        i32.load offset=12
                        local.set 1
                        br 8 (;@2;)
                      end
                      local.get 1
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 3
                      i32.const 232
                      i32.add
                      local.get 1
                      i32.load offset=32
                      i32.store
                      local.get 3
                      i32.const 236
                      i32.add
                      local.get 1
                      i32.load offset=8
                      local.tee 2
                      i32.store
                      local.get 1
                      i32.load offset=36
                      local.set 5
                      local.get 3
                      i32.const 112
                      i32.add
                      local.get 2
                      local.get 1
                      i32.load offset=12
                      call $time.quote
                      local.get 3
                      i32.const 240
                      i32.add
                      local.get 3
                      i32.load offset=112
                      local.tee 2
                      i32.store
                      local.get 3
                      i32.load offset=116
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 5
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 88
                          i32.add
                          i32.const 66695
                          i32.const 13
                          local.get 2
                          local.get 6
                          call $runtime.stringConcat
                          local.get 3
                          i32.const 244
                          i32.add
                          local.get 3
                          i32.load offset=88
                          local.tee 2
                          i32.store
                          local.get 3
                          i32.const 80
                          i32.add
                          local.get 2
                          local.get 3
                          i32.load offset=92
                          i32.const 66691
                          i32.const 4
                          call $runtime.stringConcat
                          local.get 3
                          i32.const 248
                          i32.add
                          local.get 3
                          i32.load offset=80
                          local.tee 2
                          i32.store
                          local.get 3
                          i32.const 252
                          i32.add
                          local.get 1
                          i32.load
                          local.tee 5
                          i32.store
                          local.get 3
                          i32.load offset=84
                          local.set 6
                          local.get 3
                          i32.const 72
                          i32.add
                          local.get 5
                          local.get 1
                          i32.load offset=4
                          call $time.quote
                          local.get 3
                          i32.const 256
                          i32.add
                          local.get 3
                          i32.load offset=72
                          local.tee 5
                          i32.store
                          local.get 3
                          i32.const 64
                          i32.add
                          local.get 2
                          local.get 6
                          local.get 5
                          local.get 3
                          i32.load offset=76
                          call $runtime.stringConcat
                          local.get 3
                          i32.const 260
                          i32.add
                          local.get 3
                          i32.load offset=64
                          local.tee 2
                          i32.store
                          local.get 3
                          i32.const 56
                          i32.add
                          local.get 2
                          local.get 3
                          i32.load offset=68
                          i32.const 66676
                          i32.const 15
                          call $runtime.stringConcat
                          local.get 3
                          i32.const 264
                          i32.add
                          local.get 3
                          i32.load offset=56
                          local.tee 2
                          i32.store
                          local.get 3
                          i32.const 268
                          i32.add
                          local.get 1
                          i32.load offset=24
                          local.tee 5
                          i32.store
                          local.get 3
                          i32.load offset=60
                          local.set 6
                          local.get 3
                          i32.const 48
                          i32.add
                          local.get 5
                          local.get 1
                          i32.load offset=28
                          call $time.quote
                          local.get 3
                          i32.const 272
                          i32.add
                          local.get 3
                          i32.load offset=48
                          local.tee 5
                          i32.store
                          local.get 3
                          i32.const 40
                          i32.add
                          local.get 2
                          local.get 6
                          local.get 5
                          local.get 3
                          i32.load offset=52
                          call $runtime.stringConcat
                          local.get 3
                          i32.const 276
                          i32.add
                          local.get 3
                          i32.load offset=40
                          local.tee 2
                          i32.store
                          local.get 3
                          i32.const 32
                          i32.add
                          local.get 2
                          local.get 3
                          i32.load offset=44
                          i32.const 66691
                          i32.const 4
                          call $runtime.stringConcat
                          local.get 3
                          i32.const 280
                          i32.add
                          local.get 3
                          i32.load offset=32
                          local.tee 2
                          i32.store
                          local.get 3
                          i32.const 284
                          i32.add
                          local.get 1
                          i32.load offset=16
                          local.tee 5
                          i32.store
                          local.get 3
                          i32.load offset=36
                          local.set 6
                          local.get 3
                          i32.const 24
                          i32.add
                          local.get 5
                          local.get 1
                          i32.load offset=20
                          call $time.quote
                          local.get 3
                          i32.const 288
                          i32.add
                          local.get 3
                          i32.load offset=24
                          local.tee 1
                          i32.store
                          local.get 3
                          i32.const 16
                          i32.add
                          local.get 2
                          local.get 6
                          local.get 1
                          local.get 3
                          i32.load offset=28
                          call $runtime.stringConcat
                          local.get 3
                          i32.load offset=20
                          local.set 1
                          local.get 3
                          i32.load offset=16
                          local.set 2
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.const 104
                        i32.add
                        i32.const 66695
                        i32.const 13
                        local.get 2
                        local.get 6
                        call $runtime.stringConcat
                        local.get 3
                        i32.const 292
                        i32.add
                        local.get 3
                        i32.load offset=104
                        local.tee 2
                        i32.store
                        local.get 3
                        i32.const 296
                        i32.add
                        local.get 1
                        i32.load offset=32
                        local.tee 5
                        i32.store
                        local.get 3
                        i32.const 96
                        i32.add
                        local.get 2
                        local.get 3
                        i32.load offset=108
                        local.get 5
                        local.get 1
                        i32.load offset=36
                        call $runtime.stringConcat
                        local.get 3
                        i32.load offset=100
                        local.set 1
                        local.get 3
                        i32.load offset=96
                        local.set 2
                      end
                      local.get 3
                      i32.const 300
                      i32.add
                      local.get 2
                      i32.store
                      br 7 (;@2;)
                    end
                    local.get 1
                    i32.eqz
                    br_if 7 (;@1;)
                    local.get 3
                    i32.const 120
                    i32.add
                    local.get 1
                    i32.load
                    call $_syscall.Errno_.Error
                    local.get 3
                    i32.const 304
                    i32.add
                    local.get 3
                    i32.load offset=120
                    local.tee 2
                    i32.store
                    local.get 3
                    i32.load offset=124
                    local.set 1
                    br 6 (;@2;)
                  end
                  local.get 1
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 3
                  i32.const 308
                  i32.add
                  local.get 1
                  i32.load
                  local.tee 2
                  i32.store
                  local.get 3
                  i32.const 136
                  i32.add
                  i32.const 65950
                  i32.const 31
                  local.get 2
                  local.get 1
                  i32.load offset=4
                  call $runtime.stringConcat
                  local.get 3
                  i32.const 312
                  i32.add
                  local.get 3
                  i32.load offset=136
                  local.tee 2
                  i32.store
                  local.get 3
                  i32.const 128
                  i32.add
                  local.get 2
                  local.get 3
                  i32.load offset=140
                  i32.const 65981
                  i32.const 16
                  call $runtime.stringConcat
                  local.get 3
                  i32.const 316
                  i32.add
                  local.get 3
                  i32.load offset=128
                  local.tee 2
                  i32.store
                  local.get 3
                  i32.load offset=132
                  local.set 1
                  br 5 (;@2;)
                end
                local.get 1
                i32.eqz
                br_if 5 (;@1;)
                local.get 3
                i32.const 320
                i32.add
                local.get 1
                i32.load
                local.tee 2
                i32.store
                local.get 3
                i32.const 152
                i32.add
                i32.const 65735
                i32.const 30
                local.get 2
                local.get 1
                i32.load offset=4
                call $runtime.stringConcat
                local.get 3
                i32.const 324
                i32.add
                local.get 3
                i32.load offset=152
                local.tee 2
                i32.store
                local.get 3
                i32.const 144
                i32.add
                local.get 2
                local.get 3
                i32.load offset=156
                i32.const 65981
                i32.const 16
                call $runtime.stringConcat
                local.get 3
                i32.const 328
                i32.add
                local.get 3
                i32.load offset=144
                local.tee 2
                i32.store
                local.get 3
                i32.load offset=148
                local.set 1
                br 4 (;@2;)
              end
              local.get 1
              i32.eqz
              br_if 4 (;@1;)
              local.get 3
              i32.const 332
              i32.add
              local.get 1
              i32.load
              local.tee 2
              i32.store
              local.get 3
              i32.const 192
              i32.add
              local.get 2
              local.get 1
              i32.load offset=4
              i32.const 67036
              i32.const 1
              call $runtime.stringConcat
              local.get 3
              i32.const 336
              i32.add
              local.get 3
              i32.load offset=192
              local.tee 2
              i32.store
              local.get 3
              i32.const 340
              i32.add
              local.get 1
              i32.load offset=8
              local.tee 5
              i32.store
              local.get 3
              i32.const 184
              i32.add
              local.get 2
              local.get 3
              i32.load offset=196
              local.get 5
              local.get 1
              i32.load offset=12
              call $runtime.stringConcat
              local.get 3
              i32.const 344
              i32.add
              local.get 3
              i32.load offset=184
              local.tee 2
              i32.store
              local.get 3
              i32.const 176
              i32.add
              local.get 2
              local.get 3
              i32.load offset=188
              i32.const 67037
              i32.const 2
              call $runtime.stringConcat
              local.get 3
              i32.const 348
              i32.add
              local.get 3
              i32.load offset=176
              local.tee 2
              i32.store
              local.get 3
              i32.const 352
              i32.add
              local.get 1
              i32.load offset=20
              local.tee 5
              i32.store
              local.get 3
              i32.load offset=180
              local.set 6
              local.get 3
              i32.const 168
              i32.add
              local.get 5
              local.get 1
              i32.load offset=16
              call $interface:_Error:func:___basic:string__.Error$invoke
              local.get 3
              i32.const 356
              i32.add
              local.get 3
              i32.load offset=168
              local.tee 1
              i32.store
              local.get 3
              i32.const 160
              i32.add
              local.get 2
              local.get 6
              local.get 1
              local.get 3
              i32.load offset=172
              call $runtime.stringConcat
              local.get 3
              i32.const 360
              i32.add
              local.get 3
              i32.load offset=160
              local.tee 2
              i32.store
              local.get 3
              i32.load offset=164
              local.set 1
              br 3 (;@2;)
            end
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 3
            i32.const 364
            i32.add
            local.get 1
            i32.load
            local.tee 2
            i32.store
            local.get 1
            i32.load offset=4
            local.set 1
            br 2 (;@2;)
          end
          local.get 3
          i32.const 200
          i32.add
          local.get 1
          i32.load
          local.get 1
          i32.load offset=4
          call $_time.fileSizeError_.Error
          local.get 3
          i32.load offset=204
          local.set 1
          local.get 3
          i32.load offset=200
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        i32.const 208
        i32.add
        local.get 1
        call $_syscall.Errno_.Error
        local.get 3
        i32.load offset=212
        local.set 1
        local.get 3
        i32.load offset=208
        local.set 2
      end
      i32.const 0
      local.get 4
      i32.store offset=68120
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 3
      i32.const 368
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $runtime.printuint32 (type 3) (param i32)
    (local i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    i64.extend_i32_u
    local.set 2
    i32.const 19
    local.set 3
    i32.const 19
    local.set 0
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 20
        local.get 3
        i32.const 20
        i32.gt_s
        select
        local.get 3
        i32.sub
        local.set 0
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        i32.add
        local.set 3
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load8_u
            call $runtime.putchar
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      i32.add
      local.get 2
      local.get 2
      i64.const 10
      i64.div_u
      local.tee 4
      i64.const 10
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 48
      i32.or
      local.tee 5
      i32.store8
      local.get 3
      local.get 0
      local.get 5
      i32.const 255
      i32.and
      i32.const 48
      i32.eq
      select
      local.set 3
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 4
      local.set 2
      br 0 (;@1;)
    end)
  (func $_time.Time_.String (type 16) (param i32 i64 i64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 1296
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 1208
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 4
    i32.const 1184
    i32.add
    local.tee 6
    i64.const 0
    i64.store
    local.get 4
    i32.const 1152
    i32.add
    local.tee 7
    i64.const 0
    i64.store
    local.get 4
    i32.const 1136
    i32.add
    local.tee 8
    i64.const 0
    i64.store
    local.get 4
    i32.const 1120
    i32.add
    local.tee 9
    i64.const 0
    i64.store
    local.get 4
    i32.const 1112
    i32.add
    local.tee 10
    i64.const 0
    i64.store
    local.get 4
    i32.const 1008
    i32.add
    local.tee 11
    i64.const 0
    i64.store
    local.get 4
    i32.const 1000
    i32.add
    local.tee 12
    i64.const 0
    i64.store
    local.get 4
    i32.const 992
    i32.add
    local.tee 13
    i64.const 0
    i64.store
    local.get 4
    i32.const 968
    i32.add
    i32.const 16
    i32.add
    local.tee 14
    i64.const 0
    i64.store
    local.get 4
    i32.const 968
    i32.add
    i32.const 8
    i32.add
    local.tee 15
    i64.const 0
    i64.store
    local.get 4
    i64.const 0
    i64.store offset=1216
    local.get 4
    i64.const 0
    i64.store offset=1200
    local.get 4
    i64.const 0
    i64.store offset=1192
    local.get 4
    i64.const 0
    i64.store offset=1176
    local.get 4
    i64.const 0
    i64.store offset=1168
    local.get 4
    i64.const 0
    i64.store offset=1160
    local.get 4
    i64.const 0
    i64.store offset=1144
    local.get 4
    i64.const 0
    i64.store offset=1128
    local.get 4
    i64.const 0
    i64.store offset=1104
    local.get 4
    i64.const 0
    i64.store offset=1096
    local.get 4
    i64.const 0
    i64.store offset=1088
    local.get 4
    i64.const 0
    i64.store offset=1080
    local.get 4
    i64.const 0
    i64.store offset=1072
    local.get 4
    i64.const 0
    i64.store offset=1064
    local.get 4
    i64.const 0
    i64.store offset=1056
    local.get 4
    i64.const 0
    i64.store offset=1048
    local.get 4
    i64.const 0
    i64.store offset=1040
    local.get 4
    i64.const 0
    i64.store offset=1032
    local.get 4
    i64.const 0
    i64.store offset=1024
    local.get 4
    i64.const 0
    i64.store offset=1016
    local.get 4
    i64.const 339302416384
    i64.store offset=968
    local.get 4
    i32.const 980
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 996
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 1004
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 1012
    i32.add
    local.get 3
    i32.store
    local.get 5
    local.get 3
    i32.store
    local.get 4
    i32.const 848
    i32.add
    i32.const 16
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 848
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    i32.const 0
    local.set 16
    local.get 4
    i32.const 0
    i32.store offset=1288
    local.get 4
    i64.const 0
    i64.store offset=1280
    local.get 4
    i64.const 0
    i64.store offset=1272
    local.get 4
    i64.const 0
    i64.store offset=1264
    local.get 4
    i64.const 0
    i64.store offset=1256
    local.get 4
    i64.const 0
    i64.store offset=1248
    local.get 4
    i64.const 0
    i64.store offset=1240
    local.get 4
    i64.const 0
    i64.store offset=1232
    local.get 4
    i64.const 0
    i64.store offset=1224
    local.get 14
    local.get 4
    i32.const 880
    i32.add
    i32.store
    local.get 4
    local.get 1
    i64.store offset=848
    local.get 15
    local.get 4
    i32.const 848
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 17
    i32.const 0
    local.get 4
    i32.const 968
    i32.add
    i32.store offset=68120
    local.get 4
    local.get 17
    i32.store offset=968
    local.get 4
    i32.const 880
    i32.add
    i32.const 16
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 880
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 4
    local.get 1
    i64.store offset=880
    i32.const 64
    local.set 18
    local.get 4
    i32.const 988
    i32.add
    i32.const 64
    call $runtime.alloc
    local.tee 14
    i32.store
    local.get 13
    local.get 14
    i32.store
    local.get 4
    i32.const 1100
    i32.add
    local.get 4
    i32.const 942
    i32.add
    i32.store
    local.get 10
    local.get 4
    i32.const 941
    i32.add
    i32.store
    local.get 9
    local.get 4
    i32.const 940
    i32.add
    i32.store
    local.get 4
    i32.const 1132
    i32.add
    local.get 4
    i32.const 939
    i32.add
    i32.store
    local.get 8
    local.get 4
    i32.const 938
    i32.add
    i32.store
    local.get 7
    local.get 4
    i32.const 937
    i32.add
    i32.store
    local.get 4
    i32.const 1172
    i32.add
    local.get 4
    i32.const 936
    i32.add
    i32.store
    local.get 6
    local.get 4
    i32.const 935
    i32.add
    i32.store
    local.get 4
    i32.const 1188
    i32.add
    local.get 4
    i32.const 934
    i32.add
    i32.store
    local.get 4
    i32.const 1204
    i32.add
    local.get 4
    i32.const 933
    i32.add
    i32.store
    local.get 12
    local.get 4
    i32.const 904
    i32.add
    i32.store
    local.get 4
    i32.const 904
    i32.add
    i32.const 16
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 904
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 4
    local.get 1
    i64.store offset=904
    local.get 11
    local.get 4
    i32.const 944
    i32.add
    i32.store
    local.get 4
    i32.const 944
    i32.add
    i32.const 16
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 4
    i32.const 944
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.store
    local.get 5
    local.get 3
    i32.store
    local.get 4
    local.get 1
    i64.store offset=944
    local.get 3
    local.set 19
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 68144
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 4
      i32.const 1016
      i32.add
      local.get 19
      call $_*time.Location_.get
      local.tee 3
      i32.store
    end
    local.get 4
    i32.const 1020
    i32.add
    local.get 3
    i32.store
    local.get 2
    local.get 1
    i64.const 30
    i64.shr_u
    i64.const 8589934591
    i64.and
    i64.const 59453308800
    i64.add
    local.get 1
    i64.const -1
    i64.gt_s
    select
    i64.const -62135596800
    i64.add
    local.set 20
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 67624
        i32.ne
        br_if 0 (;@2;)
        i32.const 66952
        local.set 21
        i32.const 3
        local.set 22
        i32.const 0
        local.set 23
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 1032
            i32.add
            local.get 3
            i32.load offset=56
            local.tee 5
            i32.store
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i64.load offset=40
            local.get 20
            i64.gt_s
            br_if 1 (;@3;)
            local.get 20
            local.get 3
            i64.load offset=48
            i64.ge_s
            br_if 1 (;@3;)
            local.get 4
            i32.const 1036
            i32.add
            local.get 3
            i32.load offset=56
            local.tee 5
            i32.store
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 1040
            i32.add
            local.get 5
            i32.load
            local.tee 21
            i32.store
            local.get 5
            i32.load offset=4
            local.set 22
            local.get 4
            i32.const 1044
            i32.add
            local.get 3
            i32.load offset=56
            local.tee 3
            i32.store
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=8
            local.set 23
            br 2 (;@2;)
          end
          call $runtime.nilPanic
          unreachable
        end
        local.get 4
        i32.const 832
        i32.add
        local.get 3
        local.get 20
        call $_*time.Location_.lookup
        local.get 4
        i32.const 1028
        i32.add
        local.get 4
        i32.load offset=832
        local.tee 21
        i32.store
        local.get 4
        i32.load offset=836
        local.set 22
        local.get 4
        i32.load offset=840
        local.set 23
      end
      local.get 4
      i32.const 1024
      i32.add
      local.get 21
      i32.store
      local.get 20
      local.get 23
      i64.extend_i32_s
      i64.add
      local.set 20
    end
    local.get 4
    i32.const 1048
    i32.add
    local.get 21
    i32.store
    local.get 4
    i32.const 1052
    i32.add
    local.get 21
    i32.store
    local.get 4
    i32.const 1216
    i32.add
    local.get 4
    i32.const 943
    i32.add
    i32.store
    local.get 4
    i32.const 1212
    i32.add
    local.get 4
    i32.const 944
    i32.add
    i32.store
    local.get 20
    i64.const 9223372028715321600
    i64.add
    local.tee 24
    i64.const 86400
    i64.rem_u
    i32.wrap_i64
    local.tee 3
    i32.const 3600
    i32.div_u
    local.tee 25
    i32.const -3600
    i32.mul
    local.get 3
    i32.add
    local.tee 3
    i32.const 60
    i32.div_s
    local.tee 26
    i32.const -60
    i32.mul
    local.get 3
    i32.add
    local.set 27
    i32.const 0
    local.get 23
    i32.sub
    local.set 28
    i32.const 0
    local.get 23
    i32.const 60
    i32.div_s
    local.tee 29
    i32.sub
    local.set 30
    local.get 20
    i64.const 9223372028715408000
    i64.add
    i64.const 604800
    i64.rem_u
    i32.wrap_i64
    i32.const 86400
    i32.div_u
    local.set 31
    local.get 4
    i32.const 944
    i32.add
    i32.const -1
    i32.add
    local.set 32
    i32.const 39
    local.set 5
    i32.const 66747
    local.set 7
    local.get 4
    i32.const 1060
    i32.add
    local.set 33
    local.get 4
    i32.const 1056
    i32.add
    local.set 34
    local.get 4
    i32.const 1064
    i32.add
    local.set 35
    local.get 4
    i32.const 968
    i32.add
    i32.const 100
    i32.add
    local.set 36
    local.get 4
    i32.const 1076
    i32.add
    local.set 37
    local.get 4
    i32.const 1088
    i32.add
    local.set 38
    local.get 4
    i32.const 1084
    i32.add
    local.set 39
    local.get 4
    i32.const 1096
    i32.add
    local.set 40
    local.get 4
    i32.const 1092
    i32.add
    local.set 41
    local.get 4
    i32.const 1104
    i32.add
    local.set 42
    local.get 4
    i32.const 1108
    i32.add
    local.set 43
    local.get 4
    i32.const 1116
    i32.add
    local.set 44
    local.get 4
    i32.const 1124
    i32.add
    local.set 45
    local.get 4
    i32.const 1128
    i32.add
    local.set 46
    local.get 4
    i32.const 968
    i32.add
    i32.const 112
    i32.add
    local.set 47
    local.get 4
    i32.const 1196
    i32.add
    local.set 48
    local.get 4
    i32.const 1192
    i32.add
    local.set 49
    local.get 4
    i32.const 1200
    i32.add
    local.set 50
    local.get 4
    i32.const 1144
    i32.add
    local.set 51
    local.get 4
    i32.const 1140
    i32.add
    local.set 52
    local.get 4
    i32.const 1148
    i32.add
    local.set 53
    local.get 4
    i32.const 1160
    i32.add
    local.set 54
    local.get 4
    i32.const 1168
    i32.add
    local.set 55
    local.get 4
    i32.const 1180
    i32.add
    local.set 56
    local.get 4
    i32.const 1176
    i32.add
    local.set 57
    local.get 4
    i32.const 1164
    i32.add
    local.set 58
    local.get 4
    i32.const 1156
    i32.add
    local.set 59
    local.get 4
    i32.const 1220
    i32.add
    local.set 60
    local.get 4
    i32.const 1072
    i32.add
    local.set 61
    i32.const -1
    local.set 62
    i32.const 0
    local.set 63
    i32.const 0
    local.set 64
    i32.const 0
    local.set 65
    i32.const -1
    local.set 66
    i32.const 0
    local.set 67
    i32.const 0
    local.set 68
    loop  ;; label = @1
      local.get 33
      local.get 14
      i32.store
      local.get 34
      local.get 7
      i32.store
      local.get 35
      local.get 7
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                local.set 69
                i32.const 0
                local.set 13
                local.get 5
                i32.const 0
                local.get 5
                i32.const 0
                i32.gt_s
                select
                local.set 12
                i32.const 1
                local.set 8
                i32.const 0
                local.set 6
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      local.get 12
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 5
                      local.set 6
                      i32.const 0
                      local.set 7
                      i32.const 0
                      local.set 5
                      br 2 (;@7;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              local.get 5
                              i32.eq
                              br_if 0 (;@13;)
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
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 7
                                                        local.get 6
                                                        i32.add
                                                        local.tee 3
                                                        i32.load8_u
                                                        local.tee 10
                                                        i32.const -44
                                                        i32.add
                                                        br_table 4 (;@22;) 6 (;@20;) 4 (;@22;) 16 (;@10;) 12 (;@14;) 11 (;@15;) 10 (;@16;) 1 (;@25;) 2 (;@24;) 3 (;@23;) 0 (;@26;)
                                                      end
                                                      block  ;; label = @26
                                                        local.get 10
                                                        i32.const -74
                                                        i32.add
                                                        br_table 15 (;@11;) 16 (;@10;) 16 (;@10;) 14 (;@12;) 16 (;@10;) 16 (;@10;) 8 (;@18;) 0 (;@26;)
                                                      end
                                                      local.get 10
                                                      i32.const 90
                                                      i32.eq
                                                      br_if 4 (;@21;)
                                                      local.get 10
                                                      i32.const 95
                                                      i32.eq
                                                      br_if 8 (;@17;)
                                                      local.get 10
                                                      i32.const 112
                                                      i32.eq
                                                      br_if 6 (;@19;)
                                                      br 15 (;@10;)
                                                    end
                                                    local.get 6
                                                    local.get 5
                                                    i32.gt_u
                                                    br_if 19 (;@5;)
                                                    local.get 6
                                                    local.get 5
                                                    i32.ge_u
                                                    br_if 19 (;@5;)
                                                    local.get 5
                                                    local.get 6
                                                    i32.const 1
                                                    i32.add
                                                    local.tee 3
                                                    i32.sub
                                                    local.set 5
                                                    local.get 7
                                                    local.get 3
                                                    i32.add
                                                    local.set 7
                                                    i32.const 525
                                                    local.set 13
                                                    br 17 (;@7;)
                                                  end
                                                  local.get 6
                                                  local.get 5
                                                  i32.gt_u
                                                  br_if 18 (;@5;)
                                                  local.get 6
                                                  local.get 5
                                                  i32.ge_u
                                                  br_if 18 (;@5;)
                                                  local.get 5
                                                  local.get 6
                                                  i32.const 1
                                                  i32.add
                                                  local.tee 3
                                                  i32.sub
                                                  local.set 5
                                                  local.get 7
                                                  local.get 3
                                                  i32.add
                                                  local.set 7
                                                  i32.const 527
                                                  local.set 13
                                                  br 16 (;@7;)
                                                end
                                                local.get 6
                                                local.get 5
                                                i32.gt_u
                                                br_if 17 (;@5;)
                                                local.get 6
                                                local.get 5
                                                i32.ge_u
                                                br_if 17 (;@5;)
                                                local.get 5
                                                local.get 6
                                                i32.const 1
                                                i32.add
                                                local.tee 3
                                                i32.sub
                                                local.set 5
                                                local.get 7
                                                local.get 3
                                                i32.add
                                                local.set 7
                                                i32.const 529
                                                local.set 13
                                                br 15 (;@7;)
                                              end
                                              local.get 6
                                              i32.const 1
                                              i32.add
                                              local.tee 15
                                              local.get 5
                                              i32.ge_s
                                              br_if 11 (;@10;)
                                              local.get 15
                                              local.get 5
                                              i32.ge_u
                                              br_if 8 (;@13;)
                                              local.get 15
                                              local.set 3
                                              block  ;; label = @22
                                                local.get 7
                                                local.get 15
                                                i32.add
                                                i32.load8_u
                                                local.tee 9
                                                i32.const 57
                                                i32.eq
                                                local.tee 70
                                                br_if 0 (;@22;)
                                                local.get 15
                                                local.set 3
                                                local.get 9
                                                i32.const 48
                                                i32.ne
                                                br_if 12 (;@10;)
                                              end
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 3
                                                    local.get 5
                                                    i32.ge_s
                                                    br_if 1 (;@23;)
                                                    local.get 3
                                                    local.get 5
                                                    i32.ge_u
                                                    br_if 11 (;@13;)
                                                    block  ;; label = @25
                                                      local.get 7
                                                      local.get 3
                                                      i32.add
                                                      i32.load8_u
                                                      local.tee 11
                                                      local.get 9
                                                      i32.eq
                                                      br_if 0 (;@25;)
                                                      local.get 11
                                                      i32.const -48
                                                      i32.add
                                                      i32.const 255
                                                      i32.and
                                                      i32.const 10
                                                      i32.lt_u
                                                      br_if 15 (;@10;)
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 3
                                                    i32.const 1
                                                    i32.add
                                                    local.set 3
                                                    br 0 (;@24;)
                                                  end
                                                end
                                                local.get 5
                                                local.get 8
                                                local.get 5
                                                local.get 8
                                                i32.gt_s
                                                select
                                                local.set 3
                                              end
                                              local.get 6
                                              local.get 5
                                              i32.gt_u
                                              br_if 16 (;@5;)
                                              local.get 5
                                              local.get 3
                                              i32.lt_u
                                              br_if 16 (;@5;)
                                              local.get 3
                                              local.get 15
                                              i32.sub
                                              i32.const 16
                                              i32.shl
                                              i32.const 268369920
                                              i32.and
                                              i32.const 35
                                              i32.const 34
                                              local.get 70
                                              select
                                              i32.or
                                              local.tee 8
                                              local.get 8
                                              i32.const 268435456
                                              i32.or
                                              local.get 10
                                              i32.const 46
                                              i32.eq
                                              select
                                              local.set 13
                                              local.get 5
                                              local.get 3
                                              i32.sub
                                              local.set 5
                                              local.get 7
                                              local.get 3
                                              i32.add
                                              local.set 7
                                              br 14 (;@7;)
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 5
                                                      local.get 6
                                                      i32.const 7
                                                      i32.add
                                                      local.tee 9
                                                      i32.lt_s
                                                      br_if 0 (;@25;)
                                                      local.get 5
                                                      local.get 9
                                                      i32.lt_u
                                                      br_if 20 (;@5;)
                                                      local.get 3
                                                      i32.const 7
                                                      i32.const 66646
                                                      i32.const 7
                                                      call $runtime.stringEqual
                                                      i32.const 1
                                                      i32.and
                                                      br_if 1 (;@24;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 5
                                                      local.get 6
                                                      i32.const 9
                                                      i32.add
                                                      local.tee 9
                                                      i32.lt_s
                                                      br_if 0 (;@25;)
                                                      local.get 5
                                                      local.get 9
                                                      i32.lt_u
                                                      br_if 20 (;@5;)
                                                      local.get 3
                                                      i32.const 9
                                                      i32.const 66653
                                                      i32.const 9
                                                      call $runtime.stringEqual
                                                      i32.const 1
                                                      i32.and
                                                      br_if 2 (;@23;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 5
                                                      local.get 6
                                                      i32.const 5
                                                      i32.add
                                                      local.tee 9
                                                      i32.lt_s
                                                      br_if 0 (;@25;)
                                                      local.get 5
                                                      local.get 9
                                                      i32.lt_u
                                                      br_if 20 (;@5;)
                                                      local.get 3
                                                      i32.const 5
                                                      i32.const 66662
                                                      i32.const 5
                                                      call $runtime.stringEqual
                                                      i32.const 1
                                                      i32.and
                                                      br_if 3 (;@22;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 5
                                                      local.get 6
                                                      i32.const 6
                                                      i32.add
                                                      local.tee 9
                                                      i32.lt_s
                                                      br_if 0 (;@25;)
                                                      local.get 5
                                                      local.get 9
                                                      i32.lt_u
                                                      br_if 20 (;@5;)
                                                      local.get 3
                                                      i32.const 6
                                                      i32.const 66667
                                                      i32.const 6
                                                      call $runtime.stringEqual
                                                      i32.const 1
                                                      i32.and
                                                      br_if 4 (;@21;)
                                                    end
                                                    local.get 5
                                                    local.get 6
                                                    i32.const 3
                                                    i32.add
                                                    local.tee 9
                                                    i32.lt_s
                                                    br_if 14 (;@10;)
                                                    local.get 5
                                                    local.get 9
                                                    i32.lt_u
                                                    br_if 19 (;@5;)
                                                    local.get 3
                                                    i32.const 3
                                                    i32.const 66673
                                                    i32.const 3
                                                    call $runtime.stringEqual
                                                    i32.const 1
                                                    i32.and
                                                    i32.eqz
                                                    br_if 14 (;@10;)
                                                    local.get 6
                                                    local.get 5
                                                    i32.gt_u
                                                    br_if 19 (;@5;)
                                                    local.get 5
                                                    local.get 9
                                                    i32.sub
                                                    local.set 5
                                                    local.get 7
                                                    local.get 9
                                                    i32.add
                                                    local.set 7
                                                    i32.const 26
                                                    local.set 13
                                                    br 17 (;@7;)
                                                  end
                                                  local.get 6
                                                  local.get 5
                                                  i32.gt_u
                                                  br_if 18 (;@5;)
                                                  local.get 5
                                                  local.get 9
                                                  i32.sub
                                                  local.set 5
                                                  local.get 7
                                                  local.get 9
                                                  i32.add
                                                  local.set 7
                                                  i32.const 25
                                                  local.set 13
                                                  br 16 (;@7;)
                                                end
                                                local.get 6
                                                local.get 5
                                                i32.gt_u
                                                br_if 17 (;@5;)
                                                local.get 5
                                                local.get 9
                                                i32.sub
                                                local.set 5
                                                local.get 7
                                                local.get 9
                                                i32.add
                                                local.set 7
                                                i32.const 28
                                                local.set 13
                                                br 15 (;@7;)
                                              end
                                              local.get 6
                                              local.get 5
                                              i32.gt_u
                                              br_if 16 (;@5;)
                                              local.get 5
                                              local.get 9
                                              i32.sub
                                              local.set 5
                                              local.get 7
                                              local.get 9
                                              i32.add
                                              local.set 7
                                              i32.const 24
                                              local.set 13
                                              br 14 (;@7;)
                                            end
                                            local.get 6
                                            local.get 5
                                            i32.gt_u
                                            br_if 15 (;@5;)
                                            local.get 5
                                            local.get 9
                                            i32.sub
                                            local.set 5
                                            local.get 7
                                            local.get 9
                                            i32.add
                                            local.set 7
                                            i32.const 27
                                            local.set 13
                                            br 13 (;@7;)
                                          end
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 5
                                                    local.get 6
                                                    i32.const 7
                                                    i32.add
                                                    local.tee 9
                                                    i32.lt_s
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    local.get 9
                                                    i32.lt_u
                                                    br_if 19 (;@5;)
                                                    local.get 3
                                                    i32.const 7
                                                    i32.const 66616
                                                    i32.const 7
                                                    call $runtime.stringEqual
                                                    i32.const 1
                                                    i32.and
                                                    br_if 1 (;@23;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 5
                                                    local.get 6
                                                    i32.const 9
                                                    i32.add
                                                    local.tee 9
                                                    i32.lt_s
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    local.get 9
                                                    i32.lt_u
                                                    br_if 19 (;@5;)
                                                    local.get 3
                                                    i32.const 9
                                                    i32.const 66623
                                                    i32.const 9
                                                    call $runtime.stringEqual
                                                    i32.const 1
                                                    i32.and
                                                    br_if 2 (;@22;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 5
                                                    local.get 6
                                                    i32.const 5
                                                    i32.add
                                                    local.tee 9
                                                    i32.lt_s
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    local.get 9
                                                    i32.lt_u
                                                    br_if 19 (;@5;)
                                                    local.get 3
                                                    i32.const 5
                                                    i32.const 66632
                                                    i32.const 5
                                                    call $runtime.stringEqual
                                                    i32.const 1
                                                    i32.and
                                                    br_if 3 (;@21;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 5
                                                    local.get 6
                                                    i32.const 6
                                                    i32.add
                                                    local.tee 9
                                                    i32.lt_s
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    local.get 9
                                                    i32.lt_u
                                                    br_if 19 (;@5;)
                                                    local.get 3
                                                    i32.const 6
                                                    i32.const 66637
                                                    i32.const 6
                                                    call $runtime.stringEqual
                                                    i32.const 1
                                                    i32.and
                                                    br_if 4 (;@20;)
                                                  end
                                                  local.get 5
                                                  local.get 6
                                                  i32.const 3
                                                  i32.add
                                                  local.tee 9
                                                  i32.lt_s
                                                  br_if 13 (;@10;)
                                                  local.get 5
                                                  local.get 9
                                                  i32.lt_u
                                                  br_if 18 (;@5;)
                                                  local.get 3
                                                  i32.const 3
                                                  i32.const 66643
                                                  i32.const 3
                                                  call $runtime.stringEqual
                                                  i32.const 1
                                                  i32.and
                                                  i32.eqz
                                                  br_if 13 (;@10;)
                                                  local.get 6
                                                  local.get 5
                                                  i32.gt_u
                                                  br_if 18 (;@5;)
                                                  local.get 5
                                                  local.get 9
                                                  i32.sub
                                                  local.set 5
                                                  local.get 7
                                                  local.get 9
                                                  i32.add
                                                  local.set 7
                                                  i32.const 31
                                                  local.set 13
                                                  br 16 (;@7;)
                                                end
                                                local.get 6
                                                local.get 5
                                                i32.gt_u
                                                br_if 17 (;@5;)
                                                local.get 5
                                                local.get 9
                                                i32.sub
                                                local.set 5
                                                local.get 7
                                                local.get 9
                                                i32.add
                                                local.set 7
                                                i32.const 30
                                                local.set 13
                                                br 15 (;@7;)
                                              end
                                              local.get 6
                                              local.get 5
                                              i32.gt_u
                                              br_if 16 (;@5;)
                                              local.get 5
                                              local.get 9
                                              i32.sub
                                              local.set 5
                                              local.get 7
                                              local.get 9
                                              i32.add
                                              local.set 7
                                              i32.const 33
                                              local.set 13
                                              br 14 (;@7;)
                                            end
                                            local.get 6
                                            local.get 5
                                            i32.gt_u
                                            br_if 15 (;@5;)
                                            local.get 5
                                            local.get 9
                                            i32.sub
                                            local.set 5
                                            local.get 7
                                            local.get 9
                                            i32.add
                                            local.set 7
                                            i32.const 29
                                            local.set 13
                                            br 13 (;@7;)
                                          end
                                          local.get 6
                                          local.get 5
                                          i32.gt_u
                                          br_if 14 (;@5;)
                                          local.get 5
                                          local.get 9
                                          i32.sub
                                          local.set 5
                                          local.get 7
                                          local.get 9
                                          i32.add
                                          local.set 7
                                          i32.const 32
                                          local.set 13
                                          br 12 (;@7;)
                                        end
                                        local.get 5
                                        local.get 6
                                        i32.const 2
                                        i32.add
                                        local.tee 3
                                        i32.lt_s
                                        br_if 8 (;@10;)
                                        local.get 6
                                        i32.const 1
                                        i32.add
                                        local.tee 9
                                        local.get 5
                                        i32.ge_u
                                        br_if 5 (;@13;)
                                        local.get 7
                                        local.get 9
                                        i32.add
                                        i32.load8_u
                                        i32.const 109
                                        i32.ne
                                        br_if 8 (;@10;)
                                        local.get 6
                                        local.get 5
                                        i32.gt_u
                                        br_if 13 (;@5;)
                                        local.get 5
                                        local.get 3
                                        i32.lt_u
                                        br_if 13 (;@5;)
                                        local.get 5
                                        local.get 3
                                        i32.sub
                                        local.set 5
                                        local.get 7
                                        local.get 3
                                        i32.add
                                        local.set 7
                                        i32.const 534
                                        local.set 13
                                        br 11 (;@7;)
                                      end
                                      local.get 5
                                      local.get 6
                                      i32.const 2
                                      i32.add
                                      local.tee 3
                                      i32.lt_s
                                      br_if 7 (;@10;)
                                      local.get 6
                                      i32.const 1
                                      i32.add
                                      local.tee 9
                                      local.get 5
                                      i32.ge_u
                                      br_if 4 (;@13;)
                                      local.get 7
                                      local.get 9
                                      i32.add
                                      i32.load8_u
                                      i32.const 77
                                      i32.ne
                                      br_if 7 (;@10;)
                                      local.get 6
                                      local.get 5
                                      i32.gt_u
                                      br_if 12 (;@5;)
                                      local.get 5
                                      local.get 3
                                      i32.lt_u
                                      br_if 12 (;@5;)
                                      local.get 5
                                      local.get 3
                                      i32.sub
                                      local.set 5
                                      local.get 7
                                      local.get 3
                                      i32.add
                                      local.set 7
                                      i32.const 533
                                      local.set 13
                                      br 10 (;@7;)
                                    end
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 5
                                        local.get 6
                                        i32.const 2
                                        i32.add
                                        local.tee 3
                                        i32.lt_s
                                        br_if 0 (;@18;)
                                        local.get 6
                                        i32.const 1
                                        i32.add
                                        local.tee 9
                                        local.get 5
                                        i32.ge_u
                                        br_if 5 (;@13;)
                                        local.get 7
                                        local.get 9
                                        i32.add
                                        local.tee 10
                                        i32.load8_u
                                        i32.const 50
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 5
                                        local.get 6
                                        i32.const 5
                                        i32.add
                                        local.tee 8
                                        i32.lt_s
                                        br_if 1 (;@17;)
                                        local.get 6
                                        i32.const -6
                                        i32.gt_u
                                        br_if 13 (;@5;)
                                        local.get 5
                                        local.get 8
                                        i32.lt_u
                                        br_if 13 (;@5;)
                                        local.get 10
                                        i32.const 4
                                        i32.const 66612
                                        i32.const 4
                                        call $runtime.stringEqual
                                        i32.const 1
                                        i32.and
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        local.get 6
                                        local.get 5
                                        i32.ge_u
                                        br_if 13 (;@5;)
                                        local.get 5
                                        local.get 8
                                        i32.sub
                                        local.set 5
                                        local.get 7
                                        local.get 8
                                        i32.add
                                        local.set 7
                                        i32.const 275
                                        local.set 13
                                        local.get 9
                                        local.set 6
                                        br 11 (;@7;)
                                      end
                                      local.get 5
                                      local.get 6
                                      i32.const 3
                                      i32.add
                                      local.tee 9
                                      i32.lt_s
                                      br_if 7 (;@10;)
                                      local.get 6
                                      i32.const 1
                                      i32.add
                                      local.tee 10
                                      local.get 5
                                      i32.ge_u
                                      br_if 4 (;@13;)
                                      local.get 7
                                      local.get 10
                                      i32.add
                                      i32.load8_u
                                      i32.const 95
                                      i32.ne
                                      br_if 7 (;@10;)
                                      local.get 5
                                      local.get 3
                                      i32.le_u
                                      br_if 4 (;@13;)
                                      local.get 7
                                      local.get 3
                                      i32.add
                                      i32.load8_u
                                      i32.const 50
                                      i32.ne
                                      br_if 7 (;@10;)
                                      local.get 6
                                      local.get 5
                                      i32.gt_u
                                      br_if 12 (;@5;)
                                      local.get 5
                                      local.get 9
                                      i32.lt_u
                                      br_if 12 (;@5;)
                                      local.get 5
                                      local.get 9
                                      i32.sub
                                      local.set 5
                                      local.get 7
                                      local.get 9
                                      i32.add
                                      local.set 7
                                      i32.const 266
                                      local.set 13
                                      br 10 (;@7;)
                                    end
                                    local.get 6
                                    local.get 5
                                    i32.gt_u
                                    br_if 11 (;@5;)
                                    local.get 5
                                    local.get 3
                                    i32.lt_u
                                    br_if 11 (;@5;)
                                    local.get 5
                                    local.get 3
                                    i32.sub
                                    local.set 5
                                    local.get 7
                                    local.get 3
                                    i32.add
                                    local.set 7
                                    i32.const 264
                                    local.set 13
                                    br 9 (;@7;)
                                  end
                                  block  ;; label = @16
                                    local.get 5
                                    local.get 6
                                    i32.const 4
                                    i32.add
                                    local.tee 8
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                    local.get 6
                                    i32.const -5
                                    i32.gt_u
                                    br_if 11 (;@5;)
                                    local.get 5
                                    local.get 8
                                    i32.lt_u
                                    br_if 11 (;@5;)
                                    local.get 3
                                    i32.const 4
                                    i32.const 66612
                                    i32.const 4
                                    call $runtime.stringEqual
                                    i32.const 1
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 6
                                    local.get 5
                                    i32.gt_u
                                    br_if 11 (;@5;)
                                    local.get 5
                                    local.get 8
                                    i32.sub
                                    local.set 5
                                    local.get 7
                                    local.get 8
                                    i32.add
                                    local.set 7
                                    i32.const 275
                                    local.set 13
                                    br 9 (;@7;)
                                  end
                                  local.get 6
                                  local.get 5
                                  i32.gt_u
                                  br_if 10 (;@5;)
                                  local.get 6
                                  local.get 5
                                  i32.ge_u
                                  br_if 10 (;@5;)
                                  local.get 5
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.tee 3
                                  i32.sub
                                  local.set 5
                                  local.get 7
                                  local.get 3
                                  i32.add
                                  local.set 7
                                  i32.const 263
                                  local.set 13
                                  br 8 (;@7;)
                                end
                                block  ;; label = @15
                                  local.get 5
                                  local.get 6
                                  i32.const 2
                                  i32.add
                                  local.tee 3
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.tee 8
                                  local.get 5
                                  i32.ge_u
                                  br_if 2 (;@13;)
                                  local.get 7
                                  local.get 8
                                  i32.add
                                  i32.load8_u
                                  i32.const 53
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 6
                                  local.get 5
                                  i32.gt_u
                                  br_if 10 (;@5;)
                                  local.get 5
                                  local.get 3
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 5
                                  local.get 3
                                  i32.sub
                                  local.set 5
                                  local.get 7
                                  local.get 3
                                  i32.add
                                  local.set 7
                                  i32.const 524
                                  local.set 13
                                  br 8 (;@7;)
                                end
                                local.get 6
                                local.get 5
                                i32.gt_u
                                br_if 9 (;@5;)
                                local.get 6
                                local.get 5
                                i32.ge_u
                                br_if 9 (;@5;)
                                local.get 5
                                local.get 6
                                i32.const 1
                                i32.add
                                local.tee 3
                                i32.sub
                                local.set 5
                                local.get 7
                                local.get 3
                                i32.add
                                local.set 7
                                i32.const 259
                                local.set 13
                                br 7 (;@7;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  local.get 6
                                  i32.const 2
                                  i32.add
                                  local.tee 3
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.tee 9
                                  local.get 5
                                  i32.ge_u
                                  br_if 2 (;@13;)
                                  local.get 7
                                  local.get 9
                                  i32.add
                                  i32.load8_u
                                  i32.const -49
                                  i32.add
                                  i32.const 255
                                  i32.and
                                  local.tee 9
                                  i32.const 6
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                end
                                local.get 5
                                local.get 6
                                i32.const 3
                                i32.add
                                local.tee 9
                                i32.lt_s
                                br_if 4 (;@10;)
                                local.get 6
                                i32.const 1
                                i32.add
                                local.tee 10
                                local.get 5
                                i32.ge_u
                                br_if 1 (;@13;)
                                local.get 7
                                local.get 10
                                i32.add
                                i32.load8_u
                                i32.const 48
                                i32.ne
                                br_if 4 (;@10;)
                                local.get 5
                                local.get 3
                                i32.le_u
                                br_if 1 (;@13;)
                                local.get 7
                                local.get 3
                                i32.add
                                i32.load8_u
                                i32.const 50
                                i32.ne
                                br_if 4 (;@10;)
                                local.get 6
                                local.get 5
                                i32.gt_u
                                br_if 9 (;@5;)
                                local.get 5
                                local.get 9
                                i32.lt_u
                                br_if 9 (;@5;)
                                local.get 5
                                local.get 9
                                i32.sub
                                local.set 5
                                local.get 7
                                local.get 9
                                i32.add
                                local.set 7
                                i32.const 267
                                local.set 13
                                br 7 (;@7;)
                              end
                              local.get 6
                              local.get 5
                              i32.gt_u
                              br_if 8 (;@5;)
                              local.get 5
                              local.get 3
                              i32.lt_u
                              br_if 8 (;@5;)
                              local.get 5
                              local.get 3
                              i32.sub
                              local.set 5
                              local.get 7
                              local.get 3
                              i32.add
                              local.set 7
                              local.get 9
                              i32.const 2
                              i32.shl
                              i32.const 66308
                              i32.add
                              i32.load
                              local.set 13
                              br 6 (;@7;)
                            end
                            call $runtime.lookupPanic
                            unreachable
                          end
                          local.get 5
                          local.get 6
                          i32.const 3
                          i32.add
                          local.tee 9
                          i32.lt_s
                          br_if 1 (;@10;)
                          local.get 5
                          local.get 9
                          i32.lt_u
                          br_if 6 (;@5;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.const 3
                              i32.const 66600
                              i32.const 3
                              call $runtime.stringEqual
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    local.get 6
                                    i32.const 6
                                    i32.add
                                    local.tee 10
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    local.get 10
                                    i32.lt_u
                                    br_if 11 (;@5;)
                                    local.get 3
                                    i32.const 6
                                    i32.const 66603
                                    i32.const 6
                                    call $runtime.stringEqual
                                    i32.const 1
                                    i32.and
                                    br_if 1 (;@15;)
                                  end
                                  local.get 7
                                  local.get 9
                                  i32.add
                                  local.set 10
                                  local.get 5
                                  local.get 9
                                  i32.sub
                                  local.tee 11
                                  br_if 1 (;@14;)
                                  br 3 (;@12;)
                                end
                                local.get 6
                                local.get 5
                                i32.gt_u
                                br_if 9 (;@5;)
                                local.get 5
                                local.get 10
                                i32.sub
                                local.set 5
                                local.get 7
                                local.get 10
                                i32.add
                                local.set 7
                                i32.const 261
                                local.set 13
                                br 7 (;@7;)
                              end
                              local.get 10
                              i32.load8_u
                              i32.const -97
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 26
                              i32.ge_u
                              br_if 1 (;@12;)
                            end
                            local.get 3
                            i32.const 3
                            i32.const 66609
                            i32.const 3
                            call $runtime.stringEqual
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 6
                            local.get 5
                            i32.gt_u
                            br_if 7 (;@5;)
                            local.get 5
                            local.get 9
                            i32.sub
                            local.set 5
                            local.get 7
                            local.get 9
                            i32.add
                            local.set 7
                            i32.const 23
                            local.set 13
                            br 5 (;@7;)
                          end
                          local.get 6
                          local.get 5
                          i32.gt_u
                          br_if 6 (;@5;)
                          i32.const 262
                          local.set 13
                          local.get 10
                          local.set 7
                          local.get 11
                          local.set 5
                          br 4 (;@7;)
                        end
                        local.get 5
                        local.get 6
                        i32.const 3
                        i32.add
                        local.tee 9
                        i32.lt_s
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 9
                        i32.lt_u
                        br_if 5 (;@5;)
                        local.get 3
                        i32.const 3
                        i32.const 66590
                        i32.const 3
                        call $runtime.stringEqual
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              local.get 6
                              i32.const 7
                              i32.add
                              local.tee 10
                              i32.lt_s
                              br_if 0 (;@13;)
                              local.get 5
                              local.get 10
                              i32.lt_u
                              br_if 8 (;@5;)
                              local.get 3
                              i32.const 7
                              i32.const 66593
                              i32.const 7
                              call $runtime.stringEqual
                              i32.const 1
                              i32.and
                              br_if 1 (;@12;)
                            end
                            local.get 7
                            local.get 9
                            i32.add
                            local.set 3
                            local.get 5
                            local.get 9
                            i32.sub
                            local.tee 9
                            br_if 1 (;@11;)
                            br 3 (;@9;)
                          end
                          local.get 6
                          local.get 5
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 5
                          local.get 10
                          i32.sub
                          local.set 5
                          local.get 7
                          local.get 10
                          i32.add
                          local.set 7
                          i32.const 257
                          local.set 13
                          br 4 (;@7;)
                        end
                        local.get 3
                        i32.load8_u
                        i32.const -97
                        i32.add
                        i32.const 255
                        i32.and
                        i32.const 26
                        i32.ge_u
                        br_if 1 (;@9;)
                      end
                      local.get 8
                      i32.const 1
                      i32.add
                      local.set 8
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      br 1 (;@8;)
                    end
                  end
                  local.get 6
                  local.get 5
                  i32.gt_u
                  br_if 2 (;@5;)
                  i32.const 258
                  local.set 13
                  local.get 3
                  local.set 7
                  local.get 9
                  local.set 5
                end
                local.get 36
                local.get 7
                i32.store
                block  ;; label = @7
                  local.get 6
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 816
                  i32.add
                  local.get 14
                  local.get 69
                  local.get 16
                  local.get 18
                  local.get 6
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 61
                  local.get 4
                  i32.load offset=816
                  local.tee 14
                  i32.store
                  local.get 4
                  i32.load offset=824
                  local.set 18
                  local.get 4
                  i32.load offset=820
                  local.set 16
                end
                local.get 37
                local.get 14
                i32.store
                local.get 13
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 62
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 13
                  i32.const 256
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 800
                  i32.add
                  local.get 24
                  i32.const 1
                  call $time.absDate
                  local.get 4
                  i32.load offset=812
                  i32.const 1
                  i32.add
                  local.set 65
                  local.get 4
                  i32.load offset=808
                  local.set 64
                  local.get 4
                  i32.load offset=804
                  local.set 63
                  local.get 4
                  i32.load offset=800
                  local.set 62
                end
                local.get 27
                local.get 68
                local.get 66
                i32.const 0
                i32.lt_s
                local.get 13
                i32.const 512
                i32.and
                i32.const 9
                i32.shr_u
                i32.and
                local.tee 3
                select
                local.set 68
                local.get 26
                local.get 67
                local.get 3
                select
                local.set 67
                local.get 25
                local.get 66
                local.get 3
                select
                local.set 66
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 13
                            i32.const 65535
                            i32.and
                            local.tee 9
                            i32.const -23
                            i32.add
                            br_table 2 (;@10;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 3 (;@9;) 3 (;@9;) 0 (;@12;)
                          end
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
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 9
                                                                    i32.const -257
                                                                    i32.add
                                                                    br_table 3 (;@29;) 24 (;@8;) 4 (;@28;) 5 (;@27;) 6 (;@26;) 25 (;@7;) 7 (;@25;) 8 (;@24;) 9 (;@23;) 10 (;@22;) 11 (;@21;) 31 (;@1;) 31 (;@1;) 31 (;@1;) 31 (;@1;) 31 (;@1;) 31 (;@1;) 31 (;@1;) 2 (;@30;) 1 (;@31;) 0 (;@32;)
                                                                  end
                                                                  local.get 9
                                                                  i32.const -524
                                                                  i32.add
                                                                  br_table 11 (;@20;) 12 (;@19;) 13 (;@18;) 14 (;@17;) 15 (;@16;) 16 (;@15;) 17 (;@14;) 30 (;@1;) 30 (;@1;) 18 (;@13;) 19 (;@12;) 30 (;@1;)
                                                                end
                                                                local.get 4
                                                                i32.const 128
                                                                i32.add
                                                                local.get 14
                                                                local.get 16
                                                                local.get 18
                                                                local.get 62
                                                                local.get 62
                                                                i32.const 31
                                                                i32.shr_s
                                                                local.tee 3
                                                                i32.add
                                                                local.get 3
                                                                i32.xor
                                                                i32.const 100
                                                                i32.rem_s
                                                                i32.const 2
                                                                call $time.appendInt
                                                                local.get 4
                                                                i32.load offset=136
                                                                local.set 18
                                                                local.get 4
                                                                i32.load offset=132
                                                                local.set 16
                                                                local.get 4
                                                                i32.load offset=128
                                                                local.set 14
                                                                br 28 (;@2;)
                                                              end
                                                              local.get 4
                                                              i32.const 144
                                                              i32.add
                                                              local.get 14
                                                              local.get 16
                                                              local.get 18
                                                              local.get 62
                                                              i32.const 4
                                                              call $time.appendInt
                                                              local.get 4
                                                              i32.load offset=152
                                                              local.set 18
                                                              local.get 4
                                                              i32.load offset=148
                                                              local.set 16
                                                              local.get 4
                                                              i32.load offset=144
                                                              local.set 14
                                                              br 27 (;@2;)
                                                            end
                                                            local.get 4
                                                            i32.const 200
                                                            i32.add
                                                            local.get 63
                                                            call $_time.Month_.String
                                                            local.get 38
                                                            local.get 4
                                                            i32.load offset=200
                                                            local.tee 3
                                                            i32.store
                                                            local.get 4
                                                            i32.const 184
                                                            i32.add
                                                            local.get 14
                                                            local.get 3
                                                            local.get 16
                                                            local.get 18
                                                            local.get 4
                                                            i32.load offset=204
                                                            i32.const 1
                                                            call $runtime.sliceAppend
                                                            local.get 4
                                                            i32.load offset=192
                                                            local.set 18
                                                            local.get 4
                                                            i32.load offset=188
                                                            local.set 16
                                                            local.get 4
                                                            i32.load offset=184
                                                            local.set 14
                                                            br 26 (;@2;)
                                                          end
                                                          local.get 4
                                                          i32.const 208
                                                          i32.add
                                                          local.get 14
                                                          local.get 16
                                                          local.get 18
                                                          local.get 63
                                                          i32.const 0
                                                          call $time.appendInt
                                                          local.get 4
                                                          i32.load offset=216
                                                          local.set 18
                                                          local.get 4
                                                          i32.load offset=212
                                                          local.set 16
                                                          local.get 4
                                                          i32.load offset=208
                                                          local.set 14
                                                          br 25 (;@2;)
                                                        end
                                                        local.get 4
                                                        i32.const 224
                                                        i32.add
                                                        local.get 14
                                                        local.get 16
                                                        local.get 18
                                                        local.get 63
                                                        i32.const 2
                                                        call $time.appendInt
                                                        local.get 4
                                                        i32.load offset=232
                                                        local.set 18
                                                        local.get 4
                                                        i32.load offset=228
                                                        local.set 16
                                                        local.get 4
                                                        i32.load offset=224
                                                        local.set 14
                                                        br 24 (;@2;)
                                                      end
                                                      local.get 4
                                                      i32.const 280
                                                      i32.add
                                                      local.get 31
                                                      call $_time.Weekday_.String
                                                      local.get 40
                                                      local.get 4
                                                      i32.load offset=280
                                                      local.tee 3
                                                      i32.store
                                                      local.get 4
                                                      i32.const 264
                                                      i32.add
                                                      local.get 14
                                                      local.get 3
                                                      local.get 16
                                                      local.get 18
                                                      local.get 4
                                                      i32.load offset=284
                                                      i32.const 1
                                                      call $runtime.sliceAppend
                                                      local.get 4
                                                      i32.load offset=272
                                                      local.set 18
                                                      local.get 4
                                                      i32.load offset=268
                                                      local.set 16
                                                      local.get 4
                                                      i32.load offset=264
                                                      local.set 14
                                                      br 23 (;@2;)
                                                    end
                                                    local.get 4
                                                    i32.const 288
                                                    i32.add
                                                    local.get 14
                                                    local.get 16
                                                    local.get 18
                                                    local.get 64
                                                    i32.const 0
                                                    call $time.appendInt
                                                    local.get 4
                                                    i32.load offset=296
                                                    local.set 18
                                                    local.get 4
                                                    i32.load offset=292
                                                    local.set 16
                                                    local.get 4
                                                    i32.load offset=288
                                                    local.set 14
                                                    br 22 (;@2;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 64
                                                    i32.const 9
                                                    i32.gt_s
                                                    br_if 0 (;@24;)
                                                    local.get 4
                                                    i32.const 32
                                                    i32.store8 offset=942
                                                    local.get 4
                                                    i32.const 320
                                                    i32.add
                                                    local.get 14
                                                    local.get 4
                                                    i32.const 942
                                                    i32.add
                                                    local.get 16
                                                    local.get 18
                                                    i32.const 1
                                                    i32.const 1
                                                    call $runtime.sliceAppend
                                                    local.get 42
                                                    local.get 4
                                                    i32.load offset=320
                                                    local.tee 14
                                                    i32.store
                                                    local.get 4
                                                    i32.load offset=328
                                                    local.set 18
                                                    local.get 4
                                                    i32.load offset=324
                                                    local.set 16
                                                  end
                                                  local.get 43
                                                  local.get 14
                                                  i32.store
                                                  local.get 4
                                                  i32.const 304
                                                  i32.add
                                                  local.get 14
                                                  local.get 16
                                                  local.get 18
                                                  local.get 64
                                                  i32.const 0
                                                  call $time.appendInt
                                                  local.get 4
                                                  i32.load offset=312
                                                  local.set 18
                                                  local.get 4
                                                  i32.load offset=308
                                                  local.set 16
                                                  local.get 4
                                                  i32.load offset=304
                                                  local.set 14
                                                  br 21 (;@2;)
                                                end
                                                local.get 4
                                                i32.const 336
                                                i32.add
                                                local.get 14
                                                local.get 16
                                                local.get 18
                                                local.get 64
                                                i32.const 2
                                                call $time.appendInt
                                                local.get 4
                                                i32.load offset=344
                                                local.set 18
                                                local.get 4
                                                i32.load offset=340
                                                local.set 16
                                                local.get 4
                                                i32.load offset=336
                                                local.set 14
                                                br 20 (;@2;)
                                              end
                                              block  ;; label = @22
                                                local.get 65
                                                i32.const 99
                                                i32.gt_s
                                                br_if 0 (;@22;)
                                                local.get 4
                                                i32.const 32
                                                i32.store8 offset=941
                                                local.get 4
                                                i32.const 384
                                                i32.add
                                                local.get 14
                                                local.get 4
                                                i32.const 941
                                                i32.add
                                                local.get 16
                                                local.get 18
                                                i32.const 1
                                                i32.const 1
                                                call $runtime.sliceAppend
                                                local.get 44
                                                local.get 4
                                                i32.load offset=384
                                                local.tee 14
                                                i32.store
                                                local.get 4
                                                i32.load offset=392
                                                local.set 18
                                                local.get 4
                                                i32.load offset=388
                                                local.set 16
                                                local.get 65
                                                i32.const 9
                                                i32.gt_s
                                                br_if 0 (;@22;)
                                                local.get 4
                                                i32.const 32
                                                i32.store8 offset=940
                                                local.get 4
                                                i32.const 368
                                                i32.add
                                                local.get 14
                                                local.get 4
                                                i32.const 940
                                                i32.add
                                                local.get 16
                                                local.get 18
                                                i32.const 1
                                                i32.const 1
                                                call $runtime.sliceAppend
                                                local.get 45
                                                local.get 4
                                                i32.load offset=368
                                                local.tee 14
                                                i32.store
                                                local.get 4
                                                i32.load offset=376
                                                local.set 18
                                                local.get 4
                                                i32.load offset=372
                                                local.set 16
                                              end
                                              local.get 46
                                              local.get 14
                                              i32.store
                                              local.get 4
                                              i32.const 352
                                              i32.add
                                              local.get 14
                                              local.get 16
                                              local.get 18
                                              local.get 65
                                              i32.const 0
                                              call $time.appendInt
                                              local.get 4
                                              i32.load offset=360
                                              local.set 18
                                              local.get 4
                                              i32.load offset=356
                                              local.set 16
                                              local.get 4
                                              i32.load offset=352
                                              local.set 14
                                              br 19 (;@2;)
                                            end
                                            local.get 4
                                            i32.const 400
                                            i32.add
                                            local.get 14
                                            local.get 16
                                            local.get 18
                                            local.get 65
                                            i32.const 3
                                            call $time.appendInt
                                            local.get 4
                                            i32.load offset=408
                                            local.set 18
                                            local.get 4
                                            i32.load offset=404
                                            local.set 16
                                            local.get 4
                                            i32.load offset=400
                                            local.set 14
                                            br 18 (;@2;)
                                          end
                                          local.get 4
                                          i32.const 416
                                          i32.add
                                          local.get 14
                                          local.get 16
                                          local.get 18
                                          local.get 66
                                          i32.const 2
                                          call $time.appendInt
                                          local.get 4
                                          i32.load offset=424
                                          local.set 18
                                          local.get 4
                                          i32.load offset=420
                                          local.set 16
                                          local.get 4
                                          i32.load offset=416
                                          local.set 14
                                          br 17 (;@2;)
                                        end
                                        local.get 4
                                        i32.const 432
                                        i32.add
                                        local.get 14
                                        local.get 16
                                        local.get 18
                                        local.get 66
                                        i32.const 12
                                        i32.rem_s
                                        local.tee 3
                                        i32.const 12
                                        local.get 3
                                        select
                                        i32.const 0
                                        call $time.appendInt
                                        local.get 4
                                        i32.load offset=440
                                        local.set 18
                                        local.get 4
                                        i32.load offset=436
                                        local.set 16
                                        local.get 4
                                        i32.load offset=432
                                        local.set 14
                                        br 16 (;@2;)
                                      end
                                      local.get 4
                                      i32.const 448
                                      i32.add
                                      local.get 14
                                      local.get 16
                                      local.get 18
                                      local.get 66
                                      i32.const 12
                                      i32.rem_s
                                      local.tee 3
                                      i32.const 12
                                      local.get 3
                                      select
                                      i32.const 2
                                      call $time.appendInt
                                      local.get 4
                                      i32.load offset=456
                                      local.set 18
                                      local.get 4
                                      i32.load offset=452
                                      local.set 16
                                      local.get 4
                                      i32.load offset=448
                                      local.set 14
                                      br 15 (;@2;)
                                    end
                                    local.get 4
                                    i32.const 464
                                    i32.add
                                    local.get 14
                                    local.get 16
                                    local.get 18
                                    local.get 67
                                    i32.const 0
                                    call $time.appendInt
                                    local.get 4
                                    i32.load offset=472
                                    local.set 18
                                    local.get 4
                                    i32.load offset=468
                                    local.set 16
                                    local.get 4
                                    i32.load offset=464
                                    local.set 14
                                    br 14 (;@2;)
                                  end
                                  local.get 4
                                  i32.const 480
                                  i32.add
                                  local.get 14
                                  local.get 16
                                  local.get 18
                                  local.get 67
                                  i32.const 2
                                  call $time.appendInt
                                  local.get 4
                                  i32.load offset=488
                                  local.set 18
                                  local.get 4
                                  i32.load offset=484
                                  local.set 16
                                  local.get 4
                                  i32.load offset=480
                                  local.set 14
                                  br 13 (;@2;)
                                end
                                local.get 4
                                i32.const 496
                                i32.add
                                local.get 14
                                local.get 16
                                local.get 18
                                local.get 68
                                i32.const 0
                                call $time.appendInt
                                local.get 4
                                i32.load offset=504
                                local.set 18
                                local.get 4
                                i32.load offset=500
                                local.set 16
                                local.get 4
                                i32.load offset=496
                                local.set 14
                                br 12 (;@2;)
                              end
                              local.get 4
                              i32.const 512
                              i32.add
                              local.get 14
                              local.get 16
                              local.get 18
                              local.get 68
                              i32.const 2
                              call $time.appendInt
                              local.get 4
                              i32.load offset=520
                              local.set 18
                              local.get 4
                              i32.load offset=516
                              local.set 16
                              local.get 4
                              i32.load offset=512
                              local.set 14
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 66
                              i32.const 12
                              i32.lt_s
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 528
                              i32.add
                              local.get 14
                              i32.const 66739
                              local.get 16
                              local.get 18
                              i32.const 2
                              i32.const 1
                              call $runtime.sliceAppend
                              local.get 4
                              i32.load offset=536
                              local.set 18
                              local.get 4
                              i32.load offset=532
                              local.set 16
                              local.get 4
                              i32.load offset=528
                              local.set 14
                              br 11 (;@2;)
                            end
                            local.get 4
                            i32.const 544
                            i32.add
                            local.get 14
                            i32.const 66741
                            local.get 16
                            local.get 18
                            i32.const 2
                            i32.const 1
                            call $runtime.sliceAppend
                            local.get 4
                            i32.load offset=552
                            local.set 18
                            local.get 4
                            i32.load offset=548
                            local.set 16
                            local.get 4
                            i32.load offset=544
                            local.set 14
                            br 10 (;@2;)
                          end
                          block  ;; label = @12
                            local.get 66
                            i32.const 12
                            i32.lt_s
                            br_if 0 (;@12;)
                            local.get 4
                            i32.const 560
                            i32.add
                            local.get 14
                            i32.const 66743
                            local.get 16
                            local.get 18
                            i32.const 2
                            i32.const 1
                            call $runtime.sliceAppend
                            local.get 4
                            i32.load offset=568
                            local.set 18
                            local.get 4
                            i32.load offset=564
                            local.set 16
                            local.get 4
                            i32.load offset=560
                            local.set 14
                            br 10 (;@2;)
                          end
                          local.get 4
                          i32.const 576
                          i32.add
                          local.get 14
                          i32.const 66745
                          local.get 16
                          local.get 18
                          i32.const 2
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 4
                          i32.load offset=584
                          local.set 18
                          local.get 4
                          i32.load offset=580
                          local.set 16
                          local.get 4
                          i32.load offset=576
                          local.set 14
                          br 9 (;@2;)
                        end
                        block  ;; label = @11
                          local.get 23
                          br_if 0 (;@11;)
                          local.get 13
                          i32.const -24
                          i32.add
                          i32.const 4
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 90
                          i32.store8 offset=939
                          local.get 4
                          i32.const 592
                          i32.add
                          local.get 14
                          local.get 4
                          i32.const 939
                          i32.add
                          local.get 16
                          local.get 18
                          i32.const 1
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 4
                          i32.load offset=600
                          local.set 18
                          local.get 4
                          i32.load offset=596
                          local.set 16
                          local.get 4
                          i32.load offset=592
                          local.set 14
                          br 9 (;@2;)
                        end
                        block  ;; label = @11
                          local.get 23
                          i32.const -60
                          i32.gt_s
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 45
                          i32.store8 offset=938
                          local.get 4
                          i32.const 938
                          i32.add
                          local.set 3
                          local.get 30
                          local.set 6
                          local.get 28
                          local.set 8
                          br 8 (;@3;)
                        end
                        local.get 4
                        i32.const 43
                        i32.store8 offset=935
                        local.get 4
                        i32.const 935
                        i32.add
                        local.set 3
                        local.get 29
                        local.set 6
                        local.get 23
                        local.set 8
                        br 7 (;@3;)
                      end
                      block  ;; label = @10
                        local.get 22
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 752
                        i32.add
                        local.get 14
                        local.get 21
                        local.get 16
                        local.get 18
                        local.get 22
                        i32.const 1
                        call $runtime.sliceAppend
                        local.get 4
                        i32.load offset=760
                        local.set 18
                        local.get 4
                        i32.load offset=756
                        local.set 16
                        local.get 4
                        i32.load offset=752
                        local.set 14
                        br 8 (;@2;)
                      end
                      block  ;; label = @10
                        local.get 23
                        i32.const -60
                        i32.gt_s
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 45
                        i32.store8 offset=934
                        local.get 4
                        i32.const 934
                        i32.add
                        local.set 6
                        local.get 30
                        local.set 3
                        br 6 (;@4;)
                      end
                      local.get 4
                      i32.const 43
                      i32.store8 offset=933
                      local.get 4
                      i32.const 933
                      i32.add
                      local.set 6
                      local.get 29
                      local.set 3
                      br 5 (;@4;)
                    end
                    local.get 1
                    local.get 2
                    local.get 19
                    call $_time.Time_.Nanosecond
                    local.set 6
                    i32.const 8
                    local.set 3
                    local.get 4
                    i32.const 944
                    i32.add
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 4
                    i64.const 0
                    i64.store offset=944
                    local.get 13
                    i32.const 16
                    i32.shr_u
                    local.set 10
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 10
                        i32.const 4095
                        i32.and
                        local.tee 3
                        i32.const 9
                        local.get 3
                        i32.const 9
                        i32.lt_u
                        select
                        local.set 3
                        block  ;; label = @11
                          local.get 9
                          i32.const 35
                          i32.ne
                          br_if 0 (;@11;)
                          loop  ;; label = @12
                            local.get 3
                            i32.const 0
                            i32.le_s
                            br_if 10 (;@2;)
                            local.get 32
                            local.get 3
                            i32.add
                            local.set 6
                            local.get 3
                            i32.const -1
                            i32.add
                            local.tee 8
                            local.set 3
                            local.get 6
                            i32.load8_u
                            i32.const 48
                            i32.eq
                            br_if 0 (;@12;)
                          end
                          local.get 8
                          i32.const 1
                          i32.add
                          local.set 3
                        end
                        local.get 4
                        i32.const 46
                        i32.const 44
                        local.get 13
                        i32.const 268435456
                        i32.lt_u
                        select
                        i32.store8 offset=943
                        local.get 4
                        i32.const 784
                        i32.add
                        local.get 14
                        local.get 4
                        i32.const 943
                        i32.add
                        local.get 16
                        local.get 18
                        i32.const 1
                        i32.const 1
                        call $runtime.sliceAppend
                        local.get 60
                        local.get 4
                        i32.load offset=784
                        local.tee 6
                        i32.store
                        local.get 3
                        i32.const 9
                        i32.gt_u
                        br_if 5 (;@5;)
                        local.get 4
                        i32.const 768
                        i32.add
                        local.get 6
                        local.get 4
                        i32.const 944
                        i32.add
                        local.get 4
                        i32.load offset=788
                        local.get 4
                        i32.load offset=792
                        local.get 3
                        i32.const 1
                        call $runtime.sliceAppend
                        local.get 4
                        i32.const 968
                        i32.add
                        i32.const 256
                        i32.add
                        local.get 4
                        i32.load offset=768
                        local.tee 14
                        i32.store
                        local.get 4
                        i32.load offset=776
                        local.set 18
                        local.get 4
                        i32.load offset=772
                        local.set 16
                        br 8 (;@2;)
                      end
                      local.get 4
                      i32.const 944
                      i32.add
                      local.get 3
                      i32.add
                      local.get 6
                      local.get 6
                      i32.const 10
                      i32.div_u
                      local.tee 8
                      i32.const 10
                      i32.mul
                      i32.sub
                      i32.const 48
                      i32.or
                      i32.store8
                      local.get 3
                      i32.const -1
                      i32.add
                      local.set 3
                      local.get 8
                      local.set 6
                      br 0 (;@9;)
                    end
                  end
                  local.get 4
                  i32.const 176
                  i32.add
                  local.get 63
                  call $_time.Month_.String
                  local.get 39
                  local.get 4
                  i32.load offset=176
                  local.tee 3
                  i32.store
                  local.get 4
                  i32.load offset=180
                  i32.const 3
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 4
                  i32.const 160
                  i32.add
                  local.get 14
                  local.get 3
                  local.get 16
                  local.get 18
                  i32.const 3
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 4
                  i32.load offset=168
                  local.set 18
                  local.get 4
                  i32.load offset=164
                  local.set 16
                  local.get 4
                  i32.load offset=160
                  local.set 14
                  br 5 (;@2;)
                end
                local.get 4
                i32.const 256
                i32.add
                local.get 31
                call $_time.Weekday_.String
                local.get 41
                local.get 4
                i32.load offset=256
                local.tee 3
                i32.store
                local.get 4
                i32.load offset=260
                i32.const 3
                i32.lt_u
                br_if 1 (;@5;)
                local.get 4
                i32.const 240
                i32.add
                local.get 14
                local.get 3
                local.get 16
                local.get 18
                i32.const 3
                i32.const 1
                call $runtime.sliceAppend
                local.get 4
                i32.load offset=248
                local.set 18
                local.get 4
                i32.load offset=244
                local.set 16
                local.get 4
                i32.load offset=240
                local.set 14
                br 4 (;@2;)
              end
              local.get 4
              i32.const 1228
              i32.add
              local.get 14
              i32.store
              local.get 4
              i32.const 1232
              i32.add
              local.get 14
              i32.store
              local.get 4
              i32.const 120
              i32.add
              local.get 14
              local.get 16
              local.get 18
              call $runtime.stringFromBytes
              local.get 4
              i32.const 1240
              i32.add
              local.get 4
              i32.load offset=120
              local.tee 3
              i32.store
              local.get 4
              i32.const 1236
              i32.add
              local.get 3
              i32.store
              local.get 4
              i32.load offset=124
              local.set 5
              block  ;; label = @6
                local.get 4
                i64.load offset=848
                i64.const -1
                i64.gt_s
                br_if 0 (;@6;)
                local.get 4
                i64.load offset=856
                local.set 24
                i32.const 0
                local.set 9
                local.get 4
                i32.const 104
                i32.add
                i32.const 0
                i32.const 66786
                i32.const 0
                i32.const 0
                i32.const 3
                i32.const 1
                call $runtime.sliceAppend
                local.get 4
                i32.const 1280
                i32.add
                local.get 4
                i32.load offset=104
                local.tee 6
                i32.store
                local.get 4
                i32.const 1284
                i32.add
                local.get 4
                i32.const 878
                i32.add
                i32.store
                local.get 4
                i32.const 45
                i32.const 43
                local.get 24
                i64.const 0
                i64.lt_s
                select
                i32.store8 offset=878
                local.get 4
                i32.const 88
                i32.add
                local.get 6
                local.get 4
                i32.const 878
                i32.add
                local.get 4
                i32.load offset=108
                local.get 4
                i32.load offset=112
                i32.const 1
                i32.const 1
                call $runtime.sliceAppend
                local.get 4
                i32.const 1288
                i32.add
                local.get 4
                i32.load offset=88
                local.tee 6
                i32.store
                local.get 24
                local.get 24
                i64.const 63
                i64.shr_s
                local.tee 1
                i64.add
                local.get 1
                i64.xor
                local.tee 24
                local.get 24
                i64.const 1000000000
                i64.div_u
                local.tee 1
                i64.const 1000000000
                i64.mul
                i64.sub
                local.set 2
                local.get 1
                i64.const 1000000000
                i64.rem_u
                local.set 1
                local.get 4
                i32.load offset=96
                local.set 7
                local.get 4
                i32.load offset=92
                local.set 8
                block  ;; label = @7
                  local.get 24
                  i64.const 1000000000000000000
                  i64.lt_u
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 72
                  i32.add
                  local.get 6
                  local.get 8
                  local.get 7
                  local.get 24
                  i64.const 1000000000000000000
                  i64.div_u
                  i32.wrap_i64
                  i32.const 0
                  call $time.appendInt
                  local.get 4
                  i32.const 1244
                  i32.add
                  local.get 4
                  i32.load offset=72
                  local.tee 6
                  i32.store
                  i32.const 9
                  local.set 9
                  local.get 4
                  i32.load offset=80
                  local.set 7
                  local.get 4
                  i32.load offset=76
                  local.set 8
                end
                local.get 4
                i32.const 1248
                i32.add
                local.get 6
                i32.store
                local.get 4
                i32.const 56
                i32.add
                local.get 6
                local.get 8
                local.get 7
                local.get 1
                i32.wrap_i64
                local.get 9
                call $time.appendInt
                local.get 4
                i32.const 1252
                i32.add
                local.get 4
                i32.load offset=56
                local.tee 6
                i32.store
                local.get 4
                i32.const 1256
                i32.add
                local.get 4
                i32.const 879
                i32.add
                i32.store
                local.get 4
                i32.const 46
                i32.store8 offset=879
                local.get 4
                i32.const 40
                i32.add
                local.get 6
                local.get 4
                i32.const 879
                i32.add
                local.get 4
                i32.load offset=60
                local.get 4
                i32.load offset=64
                i32.const 1
                i32.const 1
                call $runtime.sliceAppend
                local.get 4
                i32.const 1260
                i32.add
                local.get 4
                i32.load offset=40
                local.tee 6
                i32.store
                local.get 4
                i32.const 24
                i32.add
                local.get 6
                local.get 4
                i32.load offset=44
                local.get 4
                i32.load offset=48
                local.get 2
                i32.wrap_i64
                i32.const 9
                call $time.appendInt
                local.get 4
                i32.const 1264
                i32.add
                local.get 4
                i32.load offset=24
                local.tee 6
                i32.store
                local.get 4
                i32.const 16
                i32.add
                local.get 6
                local.get 4
                i32.load offset=28
                local.get 4
                i32.load offset=32
                call $runtime.stringFromBytes
                local.get 4
                i32.const 1268
                i32.add
                local.get 4
                i32.load offset=16
                local.tee 6
                i32.store
                local.get 4
                i32.const 8
                i32.add
                local.get 3
                local.get 5
                local.get 6
                local.get 4
                i32.load offset=20
                call $runtime.stringConcat
                local.get 4
                i32.const 1272
                i32.add
                local.get 4
                i32.load offset=8
                local.tee 3
                i32.store
                local.get 4
                i32.load offset=12
                local.set 5
              end
              i32.const 0
              local.get 17
              i32.store offset=68120
              local.get 4
              i32.const 1276
              i32.add
              local.get 3
              i32.store
              local.get 0
              local.get 5
              i32.store offset=4
              local.get 0
              local.get 3
              i32.store
              local.get 4
              i32.const 1296
              i32.add
              global.set $__stack_pointer
              return
            end
            call $runtime.slicePanic
            unreachable
          end
          local.get 4
          i32.const 736
          i32.add
          local.get 14
          local.get 6
          local.get 16
          local.get 18
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 48
          local.get 4
          i32.load offset=736
          local.tee 6
          i32.store
          local.get 49
          local.get 6
          i32.store
          local.get 4
          i32.const 720
          i32.add
          local.get 6
          local.get 4
          i32.load offset=740
          local.get 4
          i32.load offset=744
          local.get 3
          i32.const 60
          i32.div_s
          local.tee 8
          i32.const 2
          call $time.appendInt
          local.get 50
          local.get 4
          i32.load offset=720
          local.tee 6
          i32.store
          local.get 4
          i32.const 704
          i32.add
          local.get 6
          local.get 4
          i32.load offset=724
          local.get 4
          i32.load offset=728
          local.get 3
          local.get 8
          i32.const 60
          i32.mul
          i32.sub
          i32.const 2
          call $time.appendInt
          local.get 4
          i32.load offset=712
          local.set 18
          local.get 4
          i32.load offset=708
          local.set 16
          local.get 4
          i32.load offset=704
          local.set 14
          br 1 (;@2;)
        end
        local.get 4
        i32.const 688
        i32.add
        local.get 14
        local.get 3
        local.get 16
        local.get 18
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 51
        local.get 4
        i32.load offset=688
        local.tee 3
        i32.store
        local.get 52
        local.get 3
        i32.store
        local.get 4
        i32.const 672
        i32.add
        local.get 3
        local.get 4
        i32.load offset=692
        local.get 4
        i32.load offset=696
        local.get 6
        i32.const 60
        i32.div_s
        local.tee 9
        i32.const 2
        call $time.appendInt
        local.get 53
        local.get 4
        i32.load offset=672
        local.tee 14
        i32.store
        local.get 4
        i32.load offset=680
        local.set 18
        local.get 4
        i32.load offset=676
        local.set 16
        block  ;; label = @3
          local.get 13
          i32.const -27
          i32.add
          local.tee 3
          i32.const 6
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 1
          local.get 3
          i32.shl
          i32.const 99
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 58
          i32.store8 offset=937
          local.get 4
          i32.const 656
          i32.add
          local.get 14
          local.get 4
          i32.const 937
          i32.add
          local.get 16
          local.get 18
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 59
          local.get 4
          i32.load offset=656
          local.tee 14
          i32.store
          local.get 4
          i32.load offset=664
          local.set 18
          local.get 4
          i32.load offset=660
          local.set 16
        end
        local.get 54
        local.get 14
        i32.store
        block  ;; label = @3
          local.get 13
          i32.const 26
          i32.eq
          br_if 0 (;@3;)
          local.get 13
          i32.const 31
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          i32.const 640
          i32.add
          local.get 14
          local.get 16
          local.get 18
          local.get 6
          local.get 9
          i32.const 60
          i32.mul
          i32.sub
          i32.const 2
          call $time.appendInt
          local.get 58
          local.get 4
          i32.load offset=640
          local.tee 14
          i32.store
          local.get 4
          i32.load offset=648
          local.set 18
          local.get 4
          i32.load offset=644
          local.set 16
        end
        local.get 55
        local.get 14
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            local.get 13
            i32.const -25
            i32.add
            br_table 1 (;@3;) 3 (;@1;) 3 (;@1;) 0 (;@4;) 3 (;@1;) 1 (;@3;) 3 (;@1;) 3 (;@1;) 0 (;@4;) 3 (;@1;)
          end
          local.get 4
          i32.const 58
          i32.store8 offset=936
          local.get 4
          i32.const 624
          i32.add
          local.get 14
          local.get 4
          i32.const 936
          i32.add
          local.get 16
          local.get 18
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 57
          local.get 4
          i32.load offset=624
          local.tee 14
          i32.store
          local.get 4
          i32.load offset=632
          local.set 18
          local.get 4
          i32.load offset=628
          local.set 16
        end
        local.get 56
        local.get 14
        i32.store
        local.get 4
        i32.const 608
        i32.add
        local.get 14
        local.get 16
        local.get 18
        local.get 8
        i32.const 60
        i32.rem_s
        i32.const 2
        call $time.appendInt
        local.get 4
        i32.load offset=616
        local.set 18
        local.get 4
        i32.load offset=612
        local.set 16
        local.get 4
        i32.load offset=608
        local.set 14
      end
      local.get 47
      local.get 14
      i32.store
      br 0 (;@1;)
    end)
  (func $_*time.Location_.get (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 1
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=68120
    local.set 2
    i32.const 0
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 1
    local.get 2
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 67624
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 68144
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.store
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=68212
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=68212
        local.get 1
        i32.const 68212
        i32.store offset=8
        local.get 1
        i64.const 0
        i64.store
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=68208
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=4
              local.set 3
              local.get 0
              i32.load offset=8
              call $_*sync.Mutex_.Unlock
              local.get 3
              local.set 0
              br 0 (;@5;)
            end
          end
          i32.const 0
          i32.const 1
          i32.store8 offset=68208
          local.get 0
          call $time.initLocal
          local.get 1
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=4
            local.set 3
            local.get 0
            i32.load offset=8
            call $_*sync.Mutex_.Unlock
            local.get 3
            local.set 0
            br 0 (;@4;)
          end
        end
        i32.const 68144
        local.set 0
        br 1 (;@1;)
      end
      call $internal/task.Current
      unreachable
    end
    i32.const 0
    local.get 2
    i32.store offset=68120
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_io/fs.FileMode_.String (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=76
    local.get 2
    i64.const 2
    i64.store offset=68 align=4
    i32.const 0
    i32.load offset=68120
    local.set 3
    i32.const 0
    local.get 2
    i32.const 64
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 3
    i32.store offset=64
    local.get 2
    i32.const 72
    i32.add
    i32.const 32
    call $runtime.alloc
    local.tee 4
    i32.store
    local.get 2
    i32.const 0
    i32.store offset=48
    i32.const 0
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.const 32
            i32.add
            i32.const 66955
            i32.const 13
            local.get 2
            i32.const 48
            i32.add
            call $runtime.stringNext
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=32
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const -2147483648
                local.get 2
                i32.load offset=36
                local.tee 6
                i32.shr_u
                local.get 6
                i32.const 31
                i32.gt_u
                select
                local.get 1
                i32.and
                i32.eqz
                br_if 2 (;@4;)
                local.get 5
                i32.const 32
                i32.ne
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 5
              i32.eqz
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 4
            local.get 5
            i32.add
            local.get 2
            i32.load offset=40
            i32.store8
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.const 45
        i32.store8
        i32.const 1
        local.set 5
      end
      local.get 2
      i32.const 0
      i32.store offset=56
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.add
        i32.const 66968
        i32.const 9
        local.get 2
        i32.const 56
        i32.add
        call $runtime.stringNext
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load8_u offset=16
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              i32.const 0
              i32.const 1
              i32.const 8
              local.get 2
              i32.load offset=20
              i32.sub
              local.tee 6
              i32.shl
              local.get 6
              i32.const 31
              i32.gt_u
              select
              local.get 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 31
              i32.gt_u
              br_if 4 (;@1;)
              local.get 4
              local.get 5
              i32.add
              local.get 2
              i32.load offset=24
              i32.store8
              br 2 (;@3;)
            end
            local.get 5
            i32.const 31
            i32.gt_u
            br_if 3 (;@1;)
            local.get 4
            local.get 5
            i32.add
            i32.const 45
            i32.store8
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 5
            i32.const 32
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            local.get 5
            i32.const 32
            call $runtime.stringFromBytes
            i32.const 0
            local.get 3
            i32.store offset=68120
            local.get 2
            i32.const 76
            i32.add
            local.get 2
            i32.load offset=8
            local.tee 5
            i32.store
            local.get 0
            local.get 5
            i32.store
            local.get 0
            local.get 2
            i32.load offset=12
            i32.store offset=4
            local.get 2
            i32.const 80
            i32.add
            global.set $__stack_pointer
            return
          end
          call $runtime.slicePanic
          unreachable
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_time.fileSizeError_.Error (type 13) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 28
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=68120
    local.set 5
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 5
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    i32.const 66813
    i32.const 11
    local.get 1
    local.get 2
    call $runtime.stringConcat
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.load offset=8
    local.tee 1
    i32.store
    local.get 3
    local.get 1
    local.get 3
    i32.load offset=12
    i32.const 66824
    i32.const 13
    call $runtime.stringConcat
    i32.const 0
    local.get 5
    i32.store offset=68120
    local.get 4
    local.get 3
    i32.load
    local.tee 5
    i32.store
    local.get 0
    local.get 5
    i32.store
    local.get 0
    local.get 3
    i32.load offset=4
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $time.quote (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 73014444032
    i64.store offset=144
    local.get 3
    i32.const 0
    i32.store offset=216
    local.get 3
    i64.const 0
    i64.store offset=208
    local.get 3
    i64.const 0
    i64.store offset=200
    local.get 3
    i64.const 0
    i64.store offset=192
    local.get 3
    i64.const 0
    i64.store offset=184
    local.get 3
    i64.const 0
    i64.store offset=176
    local.get 3
    i64.const 0
    i64.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    i64.const 0
    i64.store offset=152
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 144
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=144
    block  ;; label = @1
      local.get 2
      i32.const 2
      i32.add
      local.tee 5
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 5
      call $runtime.alloc
      local.tee 6
      i32.const 34
      i32.store8
      local.get 3
      i32.const 200
      i32.add
      local.get 6
      i32.store
      local.get 3
      i32.const 212
      i32.add
      local.get 3
      i32.const 140
      i32.add
      i32.store
      local.get 3
      i32.const 204
      i32.add
      local.get 3
      i32.const 141
      i32.add
      i32.store
      local.get 3
      i32.const 168
      i32.add
      local.get 3
      i32.const 143
      i32.add
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=136
      local.get 3
      i32.const 152
      i32.add
      local.set 7
      local.get 3
      i32.const 156
      i32.add
      local.set 8
      local.get 3
      i32.const 160
      i32.add
      local.set 9
      local.get 3
      i32.const 208
      i32.add
      local.set 10
      local.get 3
      i32.const 216
      i32.add
      local.set 11
      local.get 3
      i32.const 164
      i32.add
      local.set 12
      local.get 3
      i32.const 172
      i32.add
      local.set 13
      local.get 3
      i32.const 176
      i32.add
      local.set 14
      local.get 3
      i32.const 180
      i32.add
      local.set 15
      local.get 3
      i32.const 184
      i32.add
      local.set 16
      i32.const 1
      local.set 17
      loop  ;; label = @2
        local.get 7
        local.get 6
        i32.store
        local.get 3
        i32.const 120
        i32.add
        local.get 1
        local.get 2
        local.get 3
        i32.const 136
        i32.add
        call $runtime.stringNext
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=120
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=128
            local.tee 18
            i32.const -32
            i32.add
            i32.const 96
            i32.lt_u
            br_if 1 (;@3;)
            local.get 3
            i32.load offset=124
            local.set 19
            block  ;; label = @5
              block  ;; label = @6
                local.get 18
                i32.const 65533
                i32.ne
                br_if 0 (;@6;)
                i32.const 1
                local.set 18
                local.get 19
                i32.const 2
                i32.add
                local.get 2
                i32.ge_s
                br_if 1 (;@5;)
                local.get 19
                i32.const -4
                i32.gt_u
                br_if 5 (;@1;)
                local.get 19
                i32.const 3
                i32.add
                local.get 2
                i32.gt_u
                br_if 5 (;@1;)
                i32.const 3
                i32.const 1
                local.get 1
                local.get 19
                i32.add
                i32.const 3
                i32.const 66708
                i32.const 3
                call $runtime.stringEqual
                i32.const 1
                i32.and
                select
                local.set 18
                br 1 (;@5;)
              end
              local.get 3
              i32.const 48
              i32.add
              local.get 18
              call $runtime.stringFromUnicode
              local.get 12
              local.get 3
              i32.load offset=48
              i32.store
              local.get 3
              i32.load offset=52
              local.set 18
            end
            i32.const 0
            local.get 2
            local.get 19
            i32.sub
            local.tee 20
            local.get 20
            local.get 2
            i32.gt_u
            select
            local.set 21
            local.get 18
            i32.const 0
            local.get 18
            i32.const 0
            i32.gt_s
            select
            local.set 20
            local.get 1
            local.get 19
            i32.add
            local.set 18
            loop  ;; label = @5
              local.get 8
              local.get 6
              i32.store
              local.get 20
              i32.eqz
              br_if 3 (;@2;)
              local.get 3
              i32.const 32
              i32.add
              local.get 6
              i32.const 66711
              local.get 17
              local.get 5
              i32.const 2
              i32.const 1
              call $runtime.sliceAppend
              local.get 9
              local.get 3
              i32.load offset=32
              local.tee 6
              i32.store
              block  ;; label = @6
                local.get 21
                br_if 0 (;@6;)
                call $runtime.lookupPanic
                unreachable
              end
              local.get 3
              i32.load offset=40
              local.set 5
              local.get 3
              i32.load offset=36
              local.set 17
              local.get 3
              local.get 18
              i32.load8_u
              i32.const 4
              i32.shr_u
              i32.const 66713
              i32.add
              i32.load8_u
              i32.store8 offset=141
              local.get 3
              i32.const 16
              i32.add
              local.get 6
              local.get 3
              i32.const 141
              i32.add
              local.get 17
              local.get 5
              i32.const 1
              i32.const 1
              call $runtime.sliceAppend
              local.get 10
              local.get 3
              i32.load offset=16
              local.tee 6
              i32.store
              local.get 3
              local.get 18
              i32.load8_u
              i32.const 15
              i32.and
              i32.const 66713
              i32.add
              i32.load8_u
              i32.store8 offset=140
              local.get 3
              local.get 6
              local.get 3
              i32.const 140
              i32.add
              local.get 3
              i32.load offset=20
              local.get 3
              i32.load offset=24
              i32.const 1
              i32.const 1
              call $runtime.sliceAppend
              local.get 11
              local.get 3
              i32.load
              local.tee 6
              i32.store
              local.get 18
              i32.const 1
              i32.add
              local.set 18
              local.get 20
              i32.const -1
              i32.add
              local.set 20
              local.get 21
              i32.const -1
              i32.add
              local.set 21
              local.get 3
              i32.load offset=8
              local.set 5
              local.get 3
              i32.load offset=4
              local.set 17
              br 0 (;@5;)
            end
          end
          local.get 3
          i32.const 34
          i32.store8 offset=142
          local.get 3
          i32.const 188
          i32.add
          local.get 3
          i32.const 142
          i32.add
          i32.store
          local.get 3
          i32.const 104
          i32.add
          local.get 6
          local.get 3
          i32.const 142
          i32.add
          local.get 17
          local.get 5
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 3
          i32.const 192
          i32.add
          local.get 3
          i32.load offset=104
          local.tee 18
          i32.store
          local.get 3
          i32.const 96
          i32.add
          local.get 18
          local.get 3
          i32.load offset=108
          local.get 3
          i32.load offset=112
          call $runtime.stringFromBytes
          i32.const 0
          local.get 4
          i32.store offset=68120
          local.get 3
          i32.const 196
          i32.add
          local.get 3
          i32.load offset=96
          local.tee 18
          i32.store
          local.get 0
          local.get 18
          i32.store
          local.get 0
          local.get 3
          i32.load offset=100
          i32.store offset=4
          local.get 3
          i32.const 224
          i32.add
          global.set $__stack_pointer
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 18
            i32.const 92
            i32.eq
            br_if 0 (;@4;)
            local.get 18
            i32.const 34
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 92
          i32.store8 offset=143
          local.get 3
          i32.const 80
          i32.add
          local.get 6
          local.get 3
          i32.const 143
          i32.add
          local.get 17
          local.get 5
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 13
          local.get 3
          i32.load offset=80
          local.tee 6
          i32.store
          local.get 3
          i32.load offset=88
          local.set 5
          local.get 3
          i32.load offset=84
          local.set 17
        end
        local.get 14
        local.get 6
        i32.store
        local.get 3
        i32.const 72
        i32.add
        local.get 18
        call $runtime.stringFromUnicode
        local.get 15
        local.get 3
        i32.load offset=72
        local.tee 18
        i32.store
        local.get 3
        i32.const 56
        i32.add
        local.get 6
        local.get 18
        local.get 17
        local.get 5
        local.get 3
        i32.load offset=76
        i32.const 1
        call $runtime.sliceAppend
        local.get 16
        local.get 3
        i32.load offset=56
        local.tee 6
        i32.store
        local.get 3
        i32.load offset=64
        local.set 5
        local.get 3
        i32.load offset=60
        local.set 17
        br 0 (;@2;)
      end
    end
    call $runtime.slicePanic
    unreachable)
  (func $runtime.stringConcat (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i64.const 0
    i64.store offset=56
    local.get 5
    i64.const 0
    i64.store offset=48
    local.get 5
    i32.const 6
    i32.store offset=36
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    i32.const 40
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i32.store
    local.get 5
    local.get 3
    i32.store offset=16
    local.get 5
    local.get 4
    i32.store offset=20
    local.get 5
    i32.const 44
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 6
    i32.const 0
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=68120
    local.get 5
    local.get 6
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 3
        local.set 7
        local.get 4
        local.set 8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 1
        local.set 7
        local.get 2
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 56
      i32.add
      local.get 4
      local.get 2
      i32.add
      local.tee 8
      call $runtime.alloc
      local.tee 7
      i32.store
      local.get 5
      i32.const 60
      i32.add
      local.get 7
      i32.store
      local.get 5
      i32.const 48
      i32.add
      local.get 7
      i32.store
      local.get 7
      local.get 1
      local.get 2
      call $memcpy
      local.tee 1
      local.get 2
      i32.add
      local.get 3
      local.get 4
      call $memcpy
      drop
      local.get 5
      local.get 8
      i32.store offset=28
      local.get 5
      i32.const 52
      i32.add
      local.get 5
      i32.const 24
      i32.add
      i32.store
      local.get 5
      local.get 1
      i32.store offset=24
    end
    i32.const 0
    local.get 6
    i32.store offset=68120
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 5
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_syscall.Errno_.Error (type 11) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=60
    local.get 2
    i64.const 0
    i64.store offset=52 align=4
    local.get 2
    i64.const 4
    i64.store offset=44 align=4
    i32.const 0
    i32.load offset=68120
    local.set 3
    i32.const 0
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 3
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 24
        i32.add
        i32.const 0
        local.get 1
        i32.sub
        call $internal/itoa.Uitoa
        local.get 2
        i32.const 48
        i32.add
        local.get 2
        i32.load offset=24
        local.tee 1
        i32.store
        local.get 2
        i32.const 16
        i32.add
        i32.const 66299
        i32.const 1
        local.get 1
        local.get 2
        i32.load offset=28
        call $runtime.stringConcat
        local.get 2
        i32.load offset=20
        local.set 4
        local.get 2
        i32.load offset=16
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 32
      i32.add
      local.get 1
      call $internal/itoa.Uitoa
      local.get 2
      i32.load offset=36
      local.set 4
      local.get 2
      i32.load offset=32
      local.set 1
    end
    local.get 2
    i32.const 52
    i32.add
    local.get 1
    i32.store
    local.get 2
    i32.const 56
    i32.add
    local.get 1
    i32.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 66301
    i32.const 6
    local.get 1
    local.get 4
    call $runtime.stringConcat
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 2
    i32.const 60
    i32.add
    local.get 2
    i32.load offset=8
    local.tee 1
    i32.store
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.load offset=12
    i32.store offset=4
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $runtime.slicePanic (type 8)
    i32.const 66278
    i32.const 18
    call $runtime.runtimePanic
    unreachable)
  (func $runtime.stringEqual (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        local.set 4
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 0
        i32.load8_u
        local.set 5
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 5
        local.get 3
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 4)
  (func $runtime.interfaceEqual (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 28
    i32.add
    local.tee 5
    i32.const 0
    i32.store
    local.get 4
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=68120
    local.set 6
    i32.const 0
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 4
    local.get 6
    i32.store offset=16
    local.get 4
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    call $reflect.ValueOf
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=12
    local.tee 0
    i32.store
    local.get 4
    i32.load offset=8
    local.set 1
    local.get 4
    local.get 2
    local.get 3
    call $reflect.ValueOf
    i32.const 0
    local.get 6
    i32.store offset=68120
    local.get 5
    local.get 4
    i32.load offset=4
    local.tee 6
    i32.store
    local.get 1
    local.get 0
    i32.const 2
    local.get 4
    i32.load
    local.get 6
    i32.const 2
    call $runtime.reflectValueEqual
    local.set 6
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $runtime.reflectValueEqual (type 17) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64)
    global.get $__stack_pointer
    i32.const 368
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 192
    i32.add
    i32.const 8
    i32.add
    local.tee 7
    i64.const 0
    i64.store
    local.get 6
    i32.const 0
    i32.store offset=360
    local.get 6
    i64.const 0
    i64.store offset=352
    local.get 6
    i64.const 0
    i64.store offset=344
    local.get 6
    i64.const 0
    i64.store offset=336
    local.get 6
    i64.const 0
    i64.store offset=328
    local.get 6
    i64.const 0
    i64.store offset=320
    local.get 6
    i64.const 0
    i64.store offset=312
    local.get 6
    i64.const 0
    i64.store offset=304
    local.get 6
    i64.const 0
    i64.store offset=296
    local.get 6
    i64.const 0
    i64.store offset=288
    local.get 6
    i64.const 0
    i64.store offset=280
    local.get 6
    i64.const 0
    i64.store offset=272
    local.get 6
    i64.const 0
    i64.store offset=264
    local.get 6
    i64.const 0
    i64.store offset=256
    local.get 6
    i64.const 0
    i64.store offset=248
    local.get 6
    i64.const 0
    i64.store offset=240
    local.get 6
    i64.const 0
    i64.store offset=232
    local.get 6
    i64.const 0
    i64.store offset=224
    local.get 6
    i64.const 0
    i64.store offset=216
    local.get 6
    i64.const 0
    i64.store offset=208
    local.get 6
    i64.const 176093659136
    i64.store offset=192
    local.get 6
    i32.const 204
    i32.add
    local.get 6
    i32.const 160
    i32.add
    i32.store
    local.get 7
    local.get 6
    i32.const 144
    i32.add
    i32.store
    local.get 6
    i32.const 0
    i32.load offset=68120
    local.tee 8
    i32.store offset=192
    i32.const 0
    local.get 6
    i32.const 192
    i32.add
    i32.store offset=68120
    local.get 6
    i32.const 348
    i32.add
    local.set 7
    local.get 6
    i32.const 356
    i32.add
    local.set 9
    local.get 6
    i32.const 340
    i32.add
    local.set 10
    local.get 6
    i32.const 332
    i32.add
    local.set 11
    local.get 6
    i32.const 324
    i32.add
    local.set 12
    local.get 6
    i32.const 316
    i32.add
    local.set 13
    local.get 6
    i32.const 308
    i32.add
    local.set 14
    local.get 6
    i32.const 300
    i32.add
    local.set 15
    local.get 6
    i32.const 296
    i32.add
    local.set 16
    local.get 6
    i32.const 292
    i32.add
    local.set 17
    local.get 6
    i32.const 284
    i32.add
    local.set 18
    local.get 6
    i32.const 276
    i32.add
    local.set 19
    local.get 6
    i32.const 272
    i32.add
    local.set 20
    local.get 6
    i32.const 268
    i32.add
    local.set 21
    local.get 6
    i32.const 264
    i32.add
    local.set 22
    local.get 6
    i32.const 260
    i32.add
    local.set 23
    local.get 6
    i32.const 256
    i32.add
    local.set 24
    local.get 6
    i32.const 252
    i32.add
    local.set 25
    local.get 6
    i32.const 248
    i32.add
    local.set 26
    local.get 6
    i32.const 240
    i32.add
    local.set 27
    local.get 6
    i32.const 244
    i32.add
    local.set 28
    local.get 6
    i32.const 236
    i32.add
    local.set 29
    local.get 6
    i32.const 232
    i32.add
    local.set 30
    local.get 6
    i32.const 228
    i32.add
    local.set 31
    local.get 6
    i32.const 224
    i32.add
    local.set 32
    local.get 6
    i32.const 220
    i32.add
    local.set 33
    local.get 6
    i32.const 216
    i32.add
    local.set 34
    local.get 6
    i32.const 212
    i32.add
    local.set 35
    local.get 6
    i32.const 208
    i32.add
    local.set 36
    local.get 6
    i32.const 352
    i32.add
    local.set 37
    local.get 6
    i32.const 360
    i32.add
    local.set 38
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 7
          local.get 1
          i32.store
          local.get 9
          local.get 4
          i32.store
          local.get 10
          local.get 4
          i32.store
          local.get 11
          local.get 1
          i32.store
          local.get 12
          local.get 1
          i32.store
          local.get 13
          local.get 4
          i32.store
          local.get 14
          local.get 1
          i32.store
          local.get 15
          local.get 1
          i32.store
          local.get 16
          local.get 4
          i32.store
          local.get 17
          local.get 1
          i32.store
          local.get 18
          local.get 4
          i32.store
          local.get 19
          local.get 1
          i32.store
          local.get 20
          local.get 4
          i32.store
          local.get 21
          local.get 1
          i32.store
          local.get 22
          local.get 4
          i32.store
          local.get 23
          local.get 1
          i32.store
          local.get 24
          local.get 4
          i32.store
          local.get 25
          local.get 1
          i32.store
          local.get 26
          local.get 4
          i32.store
          local.get 27
          local.get 4
          i32.store
          local.get 28
          local.get 1
          i32.store
          local.get 29
          local.get 1
          i32.store
          local.get 30
          local.get 1
          i32.store
          local.get 31
          local.get 4
          i32.store
          local.get 32
          local.get 1
          i32.store
          local.get 33
          local.get 4
          i32.store
          local.get 34
          local.get 4
          i32.store
          local.get 35
          local.get 1
          i32.store
          local.get 36
          local.get 1
          i32.store
          local.get 6
          i32.const 144
          i32.add
          i32.const 8
          i32.add
          local.get 2
          i32.store8
          local.get 6
          i32.const 160
          i32.add
          i32.const 8
          i32.add
          local.get 5
          i32.store8
          local.get 6
          i64.const 0
          i64.store offset=144
          local.get 6
          i64.const 0
          i64.store offset=160
          local.get 6
          local.get 0
          i32.store offset=144
          local.get 6
          local.get 1
          i32.store offset=148
          local.get 6
          local.get 3
          i32.store offset=160
          local.get 6
          local.get 4
          i32.store offset=164
          local.get 0
          local.get 1
          local.get 2
          call $_reflect.Value_.RawType
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            local.get 4
            local.get 5
            call $_reflect.Value_.RawType
            local.tee 3
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            local.get 1
            local.get 2
            call $_reflect.Value_.RawType
            local.tee 0
            local.get 3
            local.get 4
            local.get 5
            call $_reflect.Value_.RawType
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            local.set 0
            br 3 (;@1;)
          end
          block  ;; label = @4
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
                                local.get 0
                                local.get 1
                                local.get 2
                                call $_reflect.Value_.RawType
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                local.tee 0
                                i32.const 7
                                i32.and
                                i32.const 19
                                i32.add
                                local.get 0
                                i32.const 31
                                i32.and
                                local.get 3
                                i32.const 1
                                i32.and
                                select
                                i32.const -1
                                i32.add
                                br_table 0 (;@14;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 1 (;@13;) 2 (;@12;) 2 (;@12;) 2 (;@12;) 2 (;@12;) 2 (;@12;) 2 (;@12;) 3 (;@11;) 3 (;@11;) 4 (;@10;) 4 (;@10;) 5 (;@9;) 6 (;@8;) 6 (;@8;) 9 (;@5;) 6 (;@8;) 10 (;@4;) 7 (;@7;) 10 (;@4;) 10 (;@4;) 8 (;@6;) 10 (;@4;)
                              end
                              local.get 3
                              local.get 1
                              local.get 2
                              call $_reflect.Value_.Bool
                              local.get 3
                              local.get 4
                              local.get 5
                              call $_reflect.Value_.Bool
                              i32.xor
                              i32.const 1
                              i32.xor
                              local.set 0
                              br 12 (;@1;)
                            end
                            local.get 3
                            local.get 1
                            local.get 2
                            call $_reflect.Value_.Int
                            local.get 3
                            local.get 4
                            local.get 5
                            call $_reflect.Value_.Int
                            i64.eq
                            local.set 0
                            br 11 (;@1;)
                          end
                          local.get 3
                          local.get 1
                          local.get 2
                          call $_reflect.Value_.Uint
                          local.get 3
                          local.get 4
                          local.get 5
                          call $_reflect.Value_.Uint
                          i64.eq
                          local.set 0
                          br 10 (;@1;)
                        end
                        local.get 3
                        local.get 1
                        local.get 2
                        call $_reflect.Value_.Float
                        local.get 3
                        local.get 4
                        local.get 5
                        call $_reflect.Value_.Float
                        f64.eq
                        local.set 0
                        br 9 (;@1;)
                      end
                      local.get 6
                      i32.const 16
                      i32.add
                      local.get 3
                      local.get 1
                      local.get 2
                      call $_reflect.Value_.Complex
                      local.get 6
                      f64.load offset=16
                      local.set 39
                      local.get 6
                      f64.load offset=24
                      local.set 40
                      local.get 6
                      local.get 3
                      local.get 4
                      local.get 5
                      call $_reflect.Value_.Complex
                      local.get 39
                      local.get 6
                      f64.load
                      f64.eq
                      local.get 40
                      local.get 6
                      f64.load offset=8
                      f64.eq
                      i32.and
                      local.set 0
                      br 8 (;@1;)
                    end
                    local.get 6
                    i32.const 40
                    i32.add
                    local.get 3
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.String
                    local.get 6
                    i32.const 280
                    i32.add
                    local.get 6
                    i32.load offset=40
                    local.tee 1
                    i32.store
                    local.get 6
                    i32.load offset=44
                    local.set 2
                    local.get 6
                    i32.const 32
                    i32.add
                    local.get 3
                    local.get 4
                    local.get 5
                    call $_reflect.Value_.String
                    local.get 6
                    i32.const 288
                    i32.add
                    local.get 6
                    i32.load offset=32
                    local.tee 4
                    i32.store
                    local.get 1
                    local.get 2
                    local.get 4
                    local.get 6
                    i32.load offset=36
                    call $runtime.stringEqual
                    local.set 0
                    br 7 (;@1;)
                  end
                  local.get 3
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.Pointer
                  local.get 3
                  local.get 4
                  local.get 5
                  call $_reflect.Value_.Pointer
                  i32.eq
                  local.set 0
                  br 6 (;@1;)
                end
                local.get 6
                i32.const 304
                i32.add
                local.get 6
                i32.const 176
                i32.add
                i32.store
                local.get 6
                i32.const 184
                i32.add
                local.set 13
                local.get 6
                i32.const 312
                i32.add
                local.set 14
                local.get 6
                i32.const 320
                i32.add
                local.set 15
                i32.const 0
                local.set 7
                loop  ;; label = @7
                  local.get 13
                  i32.const 0
                  i32.store8
                  local.get 6
                  i64.const 0
                  i64.store offset=176
                  local.get 7
                  local.get 3
                  call $_reflect.rawType_.Len
                  i32.ge_s
                  local.tee 0
                  br_if 6 (;@1;)
                  local.get 6
                  i32.const 64
                  i32.add
                  local.get 3
                  local.get 1
                  local.get 2
                  local.get 7
                  call $_reflect.Value_.Index
                  local.get 14
                  local.get 6
                  i32.load offset=68
                  local.tee 9
                  i32.store
                  local.get 6
                  i32.load8_u offset=72
                  local.set 10
                  local.get 6
                  i32.load offset=64
                  local.set 11
                  local.get 6
                  i32.const 48
                  i32.add
                  local.get 3
                  local.get 4
                  local.get 5
                  local.get 7
                  call $_reflect.Value_.Index
                  local.get 15
                  local.get 6
                  i32.load offset=52
                  local.tee 12
                  i32.store
                  local.get 7
                  i32.const 1
                  i32.add
                  local.set 7
                  local.get 11
                  local.get 9
                  local.get 10
                  local.get 6
                  i32.load offset=48
                  local.get 12
                  local.get 6
                  i32.load8_u offset=56
                  call $runtime.reflectValueEqual
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 6 (;@1;)
                  br 0 (;@7;)
                end
              end
              local.get 6
              i32.const 328
              i32.add
              local.get 6
              i32.const 176
              i32.add
              i32.store
              local.get 6
              i32.const 184
              i32.add
              local.set 13
              local.get 6
              i32.const 336
              i32.add
              local.set 14
              local.get 6
              i32.const 344
              i32.add
              local.set 15
              i32.const 0
              local.set 7
              loop  ;; label = @6
                local.get 13
                i32.const 0
                i32.store8
                local.get 6
                i64.const 0
                i64.store offset=176
                local.get 7
                local.get 3
                call $_reflect.rawType_.NumField
                i32.ge_s
                local.tee 0
                br_if 5 (;@1;)
                local.get 6
                i32.const 96
                i32.add
                local.get 3
                local.get 1
                local.get 2
                local.get 7
                call $_reflect.Value_.Field
                local.get 14
                local.get 6
                i32.load offset=100
                local.tee 9
                i32.store
                local.get 6
                i32.load8_u offset=104
                local.set 10
                local.get 6
                i32.load offset=96
                local.set 11
                local.get 6
                i32.const 80
                i32.add
                local.get 3
                local.get 4
                local.get 5
                local.get 7
                call $_reflect.Value_.Field
                local.get 15
                local.get 6
                i32.load offset=84
                local.tee 12
                i32.store
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                local.get 11
                local.get 9
                local.get 10
                local.get 6
                i32.load offset=80
                local.get 12
                local.get 6
                i32.load8_u offset=88
                call $runtime.reflectValueEqual
                i32.const 1
                i32.and
                i32.eqz
                br_if 5 (;@1;)
                br 0 (;@6;)
              end
            end
            local.get 6
            i32.const 128
            i32.add
            local.get 3
            local.get 1
            local.get 2
            call $_reflect.Value_.Elem
            local.get 37
            local.get 6
            i32.load offset=132
            local.tee 1
            i32.store
            local.get 6
            i32.load8_u offset=136
            local.set 2
            local.get 6
            i32.load offset=128
            local.set 0
            local.get 6
            i32.const 112
            i32.add
            local.get 3
            local.get 4
            local.get 5
            call $_reflect.Value_.Elem
            local.get 38
            local.get 6
            i32.load offset=116
            local.tee 4
            i32.store
            local.get 6
            i32.load8_u offset=120
            local.set 5
            local.get 6
            i32.load offset=112
            local.set 3
            br 1 (;@3;)
          end
        end
        i32.const 66162
        i32.const 28
        call $runtime.runtimePanic
        unreachable
      end
      local.get 0
      local.get 1
      local.get 2
      call $_reflect.Value_.RawType
      local.get 3
      local.get 4
      local.get 5
      call $_reflect.Value_.RawType
      i32.eq
      local.set 0
    end
    i32.const 0
    local.get 8
    i32.store offset=68120
    local.get 6
    i32.const 368
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $runtime.interfaceTypeAssert (type 3) (param i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 66190
    i32.const 18
    call $runtime.runtimePanic
    unreachable)
  (func $time.now (type 3) (param i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 0
    i64.const 1000
    local.get 1
    i32.const 8
    i32.add
    call $runtime.clock_time_get
    drop
    local.get 0
    local.get 1
    i64.load offset=8
    local.tee 2
    i64.store offset=16
    local.get 0
    local.get 2
    i64.const 1000000000
    i64.div_s
    local.tee 3
    i64.store
    local.get 0
    local.get 2
    local.get 3
    i64.const -1000000000
    i64.mul
    i64.add
    i64.store32 offset=8
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_start (type 8)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 672
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 312
    i32.add
    local.tee 1
    i64.const 0
    i64.store
    local.get 0
    i32.const 272
    i32.add
    local.tee 2
    i64.const 0
    i64.store
    local.get 0
    i32.const 248
    i32.add
    i32.const 16
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 0
    i32.const 256
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=496
    local.get 0
    i64.const 0
    i64.store offset=488
    local.get 0
    i64.const 0
    i64.store offset=480
    local.get 0
    i64.const 0
    i64.store offset=472
    local.get 0
    i64.const 0
    i64.store offset=464
    local.get 0
    i64.const 0
    i64.store offset=456
    local.get 0
    i64.const 0
    i64.store offset=448
    local.get 0
    i64.const 0
    i64.store offset=440
    local.get 0
    i64.const 0
    i64.store offset=432
    local.get 0
    i64.const 0
    i64.store offset=424
    local.get 0
    i64.const 0
    i64.store offset=416
    local.get 0
    i64.const 0
    i64.store offset=408
    local.get 0
    i64.const 0
    i64.store offset=400
    local.get 0
    i64.const 0
    i64.store offset=392
    local.get 0
    i64.const 0
    i64.store offset=384
    local.get 0
    i64.const 0
    i64.store offset=376
    local.get 0
    i64.const 0
    i64.store offset=368
    local.get 0
    i64.const 0
    i64.store offset=360
    local.get 0
    i64.const 0
    i64.store offset=352
    local.get 0
    i64.const 0
    i64.store offset=344
    local.get 0
    i64.const 0
    i64.store offset=336
    local.get 0
    i64.const 0
    i64.store offset=328
    local.get 0
    i64.const 0
    i64.store offset=320
    local.get 0
    i64.const 0
    i64.store offset=304
    local.get 0
    i64.const 0
    i64.store offset=296
    local.get 0
    i64.const 0
    i64.store offset=288
    local.get 0
    i64.const 0
    i64.store offset=280
    local.get 0
    i64.const 446676598784
    i64.store offset=248
    local.get 0
    i64.const 0
    i64.store offset=664
    local.get 0
    i64.const 0
    i64.store offset=656
    local.get 0
    i64.const 0
    i64.store offset=648
    local.get 0
    i64.const 0
    i64.store offset=640
    local.get 0
    i64.const 0
    i64.store offset=632
    local.get 0
    i64.const 0
    i64.store offset=624
    local.get 0
    i64.const 0
    i64.store offset=616
    local.get 0
    i64.const 0
    i64.store offset=608
    local.get 0
    i64.const 0
    i64.store offset=600
    local.get 0
    i64.const 0
    i64.store offset=592
    local.get 0
    i64.const 0
    i64.store offset=584
    local.get 0
    i64.const 0
    i64.store offset=576
    local.get 0
    i64.const 0
    i64.store offset=568
    local.get 0
    i64.const 0
    i64.store offset=560
    local.get 0
    i64.const 0
    i64.store offset=552
    local.get 0
    i64.const 0
    i64.store offset=544
    local.get 0
    i64.const 0
    i64.store offset=536
    local.get 0
    i64.const 0
    i64.store offset=528
    local.get 0
    i64.const 0
    i64.store offset=520
    local.get 0
    i64.const 0
    i64.store offset=512
    local.get 0
    i64.const 0
    i64.store offset=504
    i32.const 0
    local.set 5
    i32.const 0
    i32.const 68272
    i32.store offset=67608
    local.get 0
    i32.const 0
    i32.load offset=68120
    local.tee 6
    i32.store offset=248
    i32.const 0
    local.get 0
    i32.const 248
    i32.add
    i32.store offset=68120
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=67976
    call $runtime.calculateHeapAddresses
    local.get 4
    i32.const 0
    i32.load offset=68104
    local.tee 7
    i32.store
    local.get 0
    i32.const 260
    i32.add
    local.get 7
    i32.store
    local.get 7
    i32.const 0
    i32.const 0
    i32.load offset=67976
    local.get 7
    i32.sub
    call $memset
    drop
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=67976
    call $__wasm_call_ctors
    local.get 3
    i32.const 0
    i32.load offset=68128
    local.tee 7
    i32.store
    local.get 0
    i32.const 268
    i32.add
    local.get 0
    i32.const 184
    i32.add
    i32.store
    local.get 2
    local.get 0
    i32.const 160
    i32.add
    i32.store
    local.get 0
    i32.const 316
    i32.add
    local.get 0
    i32.const 224
    i32.add
    i32.store
    local.get 1
    local.get 0
    i32.const 224
    i32.add
    i32.store
    local.get 0
    i32.const 300
    i32.add
    local.get 0
    i32.const 224
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            br_if 0 (;@4;)
            local.get 0
            i32.const 0
            i32.store offset=160
            local.get 0
            i32.const 0
            i32.store offset=184
            local.get 0
            i32.const 184
            i32.add
            local.get 0
            i32.const 160
            i32.add
            call $runtime.args_sizes_get
            drop
            block  ;; label = @5
              local.get 0
              i32.load offset=184
              local.tee 8
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              i32.const 0
              local.set 1
              br 2 (;@3;)
            end
            local.get 8
            i32.const 1073741823
            i32.gt_u
            br_if 3 (;@1;)
            local.get 0
            i32.const 280
            i32.add
            local.get 8
            i32.const 2
            i32.shl
            call $runtime.alloc
            local.tee 1
            i32.store
            local.get 0
            i32.load offset=160
            local.tee 7
            i32.const -1
            i32.le_s
            br_if 3 (;@1;)
            local.get 0
            i32.const 284
            i32.add
            local.get 7
            call $runtime.alloc
            local.tee 5
            i32.store
            local.get 0
            i32.const 288
            i32.add
            local.get 5
            i32.store
            local.get 7
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 5
            call $runtime.args_get
            drop
            local.get 8
            i32.const 536870912
            i32.ge_u
            br_if 3 (;@1;)
            local.get 8
            i32.const 3
            i32.shl
            call $runtime.alloc
            local.set 7
            i32.const 0
            local.get 8
            i32.store offset=68136
            i32.const 0
            local.get 8
            i32.store offset=68132
            i32.const 0
            local.get 7
            i32.store offset=68128
            local.get 0
            i32.const 292
            i32.add
            local.get 7
            i32.store
            local.get 0
            i32.const 320
            i32.add
            local.set 9
            local.get 0
            i32.const 304
            i32.add
            local.set 10
            local.get 0
            i32.const 296
            i32.add
            local.set 11
            local.get 0
            i32.const 308
            i32.add
            local.set 12
            i32.const 4
            local.set 2
            i32.const 0
            local.set 5
            loop  ;; label = @5
              local.get 8
              local.get 5
              i32.eq
              br_if 1 (;@4;)
              local.get 9
              local.get 1
              i32.load
              local.tee 7
              i32.store
              local.get 10
              local.get 7
              i32.store
              local.get 11
              local.get 7
              i32.store
              local.get 7
              call $strlen
              local.set 3
              local.get 12
              i32.const 0
              i32.load offset=68128
              local.tee 4
              i32.store
              local.get 0
              i64.const 0
              i64.store offset=224
              local.get 0
              local.get 7
              i32.store offset=224
              local.get 0
              local.get 3
              i32.store offset=228
              local.get 5
              i32.const 0
              i32.load offset=68132
              i32.ge_u
              br_if 3 (;@2;)
              local.get 4
              local.get 2
              i32.add
              local.tee 4
              local.get 3
              i32.store
              local.get 4
              i32.const -4
              i32.add
              local.get 7
              i32.store
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const 8
              i32.add
              local.set 2
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.const 276
          i32.add
          i32.const 0
          i32.load offset=68128
          local.tee 7
          i32.store
          i32.const 0
          i32.load offset=68136
          local.set 1
          i32.const 0
          i32.load offset=68132
          local.set 5
        end
        i32.const 0
        local.get 7
        i32.store offset=68224
        local.get 0
        i32.const 324
        i32.add
        local.get 7
        i32.store
        i32.const 0
        local.get 5
        i32.store offset=68228
        i32.const 0
        local.get 1
        i32.store offset=68232
        local.get 0
        i32.const 328
        i32.add
        local.get 0
        i32.const 160
        i32.add
        i32.store
        local.get 0
        i32.const 160
        i32.add
        i32.const 16
        i32.add
        i32.const 0
        i32.store
        local.get 0
        i32.const 160
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 336
        i32.add
        local.get 0
        i32.const 224
        i32.add
        i32.store
        local.get 0
        i64.const 0
        i64.store offset=160
        local.get 0
        i32.const 332
        i32.add
        local.get 0
        i32.const 184
        i32.add
        i32.store
        local.get 0
        i32.const 136
        i32.add
        call $time.now
        local.get 0
        i32.load offset=144
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i64.load offset=136
            local.tee 13
            i64.const 2682288000
            i64.add
            local.tee 14
            i64.const 8589934592
            i64.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 184
            i32.add
            i32.const 16
            i32.add
            local.tee 5
            i32.const 0
            i32.store
            local.get 0
            i32.const 184
            i32.add
            i32.const 8
            i32.add
            i64.const 0
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=184
            local.get 13
            i64.const 62135596800
            i64.add
            local.set 13
            local.get 7
            i64.extend_i32_s
            local.set 14
            br 1 (;@3;)
          end
          local.get 0
          i64.load offset=152
          local.set 13
          local.get 0
          i32.const 224
          i32.add
          i32.const 16
          i32.add
          local.tee 5
          i32.const 0
          i32.store
          local.get 0
          i32.const 224
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=224
          local.get 14
          i64.const 30
          i64.shl
          local.get 7
          i64.extend_i32_s
          i64.or
          i64.const -9223372036854775808
          i64.or
          local.set 14
          local.get 13
          i64.const 1
          i64.add
          local.set 13
        end
        local.get 5
        i32.const 68144
        i32.store
        local.get 14
        local.get 13
        i32.const 68144
        call $_time.Time_.Nanosecond
        drop
        local.get 0
        i32.const 340
        i32.add
        local.get 0
        i32.const 224
        i32.add
        i32.store
        local.get 0
        i32.const 580
        i32.add
        local.get 0
        i32.const 215
        i32.add
        i32.store
        local.get 0
        i32.const 484
        i32.add
        local.get 0
        i32.const 160
        i32.add
        i32.store
        local.get 0
        i32.const 500
        i32.add
        local.get 0
        i32.const 216
        i32.add
        i32.store
        local.get 0
        i32.const 248
        i32.add
        i32.const 144
        i32.add
        local.get 0
        i32.const 224
        i32.add
        i32.store
        local.get 0
        i32.const 552
        i32.add
        local.get 0
        i32.const 224
        i32.add
        i32.store
        local.get 0
        i32.const 548
        i32.add
        local.get 0
        i32.const 184
        i32.add
        i32.store
        local.get 0
        i32.const 496
        i32.add
        local.get 0
        i32.const 216
        i32.add
        i32.store
        local.get 0
        i32.const 344
        i32.add
        local.set 15
        local.get 0
        i32.const 348
        i32.add
        local.set 16
        local.get 0
        i32.const 388
        i32.add
        local.set 17
        local.get 0
        i32.const 416
        i32.add
        local.set 18
        local.get 0
        i32.const 404
        i32.add
        local.set 19
        local.get 0
        i32.const 396
        i32.add
        local.set 20
        local.get 0
        i32.const 412
        i32.add
        local.set 21
        local.get 0
        i32.const 400
        i32.add
        local.set 22
        local.get 0
        i32.const 232
        i32.add
        local.set 23
        local.get 0
        i32.const 408
        i32.add
        local.set 24
        local.get 0
        i32.const 424
        i32.add
        local.set 25
        local.get 0
        i32.const 436
        i32.add
        local.set 26
        local.get 0
        i32.const 420
        i32.add
        local.set 27
        local.get 0
        i32.const 444
        i32.add
        local.set 28
        local.get 0
        i32.const 248
        i32.add
        i32.const 192
        i32.add
        local.set 29
        local.get 0
        i32.const 448
        i32.add
        local.set 30
        local.get 0
        i32.const 452
        i32.add
        local.set 31
        local.get 0
        i32.const 248
        i32.add
        i32.const 216
        i32.add
        local.set 32
        local.get 0
        i32.const 456
        i32.add
        local.set 33
        local.get 0
        i32.const 460
        i32.add
        local.set 34
        local.get 0
        i32.const 480
        i32.add
        local.set 35
        local.get 0
        i32.const 468
        i32.add
        local.set 36
        local.get 0
        i32.const 476
        i32.add
        local.set 37
        local.get 0
        i32.const 472
        i32.add
        local.set 38
        local.get 0
        i32.const 488
        i32.add
        local.set 39
        local.get 0
        i32.const 492
        i32.add
        local.set 40
        local.get 0
        i32.const 556
        i32.add
        local.set 41
        local.get 0
        i32.const 504
        i32.add
        local.set 11
        local.get 0
        i32.const 508
        i32.add
        local.set 42
        local.get 0
        i32.const 520
        i32.add
        local.set 43
        local.get 0
        i32.const 532
        i32.add
        local.set 44
        local.get 0
        i32.const 536
        i32.add
        local.set 45
        local.get 0
        i32.const 540
        i32.add
        local.set 46
        local.get 0
        i32.const 544
        i32.add
        local.set 47
        local.get 0
        i32.const 564
        i32.add
        local.set 48
        local.get 0
        i32.const 560
        i32.add
        local.set 49
        local.get 0
        i32.const 568
        i32.add
        local.set 50
        local.get 0
        i32.const 572
        i32.add
        local.set 12
        local.get 0
        i32.const 576
        i32.add
        local.set 51
        local.get 0
        i32.const 600
        i32.add
        local.set 52
        local.get 0
        i32.const 604
        i32.add
        local.set 53
        local.get 0
        i32.const 612
        i32.add
        local.set 54
        local.get 0
        i32.const 620
        i32.add
        local.set 55
        local.get 0
        i32.const 616
        i32.add
        local.set 56
        local.get 0
        i32.const 624
        i32.add
        local.set 57
        local.get 0
        i32.const 640
        i32.add
        local.set 58
        local.get 0
        i32.const 644
        i32.add
        local.set 59
        local.get 0
        i32.const 652
        i32.add
        local.set 60
        local.get 0
        i32.const 628
        i32.add
        local.set 61
        local.get 0
        i32.const 636
        i32.add
        local.set 62
        local.get 0
        i32.const 632
        i32.add
        local.set 63
        local.get 0
        i32.const 648
        i32.add
        local.set 64
        local.get 0
        i32.const 588
        i32.add
        local.set 65
        local.get 0
        i32.const 596
        i32.add
        local.set 66
        local.get 0
        i32.const 592
        i32.add
        local.set 67
        local.get 0
        i32.const 608
        i32.add
        local.set 68
        local.get 0
        i32.const 584
        i32.add
        local.set 69
        local.get 0
        i32.const 512
        i32.add
        local.set 70
        local.get 0
        i32.const 516
        i32.add
        local.set 71
        local.get 0
        i32.const 524
        i32.add
        local.set 72
        local.get 0
        i32.const 660
        i32.add
        local.set 73
        local.get 0
        i32.const 668
        i32.add
        local.set 74
        local.get 0
        i32.const 664
        i32.add
        local.set 75
        local.get 0
        i32.const 656
        i32.add
        local.set 76
        local.get 0
        i32.const 356
        i32.add
        local.set 77
        local.get 0
        i32.const 352
        i32.add
        local.set 78
        local.get 0
        i32.const 364
        i32.add
        local.set 79
        local.get 0
        i32.const 384
        i32.add
        local.set 80
        local.get 0
        i32.const 380
        i32.add
        local.set 81
        local.get 0
        i32.const 368
        i32.add
        local.set 82
        local.get 0
        i32.const 376
        i32.add
        local.set 83
        local.get 0
        i32.const 372
        i32.add
        local.set 84
        local.get 0
        i32.const 360
        i32.add
        local.set 85
        local.get 0
        i32.const 428
        i32.add
        local.set 86
        local.get 0
        i32.const 432
        i32.add
        local.set 87
        i32.const 1
        local.set 88
        block  ;; label = @3
          loop  ;; label = @4
            local.get 15
            i32.const 0
            i32.load offset=68224
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 88
                  i32.const 0
                  i32.load offset=68228
                  i32.ge_s
                  br_if 0 (;@7;)
                  local.get 16
                  i32.const 0
                  i32.load offset=68224
                  local.tee 7
                  i32.store
                  local.get 88
                  i32.const 0
                  i32.load offset=68228
                  i32.ge_u
                  br_if 5 (;@2;)
                  local.get 17
                  local.get 7
                  local.get 88
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 7
                  i32.load
                  local.tee 2
                  i32.store
                  local.get 7
                  i32.load offset=4
                  local.set 7
                  local.get 18
                  i32.const 0
                  i32.load offset=67956
                  local.tee 1
                  i32.store
                  local.get 19
                  local.get 1
                  i32.store
                  local.get 20
                  local.get 1
                  i32.store
                  local.get 21
                  i32.const 0
                  i32.load offset=67968
                  local.tee 5
                  i32.store
                  local.get 22
                  local.get 5
                  i32.store
                  local.get 23
                  i64.const 0
                  i64.store
                  local.get 0
                  i64.const 0
                  i64.store offset=224
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=67960
                        local.tee 4
                        local.get 7
                        i32.gt_s
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 7
                        i32.gt_u
                        br_if 9 (;@1;)
                        i32.const 0
                        i32.load offset=67964
                        local.set 3
                        local.get 2
                        local.get 4
                        local.get 1
                        local.get 4
                        call $runtime.stringEqual
                        i32.const 1
                        i32.and
                        br_if 1 (;@9;)
                      end
                      local.get 24
                      i32.const 0
                      i32.load offset=67968
                      local.tee 5
                      i32.store
                      i32.const 0
                      i32.load offset=67964
                      local.set 3
                      local.get 2
                      local.set 1
                      local.get 7
                      local.set 4
                      br 1 (;@8;)
                    end
                    local.get 7
                    local.get 4
                    i32.const -1
                    i32.add
                    local.tee 1
                    i32.lt_u
                    br_if 7 (;@1;)
                    local.get 7
                    local.get 1
                    i32.sub
                    local.set 4
                    local.get 2
                    local.get 1
                    i32.add
                    local.set 1
                  end
                  local.get 25
                  local.get 1
                  i32.store
                  local.get 26
                  local.get 5
                  i32.store
                  local.get 27
                  local.get 5
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.const 14309
                      i32.eq
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 3
                        i32.const 447
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 3
                        br_if 7 (;@3;)
                        local.get 86
                        i32.const 24
                        call $runtime.alloc
                        local.tee 89
                        i32.store
                        local.get 87
                        local.get 89
                        i32.store
                        local.get 89
                        i32.const 67940
                        i32.store offset=20
                        local.get 89
                        i32.const 12261
                        i32.store offset=16
                        br 4 (;@6;)
                      end
                      local.get 0
                      i32.const 120
                      i32.add
                      local.get 1
                      local.get 4
                      call $_os.unixFilesystem_.OpenFile
                      local.get 0
                      i32.load offset=132
                      local.set 5
                      local.get 0
                      i32.load offset=128
                      local.set 1
                      local.get 0
                      i32.load offset=124
                      local.set 3
                      local.get 0
                      i32.load offset=120
                      local.set 8
                      br 1 (;@8;)
                    end
                    local.get 0
                    i32.const 104
                    i32.add
                    local.get 1
                    local.get 4
                    call $_os.unixFilesystem_.OpenFile
                    local.get 28
                    local.get 0
                    i32.load offset=116
                    local.tee 5
                    i32.store
                    local.get 29
                    local.get 0
                    i32.load offset=108
                    local.tee 3
                    i32.store
                    local.get 0
                    i32.load offset=112
                    local.set 1
                    local.get 0
                    i32.load offset=104
                    local.set 8
                  end
                  local.get 30
                  local.get 3
                  i32.store
                  local.get 31
                  local.get 5
                  i32.store
                  block  ;; label = @8
                    local.get 1
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 33
                    i32.const 24
                    call $runtime.alloc
                    local.tee 89
                    i32.store
                    local.get 34
                    local.get 89
                    i32.store
                    local.get 89
                    local.get 5
                    i32.store offset=20
                    local.get 89
                    local.get 1
                    i32.store offset=16
                    br 2 (;@6;)
                  end
                  i32.const 16
                  call $runtime.alloc
                  local.tee 4
                  local.get 7
                  i32.store offset=12
                  local.get 4
                  local.get 2
                  i32.store offset=8
                  local.get 32
                  local.get 4
                  i32.store
                  local.get 4
                  local.get 3
                  i32.store offset=4
                  local.get 4
                  local.get 8
                  i32.store
                  i32.const 0
                  local.set 90
                  i32.const 0
                  local.set 89
                  br 2 (;@5;)
                end
                i32.const 0
                local.get 6
                i32.store offset=68120
                local.get 0
                i32.const 672
                i32.add
                global.set $__stack_pointer
                return
              end
              local.get 89
              local.get 7
              i32.store offset=12
              local.get 89
              local.get 2
              i32.store offset=8
              local.get 89
              i32.const 4
              i32.store offset=4
              local.get 89
              i32.const 67032
              i32.store
              i32.const 0
              local.set 4
              i32.const 11237
              local.set 90
            end
            local.get 35
            local.get 89
            i32.store
            local.get 36
            local.get 4
            i32.store
            local.get 37
            local.get 4
            i32.store
            local.get 38
            local.get 89
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                local.get 90
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                i32.const 0
                local.set 7
                i32.const 0
                local.set 5
                br 1 (;@5;)
              end
              local.get 0
              local.get 4
              i32.store offset=168
              local.get 0
              i64.const 0
              i64.store offset=160
              i32.const 4
              call $runtime.alloc
              local.tee 2
              local.get 4
              i32.store
              local.get 39
              local.get 2
              i32.store
              local.get 40
              i32.const 192
              call $runtime.alloc
              local.tee 8
              i32.store
              local.get 41
              local.get 8
              i32.store
              local.get 0
              i64.const 0
              i64.store offset=216
              local.get 0
              local.get 8
              i32.store offset=220
              local.get 0
              local.get 2
              i32.store offset=216
              loop  ;; label = @6
                local.get 0
                i32.const 96
                i32.add
                local.get 0
                i32.const 216
                i32.add
                call $_*os.File_.Stat$1
                local.get 11
                local.get 0
                i32.load offset=100
                local.tee 7
                i32.store
                local.get 0
                i32.load offset=96
                local.tee 5
                local.get 7
                i32.const 216
                i32.const 27
                call $runtime.interfaceEqual
                i32.const 1
                i32.and
                br_if 0 (;@6;)
              end
              local.get 42
              local.get 7
              i32.store
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 70
                  i32.const 24
                  call $runtime.alloc
                  local.tee 1
                  i32.store
                  local.get 0
                  i32.const 248
                  i32.add
                  i32.const 280
                  i32.add
                  local.get 1
                  i32.store
                  local.get 71
                  local.get 2
                  i32.load
                  local.tee 2
                  i32.store
                  local.get 2
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 72
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.store
                  local.get 2
                  i32.const 12
                  i32.add
                  i32.load
                  local.set 2
                  local.get 1
                  local.get 7
                  i32.store offset=20
                  local.get 1
                  local.get 5
                  i32.store offset=16
                  local.get 1
                  local.get 2
                  i32.store offset=12
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  local.get 1
                  i32.const 5
                  i32.store offset=4
                  local.get 1
                  i32.const 67022
                  i32.store
                  i32.const 0
                  local.set 2
                  i32.const 11237
                  local.set 7
                  i32.const 0
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 43
                local.get 2
                i32.load
                local.tee 7
                i32.store
                local.get 7
                i32.eqz
                br_if 3 (;@3;)
                local.get 44
                local.get 7
                i32.load offset=8
                local.tee 1
                i32.store
                local.get 7
                i32.const 12
                i32.add
                i32.load
                local.tee 2
                i32.const -1
                i32.add
                local.set 3
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 2
                    local.set 7
                    local.get 45
                    local.get 1
                    i32.store
                    local.get 3
                    local.tee 5
                    i32.const 0
                    i32.le_s
                    br_if 1 (;@7;)
                    local.get 7
                    i32.const -1
                    i32.add
                    local.set 2
                    local.get 5
                    i32.const -1
                    i32.add
                    local.set 3
                    local.get 1
                    local.get 5
                    i32.add
                    i32.load8_u
                    i32.const 47
                    i32.eq
                    br_if 0 (;@8;)
                  end
                end
                local.get 5
                i32.const 1
                i32.add
                local.set 89
                local.get 1
                local.get 7
                i32.add
                local.set 9
                local.get 5
                i32.const 1
                i32.add
                local.set 3
                i32.const 0
                local.set 5
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 7
                    i32.const -2
                    i32.add
                    local.tee 2
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 2
                    local.get 3
                    i32.ge_u
                    br_if 6 (;@2;)
                    local.get 7
                    i32.const -1
                    i32.add
                    local.set 7
                    local.get 9
                    local.get 5
                    i32.add
                    local.set 2
                    local.get 5
                    i32.const -1
                    i32.add
                    local.tee 10
                    local.set 5
                    local.get 2
                    i32.const -2
                    i32.add
                    i32.load8_u
                    i32.const 47
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 3
                  local.get 7
                  i32.lt_u
                  br_if 6 (;@1;)
                  i32.const 0
                  local.get 10
                  i32.sub
                  local.set 89
                  local.get 9
                  local.get 10
                  i32.add
                  local.set 1
                end
                local.get 8
                local.get 1
                i32.store
                local.get 46
                local.get 1
                i32.store
                local.get 47
                local.get 1
                i32.store
                local.get 8
                local.get 89
                i32.store offset=4
                local.get 8
                local.get 8
                i64.load offset=96
                i64.store offset=8
                local.get 8
                i32.const 144
                i32.add
                i64.load
                local.set 13
                local.get 8
                i64.load32_s offset=136
                local.set 14
                local.get 0
                i64.const 0
                i64.store offset=192
                local.get 0
                i32.const 0
                i32.store offset=184
                block  ;; label = @7
                  local.get 13
                  i64.const 1000000000
                  i64.lt_u
                  br_if 0 (;@7;)
                  local.get 13
                  i64.const 1000000000
                  i64.div_s
                  local.tee 91
                  local.get 14
                  i64.add
                  local.set 14
                  local.get 91
                  i64.const -1000000000
                  i64.mul
                  local.get 13
                  i64.add
                  local.tee 13
                  i64.const -1
                  i64.gt_s
                  br_if 0 (;@7;)
                  local.get 14
                  i64.const -1
                  i64.add
                  local.set 14
                  local.get 13
                  i64.const 1000000000
                  i64.add
                  local.set 13
                end
                local.get 8
                i32.const 40
                i32.add
                i32.const 68144
                i32.store
                local.get 8
                i32.const 32
                i32.add
                local.get 14
                i64.const 62135596800
                i64.add
                i64.store
                local.get 8
                local.get 13
                i64.const 32
                i64.shl
                i64.const 32
                i64.shr_s
                i64.store offset=24
                local.get 8
                local.get 8
                i32.load offset=72
                local.tee 7
                i32.const 511
                i32.and
                local.tee 5
                i32.store offset=16
                i32.const 69206016
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              i32.const 61440
                              i32.and
                              i32.const -4096
                              i32.add
                              i32.const 12
                              i32.shr_u
                              br_table 2 (;@11;) 5 (;@8;) 6 (;@7;) 1 (;@12;) 6 (;@7;) 0 (;@13;) 6 (;@7;) 6 (;@7;) 6 (;@7;) 3 (;@10;) 6 (;@7;) 4 (;@9;) 6 (;@7;)
                            end
                            i32.const 67108864
                            local.set 1
                            br 4 (;@8;)
                          end
                          i32.const -2147483648
                          local.set 1
                          br 3 (;@8;)
                        end
                        i32.const 33554432
                        local.set 1
                        br 2 (;@8;)
                      end
                      i32.const 134217728
                      local.set 1
                      br 1 (;@8;)
                    end
                    i32.const 16777216
                    local.set 1
                  end
                  local.get 8
                  local.get 1
                  local.get 5
                  i32.or
                  local.tee 5
                  i32.store offset=16
                end
                block  ;; label = @7
                  local.get 7
                  i32.const 3584
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 7
                  i32.const 12
                  i32.shl
                  i32.const 12582912
                  i32.and
                  local.get 7
                  i32.const 11
                  i32.shl
                  i32.const 1048576
                  i32.and
                  i32.or
                  local.get 5
                  i32.or
                  i32.store offset=16
                end
                i32.const 0
                local.set 7
                i32.const 10213
                local.set 2
                i32.const 0
                local.set 1
              end
              local.get 48
              local.get 1
              i32.store
              local.get 49
              local.get 8
              i32.store
              i32.const 512
              local.set 5
              block  ;; label = @6
                local.get 7
                br_if 0 (;@6;)
                local.get 2
                i32.const 10213
                i32.ne
                br_if 3 (;@3;)
                local.get 8
                i32.eqz
                br_if 3 (;@3;)
                local.get 8
                i64.load offset=8
                local.tee 13
                i32.wrap_i64
                i32.const 1
                i32.add
                local.tee 7
                i32.const 512
                local.get 7
                i32.const 512
                i32.gt_s
                select
                i32.const 512
                local.get 13
                i64.const 2147483648
                i64.add
                i64.const 4294967296
                i64.lt_u
                select
                local.set 5
              end
              local.get 50
              local.get 5
              call $runtime.alloc
              local.tee 2
              i32.store
              i32.const 0
              local.set 7
              loop  ;; label = @6
                local.get 12
                local.get 2
                i32.store
                block  ;; label = @7
                  local.get 7
                  local.get 5
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 0
                  i32.store8 offset=215
                  local.get 0
                  i32.const 80
                  i32.add
                  local.get 2
                  local.get 0
                  i32.const 215
                  i32.add
                  local.get 5
                  local.get 5
                  i32.const 1
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 69
                  local.get 0
                  i32.load offset=80
                  local.tee 2
                  i32.store
                  local.get 7
                  local.get 0
                  i32.load offset=88
                  local.tee 5
                  i32.gt_u
                  br_if 6 (;@1;)
                end
                local.get 51
                local.get 2
                i32.store
                local.get 5
                local.get 7
                i32.lt_u
                br_if 5 (;@1;)
                local.get 4
                i32.eqz
                br_if 3 (;@3;)
                local.get 5
                local.get 7
                i32.sub
                local.set 3
                local.get 2
                local.get 7
                i32.add
                local.set 9
                local.get 4
                i32.load
                local.set 8
                local.get 52
                local.get 4
                i32.load offset=4
                local.tee 1
                i32.store
                local.get 53
                local.get 1
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.const 280
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 8965
                    i32.ne
                    br_if 5 (;@3;)
                    local.get 1
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 0
                    i32.const 48
                    i32.add
                    local.get 1
                    i32.load
                    local.get 9
                    local.get 3
                    local.get 3
                    call $_os.unixFileHandle_.Read
                    local.get 68
                    local.get 0
                    i32.load offset=56
                    local.tee 8
                    i32.store
                    local.get 0
                    i32.load offset=52
                    local.set 3
                    local.get 0
                    i32.load offset=48
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 64
                  i32.add
                  local.get 1
                  local.get 9
                  local.get 3
                  local.get 3
                  call $_os.unixFileHandle_.Read
                  local.get 0
                  i32.load offset=72
                  local.set 8
                  local.get 0
                  i32.load offset=68
                  local.set 3
                  local.get 0
                  i32.load offset=64
                  local.set 9
                end
                local.get 54
                local.get 8
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 8
                    i32.const 12261
                    i32.const 67888
                    call $runtime.interfaceEqual
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 65
                    i32.const 24
                    call $runtime.alloc
                    local.tee 1
                    i32.store
                    local.get 66
                    local.get 1
                    i32.store
                    local.get 67
                    local.get 4
                    i32.load offset=8
                    local.tee 10
                    i32.store
                    local.get 4
                    i32.load offset=12
                    local.set 89
                    local.get 1
                    local.get 8
                    i32.store offset=20
                    local.get 1
                    local.get 3
                    i32.store offset=16
                    local.get 1
                    local.get 89
                    i32.store offset=12
                    local.get 1
                    local.get 10
                    i32.store offset=8
                    local.get 1
                    i32.const 4
                    i32.store offset=4
                    local.get 1
                    i32.const 67018
                    i32.store
                    i32.const 11237
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 8
                  local.set 1
                end
                local.get 55
                local.get 1
                i32.store
                local.get 56
                local.get 1
                i32.store
                local.get 9
                local.get 7
                i32.add
                local.tee 7
                local.get 5
                i32.gt_u
                br_if 5 (;@1;)
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
              end
              i32.const 0
              local.get 3
              local.get 3
              local.get 1
              i32.const 12261
              i32.const 67888
              call $runtime.interfaceEqual
              i32.const 1
              i32.and
              local.tee 4
              select
              local.set 90
              local.get 0
              i32.const 160
              i32.add
              local.set 8
              i32.const 0
              local.get 1
              local.get 4
              select
              local.tee 89
              local.set 3
              loop  ;; label = @6
                local.get 57
                local.get 3
                i32.store
                local.get 8
                i32.eqz
                br_if 1 (;@5;)
                local.get 8
                i32.load offset=8
                local.tee 4
                i32.eqz
                br_if 3 (;@3;)
                local.get 8
                i32.load offset=4
                local.set 8
                local.get 4
                i32.load
                local.set 3
                local.get 58
                local.get 4
                i32.load offset=4
                local.tee 1
                i32.store
                local.get 59
                local.get 1
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 280
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 8965
                    i32.ne
                    br_if 5 (;@3;)
                    local.get 1
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 0
                    i32.const 32
                    i32.add
                    local.get 1
                    i32.load
                    call $_os.unixFileHandle_.Close
                    local.get 64
                    local.get 0
                    i32.load offset=36
                    local.tee 3
                    i32.store
                    local.get 0
                    i32.load offset=32
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 40
                  i32.add
                  local.get 1
                  call $_os.unixFileHandle_.Close
                  local.get 0
                  i32.load offset=44
                  local.set 3
                  local.get 0
                  i32.load offset=40
                  local.set 9
                end
                local.get 60
                local.get 3
                i32.store
                local.get 9
                i32.eqz
                br_if 0 (;@6;)
                local.get 61
                i32.const 24
                call $runtime.alloc
                local.tee 1
                i32.store
                local.get 62
                local.get 1
                i32.store
                local.get 63
                local.get 4
                i32.load offset=8
                local.tee 10
                i32.store
                local.get 4
                i32.const 12
                i32.add
                i32.load
                local.set 4
                local.get 1
                local.get 3
                i32.store offset=20
                local.get 1
                local.get 9
                i32.store offset=16
                local.get 1
                local.get 4
                i32.store offset=12
                local.get 1
                local.get 10
                i32.store offset=8
                local.get 1
                i32.const 5
                i32.store offset=4
                local.get 1
                i32.const 67013
                i32.store
                local.get 1
                local.set 3
                br 0 (;@6;)
              end
            end
            local.get 73
            local.get 89
            i32.store
            local.get 74
            local.get 89
            i32.store
            local.get 75
            local.get 2
            i32.store
            local.get 76
            local.get 2
            i32.store
            block  ;; label = @5
              local.get 90
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              call $runtime.proc_exit
            end
            local.get 77
            i32.const 0
            i32.load offset=67876
            local.tee 1
            i32.store
            local.get 78
            local.get 1
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=67872
                local.tee 3
                i32.const 280
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.const 8965
                i32.ne
                br_if 3 (;@3;)
                local.get 1
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                local.get 1
                i32.load
                local.get 2
                local.get 7
                local.get 5
                call $_os.unixFileHandle_.Write
                local.get 85
                local.get 0
                i32.load offset=8
                local.tee 5
                i32.store
                local.get 0
                i32.load offset=4
                local.set 1
                br 1 (;@5;)
              end
              local.get 0
              i32.const 16
              i32.add
              local.get 1
              local.get 2
              local.get 7
              local.get 5
              call $_os.unixFileHandle_.Write
              local.get 0
              i32.load offset=24
              local.set 5
              local.get 0
              i32.load offset=20
              local.set 1
            end
            local.get 79
            local.get 5
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                br_if 0 (;@6;)
                local.get 5
                local.set 7
                br 1 (;@5;)
              end
              local.get 82
              i32.const 24
              call $runtime.alloc
              local.tee 7
              i32.store
              local.get 83
              local.get 7
              i32.store
              local.get 7
              local.get 5
              i32.store offset=20
              local.get 7
              local.get 1
              i32.store offset=16
              local.get 7
              i32.const 5
              i32.store offset=4
              local.get 7
              i32.const 67027
              i32.store
              local.get 84
              i32.const 0
              i32.load offset=67880
              local.tee 5
              i32.store
              local.get 7
              i32.const 0
              i32.load offset=67884
              i32.store offset=12
              local.get 7
              local.get 5
              i32.store offset=8
            end
            local.get 80
            local.get 7
            i32.store
            local.get 81
            local.get 7
            i32.store
            local.get 88
            i32.const 1
            i32.add
            local.set 88
            br 0 (;@4;)
          end
        end
        call $runtime.nilPanic
        unreachable
      end
      call $runtime.lookupPanic
      unreachable
    end
    call $runtime.slicePanic
    unreachable)
  (func $_time.Time_.Nanosecond (type 18) (param i64 i64 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 0
    i32.wrap_i64
    i32.const 1073741823
    i32.and)
  (func $_os.unixFilesystem_.OpenFile (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 60
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i32.const 52
    i32.add
    local.tee 5
    i64.const 0
    i64.store align=4
    local.get 3
    i32.const 4
    i32.store offset=44
    local.get 3
    i32.const 48
    i32.add
    local.get 3
    i32.const 32
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 6
    i32.const 0
    local.get 3
    i32.const 40
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 6
    i32.store offset=40
    local.get 3
    i32.const 16
    i32.add
    local.get 1
    local.get 2
    call $syscall.Open
    local.get 3
    i32.const 56
    i32.add
    local.get 3
    i32.load offset=16
    local.tee 1
    i32.store
    local.get 5
    local.get 3
    i32.load offset=24
    local.tee 2
    i32.store
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.load offset=20
    local.get 2
    call $os.handleSyscallError
    i32.const 0
    local.get 6
    i32.store offset=68120
    local.get 4
    local.get 3
    i32.load offset=12
    local.tee 6
    i32.store
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store offset=8
    local.get 0
    i32.const 280
    i32.store
    local.get 0
    local.get 6
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_*os.File_.Stat$1 (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.set 4
      local.get 3
      i32.load offset=4
      local.set 5
      local.get 3
      i32.load
      i32.const 280
      i32.eq
      local.tee 6
      call $runtime.interfaceTypeAssert
      i32.const 0
      local.set 1
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 5
        i32.const 0
        local.get 6
        select
        local.get 4
        i32.const 48
        i32.add
        call $fstat
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        call $syscall.getErrno
        local.get 2
        i32.load offset=12
        local.set 3
        local.get 2
        i32.load offset=8
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $runtime.sliceAppend (type 19) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 0
    i32.store offset=12
    local.get 7
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=68120
    local.set 8
    i32.const 0
    local.get 7
    i32.store offset=68120
    local.get 7
    local.get 8
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        local.get 1
        local.set 9
        local.get 3
        local.set 10
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 3
          i32.add
          local.tee 10
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.set 9
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        i32.shl
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 9
        loop  ;; label = @3
          local.get 9
          local.tee 4
          i32.const 1
          i32.shl
          local.set 9
          local.get 10
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 8
        i32.add
        local.get 4
        local.get 6
        i32.mul
        call $runtime.alloc
        local.tee 9
        i32.store
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        local.get 1
        local.get 6
        local.get 3
        i32.mul
        call $memcpy
        drop
      end
      local.get 7
      i32.const 12
      i32.add
      local.get 9
      i32.store
      local.get 9
      local.get 6
      local.get 3
      i32.mul
      i32.add
      local.get 2
      local.get 6
      local.get 5
      i32.mul
      call $memmove
      drop
    end
    i32.const 0
    local.get 8
    i32.store offset=68120
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 10
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_os.unixFileHandle_.Read (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $syscall.Read
    local.get 5
    i32.load offset=16
    local.set 2
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=20
    local.get 5
    i32.load offset=24
    call $os.handleSyscallError
    local.get 5
    i32.load offset=12
    local.set 4
    local.get 5
    i32.load offset=8
    local.set 1
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      br_if 0 (;@1;)
      i32.const 67888
      local.set 4
      i32.const 12261
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_os.unixFileHandle_.Close (type 11) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call $syscall.Close
    local.get 2
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $os.handleSyscallError
    local.get 0
    local.get 2
    i32.load
    i32.store
    local.get 0
    local.get 2
    i32.load offset=4
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_os.unixFileHandle_.Write (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $syscall.splitSlice
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 1
      local.get 5
      i32.load offset=24
      local.get 5
      i32.load offset=28
      call $write
      local.tee 1
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 5
      i32.const 16
      i32.add
      call $syscall.getErrno
      local.get 5
      i32.load offset=20
      local.set 3
      local.get 5
      i32.load offset=16
      local.set 2
    end
    local.get 5
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    call $os.handleSyscallError
    local.get 5
    i32.load offset=8
    local.set 2
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 5
    i32.load offset=12
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime.stringFromBytes (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 52
    i32.add
    local.tee 5
    i64.const 0
    i64.store align=4
    local.get 4
    i32.const 44
    i32.add
    local.tee 6
    i64.const 0
    i64.store align=4
    local.get 4
    i32.const 5
    i32.store offset=36
    local.get 4
    i32.const 0
    i32.store offset=16
    local.get 4
    i64.const 0
    i64.store offset=8
    local.get 4
    i32.const 40
    i32.add
    local.get 4
    i32.const 8
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 7
    i32.const 0
    local.get 4
    i32.const 32
    i32.add
    i32.store offset=68120
    local.get 4
    local.get 7
    i32.store offset=32
    local.get 5
    local.get 2
    call $runtime.alloc
    local.tee 8
    i32.store
    local.get 4
    i32.const 56
    i32.add
    local.get 8
    i32.store
    local.get 6
    local.get 8
    i32.store
    local.get 8
    local.get 1
    local.get 2
    call $memcpy
    local.set 8
    i32.const 0
    local.get 7
    i32.store offset=68120
    local.get 4
    i64.const 0
    i64.store offset=24
    local.get 4
    i32.const 48
    i32.add
    local.get 4
    i32.const 24
    i32.add
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store
    local.get 4
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $runtime.stringNext (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 4
          local.get 2
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          i32.const 0
          local.set 4
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 4
            i32.add
            local.tee 5
            i32.load8_u
            local.tee 1
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            local.tee 6
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            i32.const 1
            local.set 2
            br 1 (;@3;)
          end
          local.get 2
          local.get 4
          i32.sub
          local.set 7
          block  ;; label = @4
            local.get 6
            i32.const -32
            i32.and
            i32.const -64
            i32.ne
            br_if 0 (;@4;)
            i32.const 1
            local.set 2
            i32.const 65533
            local.set 1
            local.get 7
            i32.const 2
            i32.lt_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 2
            local.get 5
            i32.const 1
            i32.add
            i32.load8_u
            local.tee 5
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            br_if 1 (;@3;)
            local.get 6
            i32.const 31
            i32.and
            i32.const 6
            i32.shl
            local.get 5
            i32.const 63
            i32.and
            i32.or
            local.tee 6
            i32.const 128
            i32.lt_u
            br_if 1 (;@3;)
            i32.const 2
            local.set 2
            local.get 6
            local.set 1
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 6
            i32.const -16
            i32.and
            i32.const -32
            i32.ne
            br_if 0 (;@4;)
            i32.const 1
            local.set 2
            i32.const 65533
            local.set 1
            local.get 7
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 2
            local.get 5
            i32.const 1
            i32.add
            i32.load8_u
            local.tee 7
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            br_if 1 (;@3;)
            local.get 5
            i32.const 2
            i32.add
            i32.load8_u
            local.tee 5
            i32.const 192
            i32.and
            i32.const 128
            i32.ne
            br_if 1 (;@3;)
            local.get 7
            i32.const 63
            i32.and
            i32.const 6
            i32.shl
            local.get 6
            i32.const 15
            i32.and
            i32.const 12
            i32.shl
            i32.or
            local.tee 6
            i32.const 63488
            i32.and
            i32.const 55296
            i32.eq
            br_if 1 (;@3;)
            local.get 6
            local.get 5
            i32.const 63
            i32.and
            i32.or
            local.tee 6
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            i32.const 3
            local.set 2
            local.get 6
            local.set 1
            br 1 (;@3;)
          end
          i32.const 1
          local.set 2
          i32.const 65533
          local.set 1
          local.get 6
          i32.const -8
          i32.and
          i32.const -16
          i32.ne
          br_if 0 (;@3;)
          local.get 7
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 1
          local.set 2
          local.get 5
          i32.const 1
          i32.add
          i32.load8_u
          local.tee 7
          i32.const 192
          i32.and
          i32.const 128
          i32.ne
          br_if 0 (;@3;)
          local.get 5
          i32.const 2
          i32.add
          i32.load8_u
          local.tee 8
          i32.const 192
          i32.and
          i32.const 128
          i32.ne
          br_if 0 (;@3;)
          local.get 5
          i32.const 3
          i32.add
          i32.load8_u
          local.tee 5
          i32.const 192
          i32.and
          i32.const 128
          i32.ne
          br_if 0 (;@3;)
          local.get 8
          i32.const 63
          i32.and
          i32.const 6
          i32.shl
          local.get 7
          i32.const 63
          i32.and
          i32.const 12
          i32.shl
          local.get 6
          i32.const 7
          i32.and
          i32.const 18
          i32.shl
          i32.or
          i32.or
          local.get 5
          i32.const 63
          i32.and
          i32.or
          local.tee 6
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 4
          local.set 2
          local.get 6
          local.set 1
        end
        local.get 3
        local.get 2
        local.get 4
        i32.add
        i32.store
        i32.const 1
        local.set 3
      end
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 3
      i32.const 1
      i32.and
      i32.store8
      local.get 0
      local.get 1
      i32.store offset=8
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $runtime.stringFromUnicode (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 84
    i32.add
    local.tee 3
    i64.const 0
    i64.store align=4
    local.get 2
    i32.const 68
    i32.add
    local.tee 4
    i64.const 0
    i64.store align=4
    local.get 2
    i32.const 60
    i32.add
    local.tee 5
    i64.const 0
    i64.store align=4
    local.get 2
    i32.const 52
    i32.add
    local.tee 6
    i64.const 0
    i64.store align=4
    local.get 2
    i64.const 0
    i64.store offset=76 align=4
    local.get 2
    i64.const 11
    i64.store offset=44 align=4
    i32.const 0
    local.set 7
    i32.const 0
    i32.load offset=68120
    local.set 8
    i32.const 0
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 8
    i32.store offset=40
    local.get 3
    i32.const 4
    call $runtime.alloc
    local.tee 9
    i32.store
    local.get 2
    i32.const 88
    i32.add
    local.get 9
    i32.store
    local.get 2
    i32.const 80
    i32.add
    local.get 9
    i32.store
    local.get 2
    i32.const 48
    i32.add
    local.get 9
    i32.store
    local.get 2
    i32.const 72
    i32.add
    local.get 2
    i32.const 36
    i32.add
    i32.store
    local.get 4
    local.get 2
    i32.const 32
    i32.add
    i32.store
    local.get 2
    i32.const 64
    i32.add
    local.get 2
    i32.const 28
    i32.add
    i32.store
    local.get 5
    local.get 2
    i32.const 24
    i32.add
    i32.store
    local.get 2
    i32.const 56
    i32.add
    local.get 2
    i32.const 20
    i32.add
    i32.store
    local.get 6
    local.get 2
    i32.const 16
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 2
        i32.const 0
        i32.store16 offset=17 align=1
        local.get 2
        local.get 1
        i32.store8 offset=16
        i32.const 1
        local.set 3
        i32.const 0
        local.set 4
        i32.const 0
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2047
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        i32.const 0
        i32.store offset=20
        local.get 2
        i32.const 0
        i32.store8 offset=22
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.tee 7
        i32.store8 offset=21
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const -64
        i32.or
        local.tee 1
        i32.store8 offset=20
        i32.const 2
        local.set 3
        i32.const 0
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -2048
          i32.and
          i32.const 55296
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.const 12435439
          i32.store offset=24
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          local.get 2
          i32.const 0
          i32.store offset=28
          local.get 2
          i32.const 0
          i32.store8 offset=31
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.tee 4
          i32.store8 offset=30
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const -32
          i32.or
          local.tee 6
          i32.store8 offset=28
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.tee 7
          i32.store8 offset=29
          i32.const 3
          local.set 3
          local.get 6
          local.set 1
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 1114111
          i32.gt_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.store offset=32
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.tee 5
          i32.store8 offset=35
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const -16
          i32.or
          local.tee 6
          i32.store8 offset=32
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.tee 4
          i32.store8 offset=34
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.tee 7
          i32.store8 offset=33
          i32.const 4
          local.set 3
          local.get 6
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        i32.const 12435439
        i32.store offset=36
      end
      i32.const 3
      local.set 3
      i32.const 0
      local.set 5
      i32.const 189
      local.set 4
      i32.const 191
      local.set 7
      i32.const 239
      local.set 1
    end
    i32.const 0
    local.get 8
    i32.store offset=68120
    local.get 9
    local.get 5
    i32.store8 offset=3
    local.get 9
    local.get 4
    i32.store8 offset=2
    local.get 9
    local.get 7
    i32.store8 offset=1
    local.get 9
    local.get 1
    i32.store8
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 76
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store
    local.get 2
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $internal/itoa.Uitoa (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 4
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        i32.const 66300
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.const 24
      i32.add
      i32.const 20
      call $runtime.alloc
      local.tee 5
      i32.store
      local.get 5
      i32.const 19
      i32.add
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 10
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 10
            i32.div_u
            local.set 7
            local.get 3
            i32.const 19
            i32.add
            i32.const 19
            i32.gt_u
            br_if 2 (;@2;)
            local.get 6
            local.get 3
            i32.add
            local.get 1
            local.get 7
            i32.const -10
            i32.mul
            i32.add
            i32.const 48
            i32.add
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 7
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 3
        i32.const 19
        i32.add
        i32.const 19
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 3
        i32.add
        i32.const 19
        i32.add
        local.tee 7
        local.get 1
        i32.const 48
        i32.add
        i32.store8
        local.get 2
        i32.const 8
        i32.add
        local.get 7
        i32.const 1
        local.get 3
        i32.sub
        local.tee 1
        local.get 1
        call $runtime.stringFromBytes
        local.get 2
        i32.const 28
        i32.add
        local.get 2
        i32.load offset=8
        local.tee 3
        i32.store
        local.get 2
        i32.load offset=12
        local.set 1
        br 1 (;@1;)
      end
      call $runtime.lookupPanic
      unreachable
    end
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $syscall.getErrno (type 3) (param i32)
    local.get 0
    i32.const 216
    i32.store
    local.get 0
    i32.const 0
    i32.load offset=68244
    i32.store offset=4)
  (func $syscall.Close (type 11) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 1
      call $close
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.add
      call $syscall.getErrno
      local.get 2
      i32.load offset=12
      local.set 4
      local.get 2
      i32.load offset=8
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $syscall.splitSlice (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    i32.const 8
    i32.add
    local.get 3
    i32.store
    local.get 4
    i64.const 0
    i64.store
    local.get 4
    local.get 2
    i32.store offset=4
    local.get 4
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $syscall.Read (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $syscall.splitSlice
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 1
      local.get 5
      i32.load offset=8
      local.get 5
      i32.load offset=12
      call $read
      local.tee 1
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 5
      call $syscall.getErrno
      local.get 5
      i32.load offset=4
      local.set 3
      local.get 5
      i32.load
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $syscall.Open (type 13) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i64.const 3
    i64.store offset=28 align=4
    i32.const 0
    local.set 4
    i32.const 0
    i32.load offset=68120
    local.set 5
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 5
    i32.store offset=24
    local.get 3
    i32.const 16
    i32.add
    local.get 1
    local.get 2
    call $syscall.cstring
    local.get 3
    i32.const 32
    i32.add
    local.get 3
    i32.load offset=16
    local.tee 2
    i32.store
    block  ;; label = @1
      local.get 3
      i32.load offset=20
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.const 0
        call $open
        local.tee 2
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        call $syscall.getErrno
        local.get 3
        i32.const 36
        i32.add
        local.get 3
        i32.load offset=12
        local.tee 1
        i32.store
        local.get 3
        i32.load offset=8
        local.set 4
      end
      i32.const 0
      local.get 5
      i32.store offset=68120
      local.get 3
      i32.const 40
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $syscall.cstring (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.tee 5
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      call $runtime.slicePanic
      unreachable
    end
    local.get 5
    call $runtime.alloc
    local.set 6
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 8
    i32.add
    local.get 6
    i32.store
    local.get 6
    local.get 1
    local.get 5
    local.get 2
    local.get 5
    local.get 2
    i32.lt_u
    select
    call $memcpy
    local.set 2
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $time.appendInt (type 20) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 0
    i32.store offset=108
    local.get 6
    i64.const 0
    i64.store offset=100 align=4
    local.get 6
    i64.const 0
    i64.store offset=92 align=4
    local.get 6
    i64.const 0
    i64.store offset=84 align=4
    local.get 6
    i64.const 8
    i64.store offset=76 align=4
    i32.const 0
    i32.load offset=68120
    local.set 7
    i32.const 0
    local.get 6
    i32.const 72
    i32.add
    i32.store offset=68120
    local.get 6
    local.get 7
    i32.store offset=72
    block  ;; label = @1
      local.get 4
      i32.const 0
      i32.ge_s
      br_if 0 (;@1;)
      local.get 6
      i32.const 45
      i32.store8 offset=71
      local.get 6
      i32.const 80
      i32.add
      local.get 6
      i32.const 71
      i32.add
      i32.store
      local.get 6
      i32.const 32
      i32.add
      local.get 1
      local.get 6
      i32.const 71
      i32.add
      local.get 2
      local.get 3
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 6
      i32.const 84
      i32.add
      local.get 6
      i32.load offset=32
      local.tee 1
      i32.store
      i32.const 0
      local.get 4
      i32.sub
      local.set 4
      local.get 6
      i32.load offset=40
      local.set 3
      local.get 6
      i32.load offset=36
      local.set 2
    end
    local.get 6
    i32.const 72
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.store
    local.get 6
    i32.const 56
    i32.add
    i64.const 0
    i64.store
    i32.const 0
    local.set 8
    local.get 6
    i32.const 48
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i32.store
    local.get 6
    i64.const 0
    i64.store offset=48
    local.get 6
    i32.const 92
    i32.add
    local.get 6
    i32.const 48
    i32.add
    i32.store
    local.get 6
    i32.const 48
    i32.add
    i32.const 19
    i32.add
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.const 10
          i32.lt_u
          br_if 1 (;@2;)
          local.get 4
          i32.const 10
          i32.div_u
          local.set 10
          local.get 8
          i32.const 19
          i32.add
          i32.const 19
          i32.gt_u
          br_if 2 (;@1;)
          local.get 9
          local.get 8
          i32.add
          local.get 4
          local.get 10
          i32.const -10
          i32.mul
          i32.add
          i32.const 48
          i32.add
          i32.store8
          local.get 8
          i32.const -1
          i32.add
          local.set 8
          local.get 10
          local.set 4
          br 0 (;@3;)
        end
      end
      local.get 8
      i32.const 19
      i32.add
      i32.const 19
      i32.gt_u
      br_if 0 (;@1;)
      local.get 6
      i32.const 48
      i32.add
      local.get 8
      i32.add
      i32.const 19
      i32.add
      local.tee 11
      local.get 4
      i32.const 48
      i32.add
      i32.store8
      local.get 6
      i32.const 100
      i32.add
      local.get 6
      i32.const 47
      i32.add
      i32.store
      local.get 6
      i32.const 96
      i32.add
      local.set 10
      local.get 6
      i32.const 104
      i32.add
      local.set 9
      i32.const 1
      local.get 8
      i32.sub
      local.tee 8
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 10
          local.get 1
          i32.store
          local.get 4
          local.get 5
          i32.ge_s
          br_if 1 (;@2;)
          local.get 6
          i32.const 48
          i32.store8 offset=47
          local.get 6
          local.get 1
          local.get 6
          i32.const 47
          i32.add
          local.get 2
          local.get 3
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 9
          local.get 6
          i32.load
          local.tee 1
          i32.store
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 6
          i32.load offset=8
          local.set 3
          local.get 6
          i32.load offset=4
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 6
      i32.const 16
      i32.add
      local.get 1
      local.get 11
      local.get 2
      local.get 3
      local.get 8
      i32.const 1
      call $runtime.sliceAppend
      i32.const 0
      local.get 7
      i32.store offset=68120
      local.get 6
      i32.const 108
      i32.add
      local.get 6
      i32.load offset=16
      local.tee 4
      i32.store
      local.get 0
      local.get 6
      i32.load offset=24
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 6
      i32.load offset=20
      i32.store offset=4
      local.get 6
      i32.const 112
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $time.isLeap (type 4) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 3
      i32.and
      br_if 0 (;@1;)
      i32.const 1
      local.set 1
      local.get 0
      i32.const 100
      i32.rem_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 400
      i32.rem_s
      i32.eqz
      local.set 1
    end
    local.get 1)
  (func $_*time.Location_.lookup (type 21) (param i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 72
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 3
    i64.const 107374182400
    i64.store offset=64
    local.get 3
    i32.const 0
    i32.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    i64.const 0
    i64.store offset=152
    local.get 3
    i64.const 0
    i64.store offset=144
    local.get 3
    i64.const 0
    i64.store offset=136
    local.get 3
    i64.const 0
    i64.store offset=128
    local.get 3
    i64.const 0
    i64.store offset=120
    local.get 3
    i64.const 0
    i64.store offset=112
    local.get 3
    i64.const 0
    i64.store offset=104
    local.get 3
    i64.const 0
    i64.store offset=96
    local.get 3
    i64.const 0
    i64.store offset=88
    local.get 3
    i64.const 0
    i64.store offset=80
    i32.const 0
    i32.load offset=68120
    local.set 5
    i32.const 0
    local.get 3
    i32.const 64
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 5
    i32.store offset=64
    local.get 4
    local.get 1
    call $_*time.Location_.get
    local.tee 6
    i32.store
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 64
      i32.add
      i32.const 12
      i32.add
      local.get 6
      i32.load offset=8
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const 12
            i32.add
            i32.load
            br_if 0 (;@4;)
            i32.const 3
            local.set 1
            i32.const 66952
            local.set 7
            i32.const 0
            local.set 8
            br 1 (;@3;)
          end
          local.get 3
          i32.const 80
          i32.add
          local.get 6
          i32.load offset=56
          local.tee 1
          i32.store
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i64.load offset=40
            local.get 2
            i64.gt_s
            br_if 0 (;@4;)
            local.get 6
            i64.load offset=48
            local.get 2
            i64.le_s
            br_if 0 (;@4;)
            local.get 3
            i32.const 84
            i32.add
            local.get 1
            i32.load
            local.tee 7
            i32.store
            local.get 1
            i32.load offset=8
            local.set 8
            local.get 1
            i32.load offset=4
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.const 64
          i32.add
          i32.const 24
          i32.add
          local.get 6
          i32.load offset=20
          i32.store
          block  ;; label = @4
            local.get 6
            i32.const 24
            i32.add
            i32.load
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.load offset=24
            local.set 4
            local.get 3
            i32.const 144
            i32.add
            local.get 6
            i32.load offset=20
            local.tee 1
            i32.store
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i64.load
            local.get 2
            i64.gt_s
            br_if 0 (;@4;)
            local.get 6
            i32.load offset=24
            local.set 9
            local.get 3
            i32.const 148
            i32.add
            local.get 6
            i32.load offset=20
            local.tee 7
            i32.store
            i32.const 0
            local.set 4
            i64.const 9223372036854775807
            local.set 10
            local.get 9
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.set 8
              local.get 10
              local.set 11
              local.get 4
              local.set 1
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 8
                  local.get 1
                  local.tee 4
                  i32.sub
                  local.tee 1
                  i32.const 2
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 1
                  i32.const 1
                  i32.shr_u
                  local.get 4
                  i32.add
                  local.tee 1
                  local.get 9
                  i32.ge_u
                  br_if 5 (;@2;)
                  local.get 7
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 7
                  local.get 1
                  i32.const 4
                  i32.shl
                  i32.add
                  i64.load
                  local.tee 10
                  local.get 2
                  i64.le_s
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
            end
            local.get 6
            i32.load offset=12
            local.set 8
            local.get 3
            i32.const 152
            i32.add
            local.get 6
            i32.load offset=8
            local.tee 1
            i32.store
            local.get 4
            local.get 9
            i32.ge_u
            br_if 2 (;@2;)
            local.get 8
            local.get 7
            local.get 4
            i32.const 4
            i32.shl
            i32.add
            i32.load8_u offset=8
            local.tee 7
            i32.le_u
            br_if 2 (;@2;)
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 3
            i32.const 156
            i32.add
            local.get 1
            local.get 7
            i32.const 4
            i32.shl
            i32.add
            local.tee 8
            i32.load
            local.tee 7
            i32.store
            local.get 8
            i32.load offset=4
            local.set 1
            local.get 8
            i32.load offset=8
            local.set 8
            local.get 4
            local.get 9
            i32.const -1
            i32.add
            i32.ne
            br_if 1 (;@3;)
            local.get 3
            i32.const 160
            i32.add
            local.get 6
            i32.load offset=32
            i32.store
            local.get 6
            i32.const 36
            i32.add
            i32.load
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.const 164
            i32.add
            local.get 6
            i32.load offset=32
            local.tee 4
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 4
            local.get 6
            i32.load offset=36
            local.get 11
            local.get 2
            call $time.tzset
            local.get 3
            i32.const 168
            i32.add
            local.get 3
            i32.load offset=8
            local.tee 4
            i32.store
            local.get 3
            i32.load8_u offset=41
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load offset=12
            local.set 1
            local.get 3
            i32.load offset=16
            local.set 8
            local.get 4
            local.set 7
            br 1 (;@3;)
          end
          local.get 6
          i32.load offset=12
          local.set 12
          local.get 3
          i32.const 92
          i32.add
          local.get 6
          i32.load offset=8
          local.tee 13
          i32.store
          local.get 3
          i32.const 96
          i32.add
          local.get 3
          i32.const 48
          i32.add
          i32.store
          local.get 6
          i32.load offset=24
          local.set 9
          local.get 3
          i32.const 100
          i32.add
          local.get 6
          i32.load offset=20
          local.tee 4
          i32.store
          i32.const 0
          local.set 1
          local.get 3
          i32.const 0
          i32.store offset=55 align=1
          local.get 3
          i64.const 0
          i64.store offset=48
          local.get 9
          i32.const 0
          local.get 9
          i32.const 0
          i32.gt_s
          select
          local.set 8
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 8
                local.get 1
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 7
                br 2 (;@4;)
              end
              local.get 9
              local.get 1
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 4
              i32.load8_u
              local.set 7
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 7
              br_if 0 (;@5;)
            end
            i32.const 0
            local.set 7
            local.get 1
            i32.const -1
            i32.add
            local.get 9
            i32.ge_s
            br_if 0 (;@4;)
            local.get 3
            i32.const 104
            i32.add
            local.get 6
            i32.load offset=20
            i32.store
            block  ;; label = @5
              local.get 6
              i32.load offset=24
              i32.const 1
              i32.lt_s
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=12
              local.set 1
              local.get 3
              i32.const 108
              i32.add
              local.get 6
              i32.load offset=8
              local.tee 4
              i32.store
              local.get 6
              i32.load offset=24
              local.set 7
              local.get 3
              i32.const 112
              i32.add
              local.get 6
              i32.load offset=20
              local.tee 9
              i32.store
              local.get 7
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              local.get 9
              i32.load8_u offset=8
              local.tee 7
              i32.le_u
              br_if 3 (;@2;)
              local.get 4
              local.get 7
              i32.const 4
              i32.shl
              i32.add
              i32.load8_u offset=12
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=24
              local.set 1
              local.get 3
              i32.const 116
              i32.add
              local.get 6
              i32.load offset=20
              local.tee 4
              i32.store
              local.get 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 4
              i32.load8_u offset=8
              local.tee 7
              i32.const 4
              i32.shl
              i32.const -4
              i32.add
              local.set 1
              local.get 3
              i32.const 120
              i32.add
              local.set 8
              loop  ;; label = @6
                local.get 7
                i32.const 0
                i32.le_s
                br_if 1 (;@5;)
                local.get 6
                i32.load offset=12
                local.set 4
                local.get 8
                local.get 6
                i32.load offset=8
                local.tee 9
                i32.store
                local.get 7
                i32.const -1
                i32.add
                local.tee 7
                local.get 4
                i32.ge_u
                br_if 4 (;@2;)
                local.get 9
                local.get 1
                i32.add
                local.set 4
                local.get 1
                i32.const -16
                i32.add
                local.set 1
                local.get 4
                i32.load8_u
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 3
            i32.const 124
            i32.add
            local.get 6
            i32.load offset=8
            i32.store
            i32.const 0
            local.set 7
            local.get 6
            i32.load offset=12
            local.tee 1
            i32.const 0
            local.get 1
            i32.const 0
            i32.gt_s
            select
            local.set 14
            i32.const 12
            local.set 4
            local.get 3
            i32.const 128
            i32.add
            local.set 15
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 14
              local.get 1
              i32.eq
              br_if 1 (;@4;)
              local.get 6
              i32.load offset=12
              local.set 9
              local.get 15
              local.get 6
              i32.load offset=8
              local.tee 8
              i32.store
              local.get 1
              local.get 9
              i32.ge_u
              br_if 3 (;@2;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 8
              local.get 4
              i32.add
              local.set 9
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 9
              i32.load8_u
              br_if 0 (;@5;)
            end
            local.get 1
            i32.const -1
            i32.add
            local.set 7
          end
          local.get 7
          local.get 12
          i32.ge_u
          br_if 1 (;@2;)
          local.get 13
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 132
          i32.add
          local.get 13
          local.get 7
          i32.const 4
          i32.shl
          i32.add
          local.tee 1
          i32.load
          local.tee 7
          i32.store
          local.get 1
          i32.load offset=8
          local.set 8
          local.get 1
          i32.load offset=4
          local.set 1
          local.get 3
          i32.const 136
          i32.add
          local.get 6
          i32.load offset=20
          i32.store
          local.get 6
          i32.load offset=24
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 6
          i32.load offset=24
          local.set 4
          local.get 3
          i32.const 140
          i32.add
          local.get 6
          i32.load offset=20
          local.tee 6
          i32.store
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.eqz
          br_if 2 (;@1;)
        end
        i32.const 0
        local.get 5
        i32.store offset=68120
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 7
        i32.store
        local.get 0
        local.get 8
        i32.store offset=8
        local.get 3
        i32.const 176
        i32.add
        global.set $__stack_pointer
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $time.tzset (type 22) (param i32 i32 i32 i64 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 136
    i32.add
    local.get 1
    local.get 2
    call $time.tzsetName
    i32.const 0
    local.set 2
    local.get 5
    i32.load offset=148
    local.set 1
    local.get 5
    i32.load offset=144
    local.set 6
    local.get 5
    i32.load offset=140
    local.set 7
    local.get 5
    i32.load offset=136
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load8_u offset=152
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        i32.const 0
        local.set 10
        br 1 (;@1;)
      end
      local.get 5
      i32.const 120
      i32.add
      local.get 6
      local.get 1
      call $time.tzsetOffset
      local.get 5
      i32.load offset=128
      local.set 1
      local.get 5
      i32.load offset=124
      local.set 6
      local.get 5
      i32.load8_u offset=132
      local.set 9
      local.get 5
      i32.load offset=120
      local.set 10
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 9
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          i32.const 0
          local.get 10
          i32.sub
          local.set 11
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load8_u
              i32.const 44
              i32.eq
              br_if 0 (;@5;)
              local.get 5
              i32.const 96
              i32.add
              local.get 6
              local.get 1
              call $time.tzsetName
              i32.const 0
              local.set 2
              local.get 5
              i32.load offset=108
              local.set 1
              local.get 5
              i32.load offset=104
              local.set 6
              local.get 5
              i32.load offset=100
              local.set 12
              local.get 5
              i32.load offset=96
              local.set 13
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load8_u offset=112
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 14
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load8_u
                  i32.const 44
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 80
                  i32.add
                  local.get 6
                  local.get 1
                  call $time.tzsetOffset
                  i32.const 0
                  local.get 5
                  i32.load offset=80
                  i32.sub
                  local.set 14
                  local.get 5
                  i32.load offset=88
                  local.set 1
                  local.get 5
                  i32.load offset=84
                  local.set 6
                  local.get 5
                  i32.load8_u offset=92
                  local.set 9
                  br 1 (;@6;)
                end
                i32.const 3600
                local.get 10
                i32.sub
                local.set 14
                i32.const 1
                local.set 9
              end
              local.get 9
              i32.const 1
              i32.and
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 1
                i32.const 15
                local.get 1
                select
                local.tee 9
                br_if 0 (;@6;)
                call $runtime.lookupPanic
                unreachable
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 66798
                    local.get 1
                    select
                    local.tee 1
                    i32.load8_u
                    local.tee 2
                    i32.const 59
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 44
                    i32.ne
                    br_if 1 (;@7;)
                  end
                  i32.const 0
                  local.set 2
                  local.get 5
                  i32.const 160
                  i32.add
                  i32.const 16
                  i32.add
                  local.tee 6
                  i32.const 0
                  i32.store
                  i64.const 0
                  local.set 3
                  local.get 5
                  i32.const 160
                  i32.add
                  i32.const 8
                  i32.add
                  local.tee 10
                  i64.const 0
                  i64.store
                  local.get 5
                  i32.const 184
                  i32.add
                  i32.const 8
                  i32.add
                  i64.const 0
                  i64.store
                  local.get 5
                  i32.const 184
                  i32.add
                  i32.const 16
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 5
                  i64.const 0
                  i64.store offset=160
                  local.get 5
                  i64.const 0
                  i64.store offset=184
                  local.get 5
                  i32.const 48
                  i32.add
                  local.get 1
                  i32.const 1
                  i32.add
                  local.get 9
                  i32.const -1
                  i32.add
                  call $time.tzsetRule
                  local.get 6
                  local.get 5
                  i32.load offset=64
                  local.tee 15
                  i32.store
                  local.get 10
                  local.get 5
                  i32.load offset=56
                  local.tee 16
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load offset=60
                  local.tee 17
                  i32.store offset=172
                  local.get 5
                  local.get 5
                  i32.load offset=52
                  local.tee 18
                  i32.store offset=164
                  local.get 5
                  local.get 5
                  i32.load offset=48
                  local.tee 19
                  i32.store offset=160
                  local.get 5
                  i32.load8_u offset=76
                  i32.eqz
                  br_if 5 (;@2;)
                  i32.const 0
                  local.set 1
                  i32.const 0
                  local.set 6
                  i64.const 0
                  local.set 20
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 10
                  local.get 5
                  i32.load offset=72
                  local.tee 21
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 5
                  i32.load offset=68
                  local.tee 1
                  i32.load8_u
                  i32.const 44
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 16
                  i32.add
                  local.get 1
                  i32.const 1
                  i32.add
                  local.get 21
                  i32.const -1
                  i32.add
                  call $time.tzsetRule
                  local.get 5
                  local.get 5
                  i32.load offset=32
                  local.tee 22
                  i32.store offset=200
                  local.get 5
                  local.get 5
                  i32.load offset=28
                  local.tee 23
                  i32.store offset=196
                  local.get 5
                  local.get 5
                  i32.load offset=24
                  local.tee 24
                  i32.store offset=192
                  local.get 5
                  local.get 5
                  i32.load offset=20
                  local.tee 25
                  i32.store offset=188
                  local.get 5
                  local.get 5
                  i32.load offset=16
                  local.tee 21
                  i32.store offset=184
                  i32.const 0
                  local.set 2
                  i64.const 0
                  local.set 3
                  local.get 5
                  i32.load8_u offset=44
                  i32.eqz
                  br_if 5 (;@2;)
                  i32.const 0
                  local.set 1
                  i32.const 0
                  local.set 6
                  i64.const 0
                  local.set 20
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 10
                  local.get 5
                  i32.load offset=40
                  i32.const 0
                  i32.le_s
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
                i32.const 0
                local.set 2
                br 3 (;@3;)
              end
              local.get 5
              local.get 4
              i64.const 9223372028715321600
              i64.add
              i32.const 0
              call $time.absDate
              local.get 5
              i32.load offset=12
              local.set 2
              local.get 5
              i32.load
              local.tee 1
              local.get 19
              local.get 18
              local.get 16
              local.get 17
              local.get 15
              local.get 11
              call $time.tzruleTime
              local.tee 10
              i64.extend_i32_s
              local.set 26
              local.get 1
              local.get 21
              local.get 25
              local.get 24
              local.get 23
              local.get 22
              local.get 14
              call $time.tzruleTime
              local.tee 19
              i64.extend_i32_s
              local.set 3
              local.get 1
              i64.extend_i32_s
              i64.const 292277022399
              i64.add
              local.tee 20
              i64.const 400
              i64.div_u
              local.tee 27
              i64.const -400
              i64.mul
              local.get 20
              i64.add
              local.tee 20
              i64.const 100
              i64.div_u
              local.tee 28
              i64.const 36524
              i64.mul
              local.get 27
              i64.const 146097
              i64.mul
              i64.add
              local.get 28
              i64.const -100
              i64.mul
              local.get 20
              i64.add
              local.tee 20
              i64.const 2
              i64.shr_u
              i64.const 1461
              i64.mul
              i64.add
              local.get 20
              i64.const 3
              i64.and
              i64.const 365
              i64.mul
              i64.add
              i64.const 86400
              i64.mul
              local.set 27
              local.get 4
              i64.const 86400
              i64.rem_s
              local.get 2
              i32.const 86400
              i32.mul
              i64.extend_i32_s
              i64.add
              local.set 20
              block  ;; label = @6
                block  ;; label = @7
                  local.get 19
                  local.get 10
                  i32.ge_s
                  local.tee 9
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.set 2
                  local.get 7
                  local.set 1
                  local.get 13
                  local.set 8
                  local.get 12
                  local.set 7
                  local.get 11
                  local.set 6
                  local.get 14
                  local.set 11
                  local.get 26
                  local.set 4
                  local.get 3
                  local.set 26
                  br 1 (;@6;)
                end
                local.get 13
                local.set 2
                local.get 12
                local.set 1
                local.get 14
                local.set 6
                local.get 3
                local.set 4
              end
              local.get 27
              i64.const -9223372028715321600
              i64.add
              local.set 3
              block  ;; label = @6
                local.get 20
                local.get 4
                i64.ge_s
                br_if 0 (;@6;)
                local.get 19
                local.get 10
                i32.lt_s
                local.set 9
                local.get 4
                local.get 3
                i64.add
                local.set 20
                i32.const 1
                local.set 10
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 20
                local.get 26
                i64.lt_s
                br_if 0 (;@6;)
                local.get 19
                local.get 10
                i32.lt_s
                local.set 9
                local.get 27
                i64.const -9223372028683785600
                i64.add
                local.set 20
                local.get 26
                local.get 3
                i64.add
                local.set 3
                i32.const 1
                local.set 10
                br 5 (;@1;)
              end
              local.get 26
              local.get 3
              i64.add
              local.set 20
              local.get 4
              local.get 3
              i64.add
              local.set 3
              i32.const 1
              local.set 10
              br 1 (;@4;)
            end
            i32.const 1
            local.set 10
            i64.const 9223372036854775807
            local.set 20
          end
          local.get 8
          local.set 2
          local.get 7
          local.set 1
          local.get 11
          local.set 6
          br 2 (;@1;)
        end
        i64.const 0
        local.set 3
      end
      i32.const 0
      local.set 1
      i32.const 0
      local.set 6
      i64.const 0
      local.set 20
      i32.const 0
      local.set 9
      i32.const 0
      local.set 10
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store offset=8
    local.get 0
    local.get 3
    i64.store offset=16
    local.get 0
    local.get 20
    i64.store offset=24
    local.get 0
    local.get 9
    i32.const 1
    i32.and
    i32.store8 offset=32
    local.get 0
    local.get 10
    i32.const 1
    i32.and
    i32.store8 offset=33
    local.get 5
    i32.const 208
    i32.add
    global.set $__stack_pointer)
  (func $time.initLocal (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 136
    i32.add
    local.tee 2
    i64.const 0
    i64.store
    local.get 1
    i32.const 128
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 1
    i32.const 112
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    i32.const 0
    local.set 5
    local.get 1
    i32.const 0
    i32.store offset=248
    local.get 1
    i64.const 0
    i64.store offset=240
    local.get 1
    i64.const 0
    i64.store offset=232
    local.get 1
    i64.const 0
    i64.store offset=224
    local.get 1
    i64.const 0
    i64.store offset=216
    local.get 1
    i64.const 0
    i64.store offset=208
    local.get 1
    i64.const 0
    i64.store offset=200
    local.get 1
    i64.const 0
    i64.store offset=192
    local.get 1
    i64.const 0
    i64.store offset=184
    local.get 1
    i64.const 0
    i64.store offset=176
    local.get 1
    i64.const 0
    i64.store offset=168
    local.get 1
    i64.const 0
    i64.store offset=160
    local.get 1
    i64.const 0
    i64.store offset=152
    local.get 1
    i64.const 0
    i64.store offset=144
    local.get 1
    i64.const 0
    i64.store offset=120
    local.get 1
    i64.const 150323855360
    i64.store offset=104
    local.get 2
    local.get 1
    i32.const 88
    i32.add
    i32.store
    local.get 1
    i32.const 132
    i32.add
    local.get 1
    i32.const 88
    i32.add
    i32.store
    local.get 3
    local.get 1
    i32.const 88
    i32.add
    i32.store
    local.get 1
    i32.const 0
    i32.load offset=68120
    local.tee 6
    i32.store offset=104
    i32.const 0
    local.get 1
    i32.const 104
    i32.add
    i32.store offset=68120
    local.get 1
    i32.const 64
    i32.add
    i32.const 66918
    i32.const 2
    call $syscall.cstring
    local.get 4
    local.get 1
    i32.load offset=64
    local.tee 2
    i32.store
    block  ;; label = @1
      local.get 1
      i32.load offset=68
      br_if 0 (;@1;)
      call $runtime.lookupPanic
      unreachable
    end
    local.get 1
    i32.const 140
    i32.add
    local.get 2
    call $getenv
    local.tee 3
    i32.store
    local.get 1
    i32.const 148
    i32.add
    local.get 3
    i32.store
    local.get 1
    i32.const 116
    i32.add
    local.get 3
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 5
      local.get 1
      i32.const 120
      i32.add
      local.set 4
      local.get 1
      i32.const 124
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 4
        local.get 3
        local.get 5
        i32.add
        local.tee 2
        i32.store
        local.get 7
        local.get 2
        i32.store
        block  ;; label = @3
          local.get 2
          i32.load8_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 96
          i32.add
          local.get 5
          i32.store
          local.get 1
          i64.const 0
          i64.store offset=88
          local.get 1
          local.get 5
          i32.store offset=92
          local.get 1
          local.get 3
          i32.store offset=88
          local.get 1
          i32.const 56
          i32.add
          local.get 3
          local.get 5
          local.get 5
          call $runtime.stringFromBytes
          local.get 1
          i32.const 144
          i32.add
          local.get 1
          i32.load offset=56
          local.tee 5
          i32.store
          i32.const 1
          local.set 3
          local.get 1
          i32.load offset=60
          local.set 2
          br 2 (;@1;)
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 152
    i32.add
    local.get 5
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i64.const 0
                i64.store offset=80
                local.get 1
                i32.const 156
                i32.add
                local.get 1
                i32.const 80
                i32.add
                i32.store
                local.get 1
                i32.const 66920
                i32.store offset=80
                local.get 1
                i32.const 4
                i32.store offset=84
                local.get 1
                i32.const 40
                i32.add
                i32.const 66924
                i32.const 9
                local.get 1
                i32.const 80
                i32.add
                i32.const 1
                call $time.loadLocation
                local.get 1
                i32.const 164
                i32.add
                local.get 1
                i32.load offset=48
                i32.store
                local.get 1
                i32.const 160
                i32.add
                local.get 1
                i32.load offset=40
                local.tee 5
                i32.store
                local.get 1
                i32.load offset=44
                br_if 3 (;@3;)
                local.get 5
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 2
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 5
            i64.load offset=48
            local.set 8
            local.get 5
            i64.load offset=40
            local.set 9
            local.get 5
            i32.load offset=36
            local.set 10
            local.get 5
            i32.load offset=28
            local.set 11
            local.get 5
            i32.load offset=12
            local.set 12
            local.get 5
            i32.load offset=20
            local.set 2
            i32.const 0
            local.get 5
            i32.load offset=4
            i32.store offset=68148
            local.get 5
            i32.load offset=24
            local.set 13
            local.get 5
            i32.load offset=16
            local.set 14
            local.get 5
            i32.load
            local.set 3
            local.get 5
            i32.load offset=56
            local.set 4
            local.get 5
            i32.load offset=32
            local.set 7
            local.get 1
            i32.const 192
            i32.add
            local.get 5
            i32.load offset=8
            local.tee 5
            i32.store
            local.get 1
            i32.const 200
            i32.add
            local.get 7
            i32.store
            local.get 1
            i32.const 204
            i32.add
            local.get 4
            i32.store
            local.get 1
            i32.const 196
            i32.add
            local.get 2
            i32.store
            local.get 1
            i32.const 188
            i32.add
            local.get 3
            i32.store
            i32.const 0
            local.get 3
            i32.store offset=68144
            i32.const 0
            local.get 5
            i32.store offset=68152
            i32.const 0
            local.get 12
            i32.store offset=68156
            i32.const 0
            local.get 14
            i32.store offset=68160
            i32.const 0
            local.get 2
            i32.store offset=68164
            i32.const 0
            local.get 13
            i32.store offset=68168
            i32.const 0
            local.get 11
            i32.store offset=68172
            i32.const 0
            local.get 7
            i32.store offset=68176
            i32.const 0
            local.get 10
            i32.store offset=68180
            i32.const 0
            local.get 9
            i64.store offset=68184
            i32.const 0
            local.get 8
            i64.store offset=68192
            i32.const 0
            local.get 4
            i32.store offset=68200
            i32.const 0
            i32.const 5
            i32.store offset=68148
            i32.const 0
            i32.const 66947
            i32.store offset=68144
            br 2 (;@2;)
          end
          local.get 1
          i32.const 208
          i32.add
          local.get 5
          i32.const 1
          i32.add
          local.get 5
          local.get 5
          i32.load8_u
          i32.const 58
          i32.eq
          local.tee 3
          select
          local.tee 5
          i32.store
          local.get 2
          i32.const -1
          i32.add
          local.get 2
          local.get 3
          select
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            i32.load8_u
            i32.const 47
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            local.get 2
            i32.const 66952
            i32.const 3
            call $runtime.stringEqual
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            local.get 1
            i32.const 24
            i32.add
            local.get 5
            local.get 2
            i32.const 67688
            i32.const 4
            call $time.loadLocation
            local.get 1
            i32.const 184
            i32.add
            local.get 1
            i32.load offset=32
            i32.store
            local.get 1
            i32.const 180
            i32.add
            local.get 1
            i32.load offset=24
            local.tee 5
            i32.store
            local.get 1
            i32.load offset=28
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 5
            i64.load offset=48
            local.set 8
            local.get 5
            i64.load offset=40
            local.set 9
            local.get 5
            i32.load offset=24
            local.set 7
            local.get 5
            i32.load offset=16
            local.set 10
            local.get 5
            i32.load offset=8
            local.set 2
            local.get 5
            i32.load offset=32
            local.set 3
            local.get 5
            i32.load offset=56
            local.set 4
            local.get 1
            i32.const 232
            i32.add
            local.get 5
            i32.load
            local.tee 11
            i32.store
            local.get 1
            i32.const 240
            i32.add
            local.get 5
            i32.load offset=20
            local.tee 12
            i32.store
            local.get 1
            i32.const 248
            i32.add
            local.get 4
            i32.store
            local.get 5
            i32.load offset=36
            local.set 13
            local.get 5
            i32.load offset=28
            local.set 14
            local.get 5
            i32.load offset=12
            local.set 15
            local.get 5
            i32.load offset=4
            local.set 5
            local.get 1
            i32.const 244
            i32.add
            local.get 3
            i32.store
            local.get 1
            i32.const 236
            i32.add
            local.get 2
            i32.store
            i32.const 0
            local.get 11
            i32.store offset=68144
            i32.const 0
            local.get 5
            i32.store offset=68148
            i32.const 0
            local.get 2
            i32.store offset=68152
            i32.const 0
            local.get 15
            i32.store offset=68156
            i32.const 0
            local.get 10
            i32.store offset=68160
            i32.const 0
            local.get 12
            i32.store offset=68164
            i32.const 0
            local.get 7
            i32.store offset=68168
            i32.const 0
            local.get 14
            i32.store offset=68172
            i32.const 0
            local.get 3
            i32.store offset=68176
            i32.const 0
            local.get 13
            i32.store offset=68180
            i32.const 0
            local.get 9
            i64.store offset=68184
            i32.const 0
            local.get 8
            i64.store offset=68192
            i32.const 0
            local.get 4
            i32.store offset=68200
            br 2 (;@2;)
          end
          local.get 1
          i64.const 0
          i64.store offset=72
          local.get 1
          i32.const 168
          i32.add
          local.get 1
          i32.const 72
          i32.add
          i32.store
          local.get 1
          i32.const 8
          i32.add
          local.get 5
          local.get 2
          local.get 1
          i32.const 72
          i32.add
          i32.const 1
          call $time.loadLocation
          local.get 1
          i32.const 176
          i32.add
          local.get 1
          i32.load offset=16
          i32.store
          local.get 1
          i32.const 172
          i32.add
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.store
          local.get 1
          i32.load offset=12
          br_if 0 (;@3;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i64.load offset=48
          local.set 8
          local.get 3
          i64.load offset=40
          local.set 9
          local.get 3
          i32.load offset=24
          local.set 11
          local.get 3
          i32.load offset=16
          local.set 12
          local.get 3
          i32.load
          local.set 4
          local.get 3
          i32.load offset=56
          local.set 7
          local.get 3
          i32.load offset=32
          local.set 10
          local.get 1
          i32.const 216
          i32.add
          local.get 3
          i32.load offset=8
          local.tee 13
          i32.store
          local.get 1
          i32.const 224
          i32.add
          local.get 10
          i32.store
          local.get 3
          i32.load offset=36
          local.set 14
          local.get 3
          i32.load offset=28
          local.set 15
          local.get 3
          i32.load offset=12
          local.set 16
          local.get 3
          i32.load offset=4
          local.set 17
          local.get 3
          i32.load offset=20
          local.set 3
          local.get 1
          i32.const 228
          i32.add
          local.get 7
          i32.store
          local.get 1
          i32.const 220
          i32.add
          local.get 3
          i32.store
          local.get 1
          i32.const 212
          i32.add
          local.get 4
          i32.store
          i32.const 0
          local.get 4
          i32.store offset=68144
          i32.const 0
          local.get 17
          i32.store offset=68148
          i32.const 0
          local.get 13
          i32.store offset=68152
          i32.const 0
          local.get 16
          i32.store offset=68156
          i32.const 0
          local.get 12
          i32.store offset=68160
          i32.const 0
          local.get 3
          i32.store offset=68164
          i32.const 0
          local.get 11
          i32.store offset=68168
          i32.const 0
          local.get 15
          i32.store offset=68172
          i32.const 0
          local.get 10
          i32.store offset=68176
          i32.const 0
          local.get 14
          i32.store offset=68180
          i32.const 0
          local.get 9
          i64.store offset=68184
          i32.const 0
          local.get 8
          i64.store offset=68192
          i32.const 0
          local.get 7
          i32.store offset=68200
          block  ;; label = @4
            local.get 5
            local.get 2
            i32.const 66933
            i32.const 14
            call $runtime.stringEqual
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 2
            i32.store offset=68148
            i32.const 0
            local.get 5
            i32.store offset=68144
            br 2 (;@2;)
          end
          i32.const 0
          i32.const 5
          i32.store offset=68148
          i32.const 0
          i32.const 66947
          i32.store offset=68144
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 3
        i32.store offset=68148
        i32.const 0
        i32.const 66952
        i32.store offset=68144
      end
      i32.const 0
      local.get 6
      i32.store offset=68120
      local.get 1
      i32.const 256
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $time.loadLocation (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 1072
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 784
    i32.add
    local.tee 6
    i64.const 0
    i64.store
    local.get 5
    i32.const 744
    i32.add
    local.tee 7
    i64.const 0
    i64.store
    local.get 5
    i64.const 0
    i64.store offset=944
    local.get 5
    i64.const 0
    i64.store offset=936
    local.get 5
    i64.const 0
    i64.store offset=928
    local.get 5
    i64.const 0
    i64.store offset=920
    local.get 5
    i64.const 0
    i64.store offset=912
    local.get 5
    i64.const 0
    i64.store offset=904
    local.get 5
    i64.const 0
    i64.store offset=896
    local.get 5
    i64.const 0
    i64.store offset=888
    local.get 5
    i64.const 0
    i64.store offset=880
    local.get 5
    i64.const 0
    i64.store offset=872
    local.get 5
    i64.const 0
    i64.store offset=864
    local.get 5
    i64.const 0
    i64.store offset=856
    local.get 5
    i64.const 0
    i64.store offset=848
    local.get 5
    i64.const 0
    i64.store offset=840
    local.get 5
    i64.const 0
    i64.store offset=832
    local.get 5
    i64.const 0
    i64.store offset=824
    local.get 5
    i64.const 0
    i64.store offset=816
    local.get 5
    i64.const 0
    i64.store offset=808
    local.get 5
    i64.const 0
    i64.store offset=800
    local.get 5
    i64.const 0
    i64.store offset=792
    local.get 5
    i64.const 0
    i64.store offset=776
    local.get 5
    i64.const 0
    i64.store offset=768
    local.get 5
    i64.const 0
    i64.store offset=760
    local.get 5
    i64.const 0
    i64.store offset=752
    local.get 5
    i64.const 0
    i64.store offset=736
    local.get 5
    i64.const 0
    i64.store offset=728
    local.get 5
    i64.const 0
    i64.store offset=720
    local.get 5
    i64.const 0
    i64.store offset=712
    local.get 5
    i64.const 0
    i64.store offset=704
    local.get 5
    i64.const 390842023936
    i64.store offset=696
    local.get 5
    i32.const 1008
    i32.add
    local.tee 8
    i64.const 0
    i64.store
    local.get 5
    i32.const 0
    i32.store offset=1064
    local.get 5
    i64.const 0
    i64.store offset=1056
    local.get 5
    i64.const 0
    i64.store offset=1048
    local.get 5
    i64.const 0
    i64.store offset=1040
    local.get 5
    i64.const 0
    i64.store offset=1032
    local.get 5
    i64.const 0
    i64.store offset=1024
    local.get 5
    i64.const 0
    i64.store offset=1016
    local.get 5
    i64.const 0
    i64.store offset=1000
    local.get 5
    i64.const 0
    i64.store offset=992
    local.get 5
    i64.const 0
    i64.store offset=984
    local.get 5
    i64.const 0
    i64.store offset=976
    local.get 5
    i64.const 0
    i64.store offset=968
    local.get 5
    i64.const 0
    i64.store offset=960
    local.get 5
    i64.const 0
    i64.store offset=952
    local.get 5
    i32.const 696
    i32.add
    i32.const 28
    i32.add
    local.get 5
    i32.const 576
    i32.add
    i32.store
    local.get 5
    i32.const 844
    i32.add
    local.get 5
    i32.const 680
    i32.add
    i32.store
    local.get 5
    i32.const 780
    i32.add
    local.get 5
    i32.const 600
    i32.add
    i32.store
    local.get 5
    i32.const 696
    i32.add
    i32.const 12
    i32.add
    local.get 5
    i32.const 664
    i32.add
    i32.store
    local.get 5
    i32.const 732
    i32.add
    local.get 5
    i32.const 648
    i32.add
    i32.store
    local.get 7
    local.get 5
    i32.const 632
    i32.add
    i32.store
    local.get 6
    local.get 5
    i32.const 616
    i32.add
    i32.store
    local.get 5
    i32.const 892
    i32.add
    local.get 5
    i32.const 576
    i32.add
    i32.store
    i32.const 0
    i32.load offset=68120
    local.set 9
    i32.const 0
    local.get 5
    i32.const 696
    i32.add
    i32.store offset=68120
    local.get 8
    local.get 5
    i32.const 576
    i32.add
    i32.store
    local.get 5
    local.get 9
    i32.store offset=696
    local.get 5
    i32.const 696
    i32.add
    i32.const 8
    i32.add
    local.set 10
    local.get 5
    i32.const 884
    i32.add
    local.set 11
    local.get 5
    i32.const 888
    i32.add
    local.set 12
    local.get 5
    i32.const 896
    i32.add
    local.set 13
    local.get 5
    i32.const 900
    i32.add
    local.set 14
    local.get 5
    i32.const 956
    i32.add
    local.set 15
    local.get 5
    i32.const 960
    i32.add
    local.set 16
    local.get 5
    i32.const 920
    i32.add
    local.set 17
    local.get 5
    i32.const 964
    i32.add
    local.set 18
    local.get 5
    i32.const 968
    i32.add
    local.set 19
    local.get 5
    i32.const 972
    i32.add
    local.set 20
    local.get 5
    i32.const 976
    i32.add
    local.set 21
    local.get 5
    i32.const 980
    i32.add
    local.set 22
    local.get 5
    i32.const 984
    i32.add
    local.set 23
    local.get 5
    i32.const 948
    i32.add
    local.set 24
    local.get 5
    i32.const 952
    i32.add
    local.set 25
    local.get 5
    i32.const 940
    i32.add
    local.set 26
    local.get 5
    i32.const 944
    i32.add
    local.set 27
    local.get 5
    i32.const 924
    i32.add
    local.set 28
    local.get 5
    i32.const 928
    i32.add
    local.set 29
    local.get 5
    i32.const 932
    i32.add
    local.set 30
    local.get 5
    i32.const 936
    i32.add
    local.set 31
    local.get 5
    i32.const 696
    i32.add
    i32.const 216
    i32.add
    local.set 32
    local.get 5
    i32.const 916
    i32.add
    local.set 33
    local.get 5
    i32.const 904
    i32.add
    local.set 34
    local.get 5
    i32.const 908
    i32.add
    local.set 35
    local.get 5
    i32.const 988
    i32.add
    local.set 36
    local.get 5
    i32.const 1060
    i32.add
    local.set 37
    local.get 5
    i32.const 1064
    i32.add
    local.set 38
    local.get 5
    i32.const 1056
    i32.add
    local.set 39
    local.get 5
    i32.const 1052
    i32.add
    local.set 40
    local.get 5
    i32.const 1048
    i32.add
    local.set 41
    local.get 5
    i32.const 696
    i32.add
    i32.const 20
    i32.add
    local.set 42
    local.get 5
    i32.const 728
    i32.add
    local.set 43
    local.get 5
    i32.const 736
    i32.add
    local.set 44
    local.get 5
    i32.const 696
    i32.add
    i32.const 44
    i32.add
    local.set 45
    local.get 5
    i32.const 748
    i32.add
    local.set 46
    local.get 5
    i32.const 752
    i32.add
    local.set 47
    local.get 5
    i32.const 756
    i32.add
    local.set 48
    local.get 5
    i32.const 696
    i32.add
    i32.const 64
    i32.add
    local.set 49
    local.get 5
    i32.const 764
    i32.add
    local.set 50
    local.get 5
    i32.const 772
    i32.add
    local.set 51
    local.get 5
    i32.const 768
    i32.add
    local.set 52
    local.get 5
    i32.const 808
    i32.add
    local.set 53
    local.get 5
    i32.const 828
    i32.add
    local.set 54
    local.get 5
    i32.const 832
    i32.add
    local.set 55
    local.get 5
    i32.const 776
    i32.add
    local.set 56
    local.get 5
    i32.const 840
    i32.add
    local.set 57
    local.get 5
    i32.const 856
    i32.add
    local.set 58
    local.get 5
    i32.const 812
    i32.add
    local.set 59
    local.get 5
    i32.const 800
    i32.add
    local.set 60
    local.get 5
    i32.const 824
    i32.add
    local.set 61
    local.get 5
    i32.const 788
    i32.add
    local.set 62
    local.get 5
    i32.const 792
    i32.add
    local.set 63
    local.get 5
    i32.const 796
    i32.add
    local.set 64
    local.get 5
    i32.const 836
    i32.add
    local.set 65
    local.get 5
    i32.const 804
    i32.add
    local.set 66
    local.get 5
    i32.const 852
    i32.add
    local.set 67
    local.get 5
    i32.const 848
    i32.add
    local.set 68
    local.get 5
    i32.const 816
    i32.add
    local.set 69
    local.get 5
    i32.const 820
    i32.add
    local.set 70
    local.get 5
    i32.const 864
    i32.add
    local.set 71
    local.get 5
    i32.const 860
    i32.add
    local.set 72
    local.get 5
    i32.const 868
    i32.add
    local.set 73
    local.get 5
    i32.const 992
    i32.add
    local.set 74
    local.get 5
    i32.const 996
    i32.add
    local.set 75
    local.get 5
    i32.const 1000
    i32.add
    local.set 76
    local.get 5
    i32.const 1004
    i32.add
    local.set 77
    local.get 5
    i32.const 1012
    i32.add
    local.set 78
    local.get 5
    i32.const 1016
    i32.add
    local.set 79
    local.get 5
    i32.const 1024
    i32.add
    local.set 80
    local.get 5
    i32.const 1020
    i32.add
    local.set 81
    local.get 5
    i32.const 1040
    i32.add
    local.set 82
    local.get 5
    i32.const 1028
    i32.add
    local.set 83
    local.get 5
    i32.const 1032
    i32.add
    local.set 84
    local.get 5
    i32.const 1036
    i32.add
    local.set 85
    local.get 5
    i32.const 1044
    i32.add
    local.set 86
    i32.const 0
    local.set 87
    i32.const 0
    local.set 88
    i32.const -1
    local.set 89
    loop  ;; label = @1
      local.get 10
      local.get 88
      i32.store
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
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
                                      local.get 89
                                      i32.const 1
                                      i32.add
                                      local.tee 89
                                      local.get 4
                                      i32.ge_s
                                      br_if 0 (;@17;)
                                      local.get 89
                                      local.get 4
                                      i32.ge_u
                                      br_if 6 (;@11;)
                                      local.get 11
                                      local.get 3
                                      local.get 89
                                      i32.const 3
                                      i32.shl
                                      i32.add
                                      local.tee 6
                                      i32.load
                                      local.tee 90
                                      i32.store
                                      local.get 6
                                      i32.load offset=4
                                      local.tee 7
                                      i32.const 5
                                      i32.gt_s
                                      br_if 1 (;@16;)
                                      local.get 1
                                      local.set 91
                                      local.get 2
                                      local.set 92
                                      local.get 7
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      local.get 7
                                      i32.const 5
                                      i32.eq
                                      br_if 2 (;@15;)
                                      br 3 (;@14;)
                                    end
                                    local.get 5
                                    i32.const 872
                                    i32.add
                                    local.get 88
                                    i32.store
                                    i32.const 0
                                    local.set 90
                                    local.get 87
                                    br_if 14 (;@2;)
                                    local.get 5
                                    i32.const 568
                                    i32.add
                                    i32.const 66900
                                    i32.const 18
                                    local.get 1
                                    local.get 2
                                    call $runtime.stringConcat
                                    local.get 5
                                    i32.const 876
                                    i32.add
                                    local.get 5
                                    i32.load offset=568
                                    local.tee 6
                                    i32.store
                                    local.get 5
                                    i32.const 560
                                    i32.add
                                    local.get 6
                                    local.get 5
                                    i32.load offset=572
                                    call $errors.New
                                    local.get 5
                                    i32.const 880
                                    i32.add
                                    local.get 5
                                    i32.load offset=564
                                    local.tee 88
                                    i32.store
                                    local.get 5
                                    i32.load offset=560
                                    local.set 87
                                    br 14 (;@2;)
                                  end
                                  local.get 7
                                  local.get 90
                                  i32.add
                                  i32.const -6
                                  i32.add
                                  i32.const 6
                                  i32.const 66894
                                  i32.const 6
                                  call $runtime.stringEqual
                                  i32.const 1
                                  i32.and
                                  br_if 7 (;@8;)
                                end
                                local.get 7
                                local.get 90
                                i32.add
                                i32.const -4
                                i32.add
                                i32.const 4
                                i32.const 66841
                                i32.const 4
                                call $runtime.stringEqual
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 5
                                i32.const 480
                                i32.add
                                local.get 90
                                local.get 7
                                call $time.open
                                local.get 12
                                local.get 5
                                i32.load offset=488
                                local.tee 8
                                i32.store
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=484
                                    local.tee 93
                                    br_if 0 (;@16;)
                                    local.get 5
                                    local.get 5
                                    i32.load offset=480
                                    local.tee 92
                                    i32.store offset=584
                                    local.get 5
                                    i64.const 0
                                    i64.store offset=576
                                    local.get 13
                                    i32.const 22
                                    call $runtime.alloc
                                    local.tee 8
                                    i32.store
                                    local.get 5
                                    i32.const 472
                                    i32.add
                                    local.get 92
                                    local.get 8
                                    i32.const 22
                                    i32.const 22
                                    i32.const -22
                                    call $time.preadn
                                    local.get 14
                                    local.get 5
                                    i32.load offset=476
                                    i32.store
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load offset=472
                                      br_if 0 (;@17;)
                                      local.get 8
                                      i32.const 22
                                      call $time.get4
                                      i32.const 101010256
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 8
                                      i32.load16_u offset=10 align=1
                                      local.set 91
                                      local.get 8
                                      i32.const 12
                                      i32.add
                                      i32.const 10
                                      call $time.get4
                                      local.tee 6
                                      i32.const -1
                                      i32.le_s
                                      br_if 10 (;@7;)
                                      local.get 8
                                      i32.const 16
                                      i32.add
                                      i32.const 6
                                      call $time.get4
                                      local.set 93
                                      local.get 15
                                      local.get 6
                                      call $runtime.alloc
                                      local.tee 8
                                      i32.store
                                      local.get 5
                                      i32.const 448
                                      i32.add
                                      local.get 92
                                      local.get 8
                                      local.get 6
                                      local.get 6
                                      local.get 93
                                      call $time.preadn
                                      local.get 16
                                      local.get 5
                                      i32.load offset=452
                                      i32.store
                                      local.get 6
                                      local.set 93
                                      block  ;; label = @18
                                        local.get 5
                                        i32.load offset=448
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 5
                                        i32.const 440
                                        i32.add
                                        i32.const 66877
                                        i32.const 17
                                        local.get 90
                                        local.get 7
                                        call $runtime.stringConcat
                                        local.get 32
                                        local.get 5
                                        i32.load offset=440
                                        local.tee 6
                                        i32.store
                                        local.get 5
                                        i32.const 432
                                        i32.add
                                        local.get 6
                                        local.get 5
                                        i32.load offset=444
                                        call $errors.New
                                        local.get 33
                                        local.get 5
                                        i32.load offset=436
                                        local.tee 8
                                        i32.store
                                        local.get 5
                                        i32.const 576
                                        i32.add
                                        local.set 6
                                        local.get 5
                                        i32.load offset=432
                                        local.set 93
                                        loop  ;; label = @19
                                          local.get 6
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 6
                                          i32.load offset=4
                                          local.set 7
                                          local.get 6
                                          i32.load offset=8
                                          call $time.closefd
                                          local.get 7
                                          local.set 6
                                          br 0 (;@19;)
                                        end
                                      end
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 17
                                            local.get 8
                                            i32.store
                                            local.get 91
                                            i32.eqz
                                            br_if 1 (;@19;)
                                            local.get 8
                                            local.get 6
                                            call $time.get4
                                            i32.const 33639248
                                            i32.ne
                                            br_if 1 (;@19;)
                                            local.get 6
                                            i32.const 10
                                            i32.lt_u
                                            br_if 13 (;@7;)
                                            local.get 6
                                            local.get 93
                                            i32.gt_u
                                            br_if 13 (;@7;)
                                            i32.const 0
                                            local.set 94
                                            block  ;; label = @21
                                              local.get 6
                                              i32.const -10
                                              i32.add
                                              i32.const 2
                                              i32.lt_s
                                              br_if 0 (;@21;)
                                              local.get 8
                                              i32.load16_u offset=10 align=1
                                              local.set 94
                                            end
                                            local.get 6
                                            i32.const 23
                                            i32.le_u
                                            br_if 13 (;@7;)
                                            local.get 8
                                            i32.const 24
                                            i32.add
                                            local.get 6
                                            i32.const -24
                                            i32.add
                                            call $time.get4
                                            local.set 95
                                            local.get 6
                                            i32.const 27
                                            i32.le_u
                                            br_if 13 (;@7;)
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 6
                                                i32.const -28
                                                i32.add
                                                i32.const 2
                                                i32.lt_s
                                                br_if 0 (;@22;)
                                                local.get 8
                                                i32.load16_u offset=28 align=1
                                                local.set 96
                                                br 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 96
                                              local.get 6
                                              i32.const 29
                                              i32.le_u
                                              br_if 14 (;@7;)
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 6
                                                i32.const -30
                                                i32.add
                                                i32.const 2
                                                i32.lt_s
                                                br_if 0 (;@22;)
                                                local.get 8
                                                i32.load16_u offset=30 align=1
                                                local.set 97
                                                br 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 97
                                              local.get 6
                                              i32.const 31
                                              i32.le_u
                                              br_if 14 (;@7;)
                                            end
                                            i32.const 0
                                            local.set 98
                                            block  ;; label = @21
                                              local.get 6
                                              i32.const -32
                                              i32.add
                                              i32.const 2
                                              i32.lt_s
                                              br_if 0 (;@21;)
                                              local.get 8
                                              i32.load16_u offset=32 align=1
                                              local.set 98
                                            end
                                            local.get 6
                                            i32.const 41
                                            i32.le_u
                                            br_if 13 (;@7;)
                                            local.get 8
                                            i32.const 42
                                            i32.add
                                            local.get 6
                                            i32.const -42
                                            i32.add
                                            call $time.get4
                                            local.set 99
                                            local.get 96
                                            i32.const -47
                                            i32.gt_u
                                            br_if 13 (;@7;)
                                            local.get 96
                                            i32.const 46
                                            i32.add
                                            local.tee 100
                                            local.get 93
                                            i32.gt_u
                                            br_if 13 (;@7;)
                                            local.get 6
                                            local.get 97
                                            local.get 100
                                            i32.add
                                            local.get 98
                                            i32.add
                                            local.tee 98
                                            i32.lt_u
                                            br_if 13 (;@7;)
                                            local.get 5
                                            i32.const 424
                                            i32.add
                                            local.get 8
                                            i32.const 46
                                            i32.add
                                            local.get 96
                                            local.get 93
                                            i32.const -46
                                            i32.add
                                            call $runtime.stringFromBytes
                                            local.get 18
                                            local.get 5
                                            i32.load offset=424
                                            local.tee 97
                                            i32.store
                                            local.get 97
                                            local.get 5
                                            i32.load offset=428
                                            local.get 1
                                            local.get 2
                                            call $runtime.stringEqual
                                            i32.const 1
                                            i32.and
                                            br_if 2 (;@18;)
                                            local.get 91
                                            i32.const -1
                                            i32.add
                                            local.set 91
                                            local.get 8
                                            local.get 98
                                            i32.add
                                            local.set 8
                                            local.get 6
                                            local.get 98
                                            i32.sub
                                            local.set 6
                                            local.get 93
                                            local.get 98
                                            i32.sub
                                            local.set 93
                                            br 0 (;@20;)
                                          end
                                        end
                                        local.get 5
                                        i32.const 576
                                        i32.add
                                        local.set 6
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 6
                                            br_if 0 (;@20;)
                                            i32.const 44
                                            local.set 8
                                            i32.const 216
                                            local.set 93
                                            br 4 (;@16;)
                                          end
                                          local.get 6
                                          i32.load offset=4
                                          local.set 7
                                          local.get 6
                                          i32.load offset=8
                                          call $time.closefd
                                          local.get 7
                                          local.set 6
                                          br 0 (;@19;)
                                        end
                                      end
                                      block  ;; label = @18
                                        local.get 94
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 5
                                        i32.const 416
                                        i32.add
                                        i32.const 66845
                                        i32.const 28
                                        local.get 1
                                        local.get 2
                                        call $runtime.stringConcat
                                        local.get 28
                                        local.get 5
                                        i32.load offset=416
                                        local.tee 6
                                        i32.store
                                        local.get 5
                                        i32.const 408
                                        i32.add
                                        local.get 6
                                        local.get 5
                                        i32.load offset=420
                                        i32.const 66873
                                        i32.const 4
                                        call $runtime.stringConcat
                                        local.get 29
                                        local.get 5
                                        i32.load offset=408
                                        local.tee 6
                                        i32.store
                                        local.get 5
                                        i32.const 400
                                        i32.add
                                        local.get 6
                                        local.get 5
                                        i32.load offset=412
                                        local.get 90
                                        local.get 7
                                        call $runtime.stringConcat
                                        local.get 30
                                        local.get 5
                                        i32.load offset=400
                                        local.tee 6
                                        i32.store
                                        local.get 5
                                        i32.const 392
                                        i32.add
                                        local.get 6
                                        local.get 5
                                        i32.load offset=404
                                        call $errors.New
                                        local.get 31
                                        local.get 5
                                        i32.load offset=396
                                        local.tee 8
                                        i32.store
                                        local.get 5
                                        i32.const 576
                                        i32.add
                                        local.set 6
                                        local.get 5
                                        i32.load offset=392
                                        local.set 93
                                        loop  ;; label = @19
                                          local.get 6
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 6
                                          i32.load offset=4
                                          local.set 7
                                          local.get 6
                                          i32.load offset=8
                                          call $time.closefd
                                          local.get 7
                                          local.set 6
                                          br 0 (;@19;)
                                        end
                                      end
                                      local.get 96
                                      i32.const -30
                                      i32.lt_s
                                      br_if 10 (;@7;)
                                      local.get 19
                                      local.get 96
                                      i32.const 30
                                      i32.add
                                      local.tee 8
                                      call $runtime.alloc
                                      local.tee 6
                                      i32.store
                                      local.get 5
                                      i32.const 384
                                      i32.add
                                      local.get 92
                                      local.get 6
                                      local.get 8
                                      local.get 8
                                      local.get 99
                                      call $time.preadn
                                      local.get 20
                                      local.get 5
                                      i32.load offset=388
                                      i32.store
                                      block  ;; label = @18
                                        local.get 5
                                        i32.load offset=384
                                        br_if 0 (;@18;)
                                        local.get 6
                                        local.get 8
                                        call $time.get4
                                        i32.const 67324752
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 6
                                        i32.load16_u offset=8 align=1
                                        br_if 0 (;@18;)
                                        local.get 6
                                        i32.load16_u offset=26 align=1
                                        local.get 96
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 5
                                        i32.const 376
                                        i32.add
                                        local.get 6
                                        i32.const 30
                                        i32.add
                                        local.get 96
                                        local.get 96
                                        call $runtime.stringFromBytes
                                        local.get 21
                                        local.get 5
                                        i32.load offset=376
                                        local.tee 93
                                        i32.store
                                        local.get 93
                                        local.get 5
                                        i32.load offset=380
                                        local.get 1
                                        local.get 2
                                        call $runtime.stringEqual
                                        i32.const 1
                                        i32.and
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 95
                                        i32.const -1
                                        i32.le_s
                                        br_if 11 (;@7;)
                                        local.get 6
                                        i32.load16_u offset=28 align=1
                                        local.set 93
                                        local.get 22
                                        local.get 95
                                        call $runtime.alloc
                                        local.tee 6
                                        i32.store
                                        local.get 5
                                        i32.const 352
                                        i32.add
                                        local.get 92
                                        local.get 6
                                        local.get 95
                                        local.get 95
                                        local.get 93
                                        local.get 99
                                        local.get 8
                                        i32.add
                                        i32.add
                                        call $time.preadn
                                        local.get 23
                                        local.get 5
                                        i32.load offset=356
                                        i32.store
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 5
                                            i32.load offset=352
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 576
                                            i32.add
                                            local.set 7
                                            loop  ;; label = @21
                                              local.get 7
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 7
                                              i32.load offset=4
                                              local.set 8
                                              local.get 7
                                              i32.load offset=8
                                              call $time.closefd
                                              local.get 8
                                              local.set 7
                                              br 0 (;@21;)
                                            end
                                          end
                                          local.get 5
                                          i32.const 344
                                          i32.add
                                          i32.const 66877
                                          i32.const 17
                                          local.get 90
                                          local.get 7
                                          call $runtime.stringConcat
                                          local.get 24
                                          local.get 5
                                          i32.load offset=344
                                          local.tee 6
                                          i32.store
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          local.get 6
                                          local.get 5
                                          i32.load offset=348
                                          call $errors.New
                                          local.get 25
                                          local.get 5
                                          i32.load offset=340
                                          local.tee 8
                                          i32.store
                                          local.get 5
                                          i32.const 576
                                          i32.add
                                          local.set 6
                                          local.get 5
                                          i32.load offset=336
                                          local.set 93
                                          loop  ;; label = @20
                                            local.get 6
                                            i32.eqz
                                            br_if 4 (;@16;)
                                            local.get 6
                                            i32.load offset=4
                                            local.set 7
                                            local.get 6
                                            i32.load offset=8
                                            call $time.closefd
                                            local.get 7
                                            local.set 6
                                            br 0 (;@20;)
                                          end
                                        end
                                        i32.const 0
                                        local.set 93
                                        local.get 95
                                        local.set 96
                                        i32.const 0
                                        local.set 8
                                        br 3 (;@15;)
                                      end
                                      local.get 5
                                      i32.const 368
                                      i32.add
                                      i32.const 66877
                                      i32.const 17
                                      local.get 90
                                      local.get 7
                                      call $runtime.stringConcat
                                      local.get 26
                                      local.get 5
                                      i32.load offset=368
                                      local.tee 6
                                      i32.store
                                      local.get 5
                                      i32.const 360
                                      i32.add
                                      local.get 6
                                      local.get 5
                                      i32.load offset=372
                                      call $errors.New
                                      local.get 27
                                      local.get 5
                                      i32.load offset=364
                                      local.tee 8
                                      i32.store
                                      local.get 5
                                      i32.const 576
                                      i32.add
                                      local.set 6
                                      local.get 5
                                      i32.load offset=360
                                      local.set 93
                                      loop  ;; label = @18
                                        local.get 6
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 6
                                        i32.load offset=4
                                        local.set 7
                                        local.get 6
                                        i32.load offset=8
                                        call $time.closefd
                                        local.get 7
                                        local.set 6
                                        br 0 (;@18;)
                                      end
                                    end
                                    local.get 5
                                    i32.const 464
                                    i32.add
                                    i32.const 66877
                                    i32.const 17
                                    local.get 90
                                    local.get 7
                                    call $runtime.stringConcat
                                    local.get 34
                                    local.get 5
                                    i32.load offset=464
                                    local.tee 6
                                    i32.store
                                    local.get 5
                                    i32.const 456
                                    i32.add
                                    local.get 6
                                    local.get 5
                                    i32.load offset=468
                                    call $errors.New
                                    local.get 35
                                    local.get 5
                                    i32.load offset=460
                                    local.tee 8
                                    i32.store
                                    local.get 5
                                    i32.const 576
                                    i32.add
                                    local.set 6
                                    local.get 5
                                    i32.load offset=456
                                    local.set 93
                                    loop  ;; label = @17
                                      local.get 6
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      local.get 6
                                      i32.load offset=4
                                      local.set 7
                                      local.get 6
                                      i32.load offset=8
                                      call $time.closefd
                                      local.get 7
                                      local.set 6
                                      br 0 (;@17;)
                                    end
                                  end
                                  i32.const 0
                                  local.set 6
                                  i32.const 0
                                  local.set 95
                                  i32.const 0
                                  local.set 96
                                end
                                local.get 36
                                local.get 6
                                i32.store
                                br 2 (;@12;)
                              end
                              local.get 5
                              i32.const 552
                              i32.add
                              local.get 90
                              local.get 7
                              i32.const 67039
                              i32.const 1
                              call $runtime.stringConcat
                              local.get 74
                              local.get 5
                              i32.load offset=552
                              local.tee 6
                              i32.store
                              local.get 5
                              i32.const 544
                              i32.add
                              local.get 6
                              local.get 5
                              i32.load offset=556
                              local.get 1
                              local.get 2
                              call $runtime.stringConcat
                              local.get 75
                              local.get 5
                              i32.load offset=544
                              local.tee 91
                              i32.store
                              local.get 5
                              i32.load offset=548
                              local.set 92
                            end
                            local.get 76
                            local.get 91
                            i32.store
                            local.get 5
                            i32.const 528
                            i32.add
                            local.get 91
                            local.get 92
                            call $time.open
                            local.get 77
                            local.get 5
                            i32.load offset=536
                            local.tee 8
                            i32.store
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=532
                                  local.tee 93
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 6
                                  br 1 (;@14;)
                                end
                                local.get 5
                                local.get 5
                                i32.load offset=528
                                local.tee 98
                                i32.store offset=584
                                local.get 5
                                i64.const 0
                                i64.store offset=576
                                local.get 78
                                i32.const 4096
                                call $runtime.alloc
                                local.tee 90
                                i32.store
                                i32.const 0
                                local.set 6
                                i32.const 0
                                local.set 95
                                i32.const 0
                                local.set 96
                                loop  ;; label = @15
                                  local.get 79
                                  local.get 6
                                  i32.store
                                  local.get 5
                                  i32.const 512
                                  i32.add
                                  local.get 98
                                  local.get 90
                                  i32.const 4096
                                  i32.const 4096
                                  call $syscall.Read
                                  local.get 80
                                  local.get 5
                                  i32.load offset=520
                                  local.tee 8
                                  i32.store
                                  local.get 81
                                  local.get 8
                                  i32.store
                                  local.get 5
                                  i32.load offset=516
                                  local.set 93
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=512
                                    local.tee 7
                                    i32.const 1
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                    local.get 7
                                    i32.const 4096
                                    i32.gt_u
                                    br_if 9 (;@7;)
                                    local.get 5
                                    i32.const 496
                                    i32.add
                                    local.get 6
                                    local.get 90
                                    local.get 95
                                    local.get 96
                                    local.get 7
                                    i32.const 1
                                    call $runtime.sliceAppend
                                    local.get 82
                                    local.get 5
                                    i32.load offset=496
                                    local.tee 6
                                    i32.store
                                    local.get 5
                                    i32.load offset=504
                                    local.set 96
                                    local.get 5
                                    i32.load offset=500
                                    local.set 95
                                  end
                                  local.get 83
                                  local.get 6
                                  i32.store
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 7
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 93
                                      i32.eqz
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 576
                                    i32.add
                                    local.set 7
                                    loop  ;; label = @17
                                      local.get 7
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      local.get 7
                                      i32.load offset=4
                                      local.set 90
                                      local.get 7
                                      i32.load offset=8
                                      call $time.closefd
                                      local.get 90
                                      local.set 7
                                      br 0 (;@17;)
                                    end
                                  end
                                  local.get 95
                                  i32.const 10485761
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                end
                                local.get 84
                                i32.const 8
                                call $runtime.alloc
                                local.tee 8
                                i32.store
                                local.get 85
                                local.get 8
                                i32.store
                                local.get 8
                                local.get 92
                                i32.store offset=4
                                local.get 8
                                local.get 91
                                i32.store
                                local.get 5
                                i32.const 576
                                i32.add
                                local.set 6
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 6
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 6
                                    i32.const 162
                                    local.set 93
                                    br 2 (;@14;)
                                  end
                                  local.get 6
                                  i32.load offset=4
                                  local.set 7
                                  local.get 6
                                  i32.load offset=8
                                  call $time.closefd
                                  local.get 7
                                  local.set 6
                                  br 0 (;@15;)
                                end
                              end
                              i32.const 0
                              local.set 95
                              i32.const 0
                              local.set 96
                            end
                            local.get 86
                            local.get 6
                            i32.store
                          end
                          local.get 37
                          local.get 6
                          i32.store
                          local.get 38
                          local.get 8
                          i32.store
                          local.get 39
                          local.get 8
                          i32.store
                          local.get 40
                          local.get 6
                          i32.store
                          local.get 41
                          local.get 8
                          i32.store
                          local.get 93
                          br_if 7 (;@4;)
                          local.get 5
                          i32.const 664
                          i32.add
                          i32.const 8
                          i32.add
                          local.tee 7
                          i64.const 0
                          i64.store
                          local.get 7
                          local.get 96
                          i32.store
                          local.get 5
                          i64.const 0
                          i64.store offset=664
                          local.get 5
                          local.get 6
                          i32.store offset=664
                          local.get 5
                          local.get 95
                          i32.store offset=668
                          i32.const 0
                          local.set 90
                          local.get 5
                          i32.const 0
                          i32.store8 offset=676
                          local.get 5
                          i32.const 320
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          i32.const 4
                          call $_*time.dataIO_.read
                          local.get 5
                          i32.const 696
                          i32.add
                          i32.const 16
                          i32.add
                          local.get 5
                          i32.load offset=320
                          local.tee 6
                          i32.store
                          local.get 5
                          i32.const 312
                          i32.add
                          local.get 6
                          local.get 5
                          i32.load offset=324
                          local.get 5
                          i32.load offset=328
                          call $runtime.stringFromBytes
                          local.get 42
                          local.get 5
                          i32.load offset=312
                          local.tee 6
                          i32.store
                          i32.const 67896
                          local.set 8
                          i32.const 12261
                          local.set 93
                          local.get 6
                          local.get 5
                          i32.load offset=316
                          i32.const 66837
                          i32.const 4
                          call $runtime.stringEqual
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 6 (;@5;)
                          local.get 5
                          i32.const 296
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          i32.const 16
                          call $_*time.dataIO_.read
                          local.get 5
                          i32.const 696
                          i32.add
                          i32.const 24
                          i32.add
                          local.get 5
                          i32.load offset=296
                          local.tee 6
                          i32.store
                          local.get 5
                          i32.load offset=300
                          i32.const 16
                          i32.ne
                          br_if 6 (;@5;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 6
                                i32.load8_u
                                local.tee 6
                                i32.const -50
                                i32.add
                                br_table 0 (;@14;) 0 (;@14;) 1 (;@13;)
                              end
                              i32.const 1
                              local.set 97
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 97
                            local.get 6
                            br_if 6 (;@6;)
                          end
                          local.get 5
                          i32.const 576
                          i32.add
                          i32.const 16
                          i32.add
                          i64.const 0
                          i64.store
                          local.get 5
                          i32.const 576
                          i32.add
                          i32.const 8
                          i32.add
                          i64.const 0
                          i64.store
                          local.get 5
                          i64.const 0
                          i64.store offset=576
                          i32.const 0
                          local.set 6
                          block  ;; label = @12
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.const 24
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 288
                                  i32.add
                                  local.get 5
                                  i32.const 664
                                  i32.add
                                  call $_*time.dataIO_.big4
                                  local.get 5
                                  i32.load8_u offset=292
                                  br_if 1 (;@14;)
                                  br 9 (;@6;)
                                end
                                i32.const 4
                                local.set 6
                                local.get 97
                                i32.eqz
                                br_if 2 (;@12;)
                                local.get 5
                                i32.const 272
                                i32.add
                                local.get 5
                                i32.const 664
                                i32.add
                                local.get 5
                                i32.load offset=588
                                i32.const 5
                                i32.mul
                                local.get 5
                                i32.load offset=592
                                i32.const 6
                                i32.mul
                                i32.add
                                local.get 5
                                i32.load offset=596
                                i32.add
                                local.get 5
                                i32.load offset=584
                                i32.const 3
                                i32.shl
                                i32.add
                                local.get 5
                                i32.load offset=580
                                i32.add
                                local.get 5
                                i32.load offset=576
                                i32.add
                                i32.const 20
                                i32.add
                                call $_*time.dataIO_.read
                                local.get 43
                                local.get 5
                                i32.load offset=272
                                i32.store
                                i32.const 0
                                local.set 6
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 6
                                    i32.const 24
                                    i32.ne
                                    br_if 0 (;@16;)
                                    i32.const 8
                                    local.set 6
                                    br 4 (;@12;)
                                  end
                                  local.get 5
                                  i32.const 264
                                  i32.add
                                  local.get 5
                                  i32.const 664
                                  i32.add
                                  call $_*time.dataIO_.big4
                                  local.get 5
                                  i32.load8_u offset=268
                                  i32.eqz
                                  br_if 9 (;@6;)
                                  local.get 5
                                  i32.const 576
                                  i32.add
                                  local.get 6
                                  i32.add
                                  local.get 5
                                  i32.load offset=264
                                  i32.store
                                  local.get 6
                                  i32.const 4
                                  i32.add
                                  local.set 6
                                  br 0 (;@15;)
                                end
                              end
                              local.get 5
                              i32.const 576
                              i32.add
                              local.get 6
                              i32.add
                              local.get 5
                              i32.load offset=288
                              i32.store
                              local.get 6
                              i32.const 4
                              i32.add
                              local.set 6
                              br 0 (;@13;)
                            end
                          end
                          local.get 5
                          i32.const 648
                          i32.add
                          i32.const 8
                          i32.add
                          i64.const 0
                          i64.store
                          local.get 5
                          i64.const 0
                          i64.store offset=648
                          local.get 5
                          i32.const 248
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 5
                          i32.load offset=588
                          local.tee 101
                          local.get 6
                          i32.mul
                          call $_*time.dataIO_.read
                          local.get 44
                          local.get 5
                          i32.load offset=248
                          local.tee 7
                          i32.store
                          i32.const 0
                          local.set 90
                          local.get 5
                          i32.const 0
                          i32.store8 offset=660
                          local.get 5
                          local.get 5
                          i64.load offset=252 align=4
                          i64.store offset=652 align=4
                          local.get 5
                          local.get 7
                          i32.store offset=648
                          local.get 5
                          i32.const 232
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 101
                          call $_*time.dataIO_.read
                          local.get 5
                          i32.const 632
                          i32.add
                          i32.const 8
                          i32.add
                          i64.const 0
                          i64.store
                          local.get 45
                          local.get 5
                          i32.load offset=232
                          local.tee 102
                          i32.store
                          local.get 5
                          i64.const 0
                          i64.store offset=632
                          local.get 5
                          i32.load offset=236
                          local.set 103
                          local.get 5
                          i32.const 216
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 5
                          i32.load offset=592
                          local.tee 104
                          i32.const 6
                          i32.mul
                          call $_*time.dataIO_.read
                          local.get 46
                          local.get 5
                          i32.load offset=216
                          local.tee 7
                          i32.store
                          local.get 5
                          i32.const 0
                          i32.store8 offset=644
                          local.get 5
                          local.get 5
                          i64.load offset=220 align=4
                          i64.store offset=636 align=4
                          local.get 5
                          local.get 7
                          i32.store offset=632
                          local.get 5
                          i32.const 200
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 5
                          i32.load offset=596
                          call $_*time.dataIO_.read
                          local.get 47
                          local.get 5
                          i32.load offset=200
                          local.tee 105
                          i32.store
                          local.get 5
                          i32.load offset=208
                          local.set 100
                          local.get 5
                          i32.load offset=204
                          local.set 98
                          local.get 5
                          i32.const 184
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 5
                          i32.load offset=584
                          local.get 6
                          i32.const 4
                          i32.add
                          i32.mul
                          call $_*time.dataIO_.read
                          local.get 48
                          local.get 5
                          i32.load offset=184
                          i32.store
                          local.get 5
                          i32.const 168
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 5
                          i32.load offset=580
                          call $_*time.dataIO_.read
                          local.get 49
                          local.get 5
                          i32.load offset=168
                          local.tee 106
                          i32.store
                          local.get 5
                          i32.load offset=172
                          local.set 107
                          local.get 5
                          i32.const 152
                          i32.add
                          local.get 5
                          i32.const 664
                          i32.add
                          local.get 5
                          i32.load offset=576
                          call $_*time.dataIO_.read
                          local.get 50
                          local.get 5
                          i32.load offset=152
                          local.tee 108
                          i32.store
                          local.get 5
                          i32.load8_u offset=676
                          br_if 6 (;@5;)
                          local.get 5
                          i32.load offset=156
                          local.set 109
                          local.get 51
                          local.get 5
                          i32.load offset=664
                          local.tee 6
                          i32.store
                          local.get 52
                          local.get 6
                          i32.store
                          local.get 5
                          i32.load offset=672
                          local.set 95
                          local.get 5
                          i32.load offset=668
                          local.set 7
                          local.get 5
                          i64.const 0
                          i64.store offset=668 align=4
                          i32.const 0
                          local.set 90
                          local.get 5
                          i32.const 0
                          i32.store offset=664
                          i32.const 0
                          local.set 110
                          i32.const 0
                          local.set 111
                          block  ;; label = @12
                            local.get 7
                            i32.const 2
                            i32.le_s
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 110
                            i32.const 0
                            local.set 111
                            local.get 6
                            i32.load8_u
                            i32.const 10
                            i32.ne
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 110
                            i32.const 0
                            local.set 111
                            local.get 6
                            local.get 7
                            i32.const -1
                            i32.add
                            local.tee 96
                            i32.add
                            i32.load8_u
                            i32.const 10
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 96
                            local.get 95
                            i32.gt_u
                            br_if 5 (;@7;)
                            local.get 5
                            i32.const 144
                            i32.add
                            local.get 6
                            i32.const 1
                            i32.add
                            local.get 7
                            i32.const -2
                            i32.add
                            local.get 95
                            i32.const -1
                            i32.add
                            call $runtime.stringFromBytes
                            local.get 53
                            local.get 5
                            i32.load offset=144
                            local.tee 110
                            i32.store
                            local.get 5
                            i32.load offset=148
                            local.set 111
                          end
                          local.get 54
                          local.get 110
                          i32.store
                          local.get 55
                          local.get 110
                          i32.store
                          local.get 56
                          local.get 110
                          i32.store
                          local.get 104
                          i32.eqz
                          br_if 6 (;@5;)
                          local.get 104
                          i32.const 268435455
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 57
                          local.get 104
                          i32.const 4
                          i32.shl
                          call $runtime.alloc
                          local.tee 99
                          i32.store
                          local.get 58
                          local.get 99
                          i32.store
                          local.get 59
                          local.get 99
                          i32.store
                          local.get 60
                          local.get 99
                          i32.store
                          i32.const -1
                          local.set 92
                          local.get 104
                          i32.const -1
                          i32.add
                          local.set 112
                          block  ;; label = @12
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 92
                                    local.get 112
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 136
                                    i32.add
                                    local.get 5
                                    i32.const 632
                                    i32.add
                                    call $_*time.dataIO_.big4
                                    local.get 5
                                    i32.load8_u offset=140
                                    i32.eqz
                                    br_if 11 (;@5;)
                                    local.get 99
                                    local.get 92
                                    i32.const 1
                                    i32.add
                                    local.tee 92
                                    i32.const 4
                                    i32.shl
                                    i32.add
                                    local.tee 91
                                    local.get 5
                                    i32.load offset=136
                                    i32.store offset=8
                                    local.get 5
                                    i32.const 128
                                    i32.add
                                    local.get 5
                                    i32.const 632
                                    i32.add
                                    call $_*time.dataIO_.byte
                                    local.get 5
                                    i32.load8_u offset=129
                                    i32.eqz
                                    br_if 11 (;@5;)
                                    local.get 91
                                    local.get 5
                                    i32.load8_u offset=128
                                    i32.const 255
                                    i32.and
                                    i32.const 0
                                    i32.ne
                                    i32.store8 offset=12
                                    local.get 5
                                    i32.const 120
                                    i32.add
                                    local.get 5
                                    i32.const 632
                                    i32.add
                                    call $_*time.dataIO_.byte
                                    local.get 5
                                    i32.load8_u offset=121
                                    i32.eqz
                                    br_if 10 (;@6;)
                                    local.get 98
                                    local.get 5
                                    i32.load8_u offset=120
                                    i32.const 255
                                    i32.and
                                    local.tee 95
                                    i32.le_s
                                    br_if 10 (;@6;)
                                    local.get 98
                                    local.get 100
                                    i32.gt_u
                                    br_if 9 (;@7;)
                                    local.get 98
                                    local.get 95
                                    i32.lt_u
                                    br_if 9 (;@7;)
                                    i32.const 0
                                    local.set 6
                                    local.get 98
                                    local.get 95
                                    i32.sub
                                    local.tee 7
                                    i32.const 0
                                    local.get 7
                                    i32.const 0
                                    i32.gt_s
                                    select
                                    local.set 96
                                    local.get 100
                                    local.get 95
                                    i32.sub
                                    local.set 94
                                    local.get 105
                                    local.get 95
                                    i32.add
                                    local.set 95
                                    loop  ;; label = @17
                                      local.get 96
                                      local.get 6
                                      i32.eq
                                      br_if 2 (;@15;)
                                      local.get 7
                                      local.get 6
                                      i32.eq
                                      br_if 6 (;@11;)
                                      block  ;; label = @18
                                        local.get 95
                                        local.get 6
                                        i32.add
                                        i32.load8_u
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 6
                                        i32.const 1
                                        i32.add
                                        local.set 6
                                        br 1 (;@17;)
                                      end
                                    end
                                    local.get 6
                                    local.get 94
                                    i32.gt_u
                                    br_if 9 (;@7;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    local.get 95
                                    local.get 6
                                    local.get 94
                                    call $runtime.stringFromBytes
                                    local.get 5
                                    i32.load offset=116
                                    local.set 7
                                    local.get 5
                                    i32.load offset=112
                                    local.set 6
                                    br 2 (;@14;)
                                  end
                                  local.get 101
                                  i32.const 268435455
                                  i32.gt_u
                                  br_if 8 (;@7;)
                                  local.get 61
                                  local.get 101
                                  i32.const 4
                                  i32.shl
                                  call $runtime.alloc
                                  local.tee 96
                                  i32.store
                                  local.get 101
                                  i32.const -1
                                  i32.add
                                  local.set 98
                                  i32.const 0
                                  local.set 6
                                  local.get 96
                                  local.set 7
                                  br 3 (;@12;)
                                end
                                local.get 5
                                i32.const 104
                                i32.add
                                local.get 95
                                local.get 7
                                local.get 94
                                call $runtime.stringFromBytes
                                local.get 5
                                i32.load offset=108
                                local.set 7
                                local.get 5
                                i32.load offset=104
                                local.set 6
                              end
                              local.get 69
                              local.get 6
                              i32.store
                              local.get 70
                              local.get 6
                              i32.store
                              local.get 91
                              local.get 7
                              i32.store offset=4
                              local.get 91
                              local.get 6
                              i32.store
                              br 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 101
                              local.get 6
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 5
                              i32.const 96
                              i32.add
                              local.get 5
                              i32.const 648
                              i32.add
                              call $_*time.dataIO_.big4
                              local.get 5
                              i32.load8_u offset=100
                              local.set 95
                              local.get 5
                              i32.load offset=96
                              local.set 90
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 97
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 88
                                  i32.add
                                  local.get 5
                                  i32.const 648
                                  i32.add
                                  call $_*time.dataIO_.big4
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 95
                                      local.get 5
                                      i32.load8_u offset=92
                                      i32.and
                                      i32.const 1
                                      i32.and
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 90
                                      i64.extend_i32_u
                                      i64.const 32
                                      i64.shl
                                      local.get 5
                                      i32.load offset=88
                                      i64.extend_i32_u
                                      i64.or
                                      local.set 113
                                      i32.const 1
                                      local.set 95
                                      br 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 1
                                    i32.store8 offset=660
                                    i32.const 0
                                    local.set 95
                                    i64.const 0
                                    local.set 113
                                  end
                                  local.get 95
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if 9 (;@6;)
                                  br 1 (;@14;)
                                end
                                local.get 95
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 8 (;@6;)
                                local.get 90
                                i64.extend_i32_s
                                local.set 113
                              end
                              local.get 7
                              local.get 113
                              i64.store
                              local.get 103
                              local.get 6
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 104
                              local.get 102
                              local.get 6
                              i32.add
                              i32.load8_u
                              local.tee 95
                              i32.le_s
                              br_if 7 (;@6;)
                              local.get 7
                              i32.const 8
                              i32.add
                              local.get 95
                              i32.store8
                              block  ;; label = @14
                                local.get 6
                                local.get 107
                                i32.ge_s
                                br_if 0 (;@14;)
                                local.get 6
                                local.get 107
                                i32.ge_u
                                br_if 3 (;@11;)
                                local.get 7
                                i32.const 9
                                i32.add
                                local.get 106
                                local.get 6
                                i32.add
                                i32.load8_u
                                i32.const 0
                                i32.ne
                                i32.store8
                              end
                              block  ;; label = @14
                                local.get 6
                                local.get 109
                                i32.ge_s
                                br_if 0 (;@14;)
                                local.get 6
                                local.get 109
                                i32.ge_u
                                br_if 3 (;@11;)
                                local.get 7
                                i32.const 10
                                i32.add
                                local.get 108
                                local.get 6
                                i32.add
                                i32.load8_u
                                i32.const 0
                                i32.ne
                                i32.store8
                              end
                              local.get 7
                              i32.const 16
                              i32.add
                              local.set 7
                              local.get 6
                              i32.const 1
                              i32.add
                              local.set 6
                              br 0 (;@13;)
                            end
                          end
                          local.get 101
                          local.set 6
                          block  ;; label = @12
                            local.get 101
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 616
                            i32.add
                            i32.const 8
                            i32.add
                            local.tee 6
                            i64.const 0
                            i64.store
                            local.get 6
                            i32.const 0
                            i32.store16
                            local.get 5
                            i32.const 0
                            i32.store offset=607 align=1
                            local.get 5
                            i64.const 0
                            i64.store offset=600
                            local.get 5
                            i64.const -9223372036854775808
                            i64.store offset=616
                            local.get 5
                            i32.const 0
                            i32.store8 offset=608
                            local.get 5
                            i64.const -9223372036854775808
                            i64.store offset=600
                            local.get 5
                            i32.const 0
                            i32.store8 offset=626
                            local.get 5
                            i32.const 72
                            i32.add
                            local.get 96
                            local.get 5
                            i32.const 616
                            i32.add
                            i32.const 0
                            i32.const 0
                            i32.const 1
                            i32.const 16
                            call $runtime.sliceAppend
                            local.get 62
                            local.get 5
                            i32.load offset=72
                            local.tee 96
                            i32.store
                            local.get 5
                            i32.load offset=76
                            local.tee 101
                            i32.const -1
                            i32.add
                            local.set 98
                            local.get 5
                            i32.load offset=80
                            local.set 6
                          end
                          local.get 63
                          local.get 96
                          i32.store
                          i32.const 64
                          call $runtime.alloc
                          local.tee 90
                          local.get 6
                          i32.store offset=28
                          local.get 90
                          local.get 101
                          i32.store offset=24
                          local.get 90
                          local.get 96
                          i32.store offset=20
                          local.get 90
                          local.get 104
                          i32.store offset=16
                          local.get 90
                          local.get 104
                          i32.store offset=12
                          local.get 90
                          local.get 99
                          i32.store offset=8
                          local.get 64
                          local.get 90
                          i32.store
                          local.get 90
                          local.get 111
                          i32.store offset=36
                          local.get 90
                          local.get 110
                          i32.store offset=32
                          local.get 90
                          local.get 2
                          i32.store offset=4
                          local.get 90
                          local.get 1
                          i32.store
                          i32.const 0
                          local.get 98
                          i32.sub
                          local.set 93
                          i32.const 0
                          local.get 101
                          i32.const 0
                          local.get 101
                          i32.const 0
                          i32.gt_s
                          select
                          i32.sub
                          local.set 8
                          local.get 5
                          i32.const 48
                          i32.add
                          call $time.now
                          i32.const 1
                          local.set 6
                          local.get 5
                          i64.load offset=48
                          local.set 113
                          local.get 96
                          local.set 7
                          loop  ;; label = @12
                            local.get 8
                            local.get 6
                            i32.add
                            i32.const 1
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 93
                            local.get 6
                            i32.add
                            i32.const 2
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 96
                            i32.eqz
                            br_if 4 (;@8;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 7
                                i64.load
                                local.tee 114
                                local.get 113
                                i64.gt_s
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  local.get 101
                                  local.get 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 101
                                  local.set 6
                                  br 2 (;@13;)
                                end
                                local.get 113
                                local.get 7
                                i32.const 16
                                i32.add
                                i64.load
                                i64.lt_s
                                br_if 1 (;@13;)
                              end
                              local.get 7
                              i32.const 16
                              i32.add
                              local.set 7
                              local.get 6
                              i32.const 1
                              i32.add
                              local.set 6
                              br 1 (;@12;)
                            end
                          end
                          local.get 90
                          i64.const 9223372036854775807
                          i64.store offset=48
                          local.get 90
                          local.get 114
                          i64.store offset=40
                          local.get 104
                          local.get 7
                          i32.const 8
                          i32.add
                          i32.load8_u
                          local.tee 7
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 90
                          local.get 99
                          local.get 7
                          i32.const 4
                          i32.shl
                          i32.add
                          i32.store offset=56
                          block  ;; label = @12
                            local.get 6
                            local.get 101
                            i32.lt_s
                            br_if 0 (;@12;)
                            local.get 111
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 5
                            i32.const 8
                            i32.add
                            local.get 110
                            local.get 111
                            i64.const 9223372036854775807
                            local.get 113
                            call $time.tzset
                            local.get 65
                            local.get 5
                            i32.load offset=8
                            local.tee 91
                            i32.store
                            local.get 5
                            i32.load8_u offset=41
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 5
                            i32.load offset=12
                            local.set 92
                            local.get 5
                            i32.load8_u offset=40
                            local.set 94
                            local.get 5
                            i64.load offset=32
                            local.set 113
                            local.get 5
                            i32.load offset=16
                            local.set 100
                            local.get 90
                            local.get 5
                            i64.load offset=24
                            i64.store offset=40
                            local.get 90
                            local.get 113
                            i64.store offset=48
                            local.get 5
                            i64.const 0
                            i64.store offset=685 align=1
                            local.get 5
                            i64.const 0
                            i64.store offset=680
                            i32.const 0
                            local.set 7
                            local.get 104
                            i32.const 0
                            local.get 104
                            i32.const 0
                            i32.gt_s
                            select
                            local.set 97
                            local.get 99
                            i32.const -16
                            i32.add
                            local.set 6
                            loop  ;; label = @13
                              local.get 97
                              local.get 7
                              i32.eq
                              br_if 3 (;@10;)
                              local.get 104
                              local.get 7
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 67
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 8
                              i32.load
                              local.tee 93
                              i32.store
                              local.get 68
                              local.get 93
                              i32.store
                              local.get 6
                              i32.const 24
                              i32.add
                              i32.load
                              local.set 96
                              local.get 6
                              i32.const 28
                              i32.add
                              i32.load8_u
                              local.set 98
                              local.get 6
                              i32.const 20
                              i32.add
                              local.set 95
                              local.get 7
                              i32.const 1
                              i32.add
                              local.set 7
                              local.get 8
                              local.set 6
                              local.get 93
                              local.get 95
                              i32.load
                              local.get 91
                              local.get 92
                              call $runtime.stringEqual
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.set 6
                              local.get 96
                              local.get 100
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 8
                              local.set 6
                              local.get 94
                              local.get 98
                              i32.xor
                              i32.const 1
                              i32.and
                              br_if 0 (;@13;)
                            end
                            local.get 7
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 7
                            i32.const -1
                            i32.add
                            local.get 104
                            i32.ge_u
                            br_if 1 (;@11;)
                            local.get 90
                            local.get 8
                            i32.store offset=56
                            br 3 (;@9;)
                          end
                          local.get 6
                          local.get 101
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 90
                          local.get 96
                          local.get 6
                          i32.const 4
                          i32.shl
                          i32.add
                          i64.load
                          i64.store offset=48
                          br 2 (;@9;)
                        end
                        call $runtime.lookupPanic
                        unreachable
                      end
                      i32.const 16
                      call $runtime.alloc
                      local.tee 6
                      local.get 94
                      i32.const 1
                      i32.and
                      i32.store8 offset=12
                      local.get 6
                      local.get 100
                      i32.store offset=8
                      local.get 6
                      local.get 92
                      i32.store offset=4
                      local.get 6
                      local.get 91
                      i32.store
                      local.get 66
                      local.get 6
                      i32.store
                      local.get 90
                      local.get 6
                      i32.store offset=56
                    end
                    i32.const 0
                    local.set 93
                    i32.const 0
                    local.set 8
                    br 3 (;@5;)
                  end
                  call $runtime.nilPanic
                  unreachable
                end
                call $runtime.slicePanic
                unreachable
              end
              i32.const 0
              local.set 90
            end
            local.get 71
            local.get 8
            i32.store
            local.get 72
            local.get 90
            i32.store
            local.get 93
            br_if 0 (;@4;)
            i32.const 0
            local.set 87
            i32.const 0
            local.set 88
            br 2 (;@2;)
          end
          local.get 73
          local.get 8
          i32.store
          local.get 87
          br_if 0 (;@3;)
        end
        local.get 88
        local.get 8
        local.get 93
        local.get 8
        i32.const 216
        i32.const 44
        call $runtime.interfaceEqual
        i32.const 1
        i32.and
        local.tee 6
        select
        local.set 88
        local.get 87
        local.get 93
        local.get 6
        select
        local.set 87
        br 1 (;@1;)
      end
    end
    i32.const 0
    local.get 9
    i32.store offset=68120
    local.get 0
    local.get 88
    i32.store offset=8
    local.get 0
    local.get 87
    i32.store offset=4
    local.get 0
    local.get 90
    i32.store
    local.get 5
    i32.const 1072
    i32.add
    global.set $__stack_pointer)
  (func $time.open (type 13) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 1
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=68120
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=68120
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 1
    local.get 2
    call $syscall.Open
    i32.const 0
    local.get 4
    i32.store offset=68120
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.load offset=8
    local.tee 1
    i32.store
    local.get 3
    i32.load
    local.set 2
    local.get 0
    local.get 1
    i32.const 0
    local.get 3
    i32.load offset=4
    local.tee 4
    select
    i32.store offset=8
    local.get 0
    i32.const 0
    local.get 2
    local.get 4
    select
    i32.store
    local.get 0
    local.get 4
    i32.const 0
    local.get 4
    select
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $time.preadn (type 20) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    i32.const 0
    local.set 7
    local.get 6
    i32.const 0
    i32.store offset=60
    local.get 6
    i64.const 0
    i64.store offset=52 align=4
    local.get 6
    i64.const 0
    i64.store offset=44 align=4
    local.get 6
    i64.const 6
    i64.store offset=36 align=4
    i32.const 0
    i32.load offset=68120
    local.set 8
    i32.const 0
    local.get 6
    i32.const 32
    i32.add
    i32.store offset=68120
    local.get 6
    local.get 8
    i32.store offset=32
    i32.const 0
    local.set 9
    block  ;; label = @1
      local.get 1
      local.get 5
      i64.extend_i32_s
      local.get 5
      i32.const 30
      i32.shr_u
      i32.const 2
      i32.and
      call $__lseek
      i64.const -1
      i64.gt_s
      br_if 0 (;@1;)
      local.get 6
      i32.const 24
      i32.add
      call $syscall.getErrno
      local.get 6
      i32.const 40
      i32.add
      local.get 6
      i32.load offset=28
      local.tee 9
      i32.store
      local.get 6
      i32.load offset=24
      local.set 7
    end
    local.get 6
    i32.const 44
    i32.add
    local.get 9
    i32.store
    local.get 6
    i32.const 48
    i32.add
    local.get 9
    i32.store
    block  ;; label = @1
      local.get 7
      br_if 0 (;@1;)
      local.get 6
      i32.const 52
      i32.add
      local.set 10
      local.get 6
      i32.const 56
      i32.add
      local.set 11
      i32.const 0
      local.set 7
      loop  ;; label = @2
        local.get 10
        local.get 2
        i32.store
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.ge_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          br 2 (;@1;)
        end
        local.get 6
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $syscall.Read
        local.get 11
        local.get 6
        i32.load offset=16
        local.tee 9
        i32.store
        block  ;; label = @3
          local.get 6
          i32.load offset=8
          local.tee 5
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 6
          i32.load offset=12
          local.tee 7
          br_if 2 (;@1;)
          local.get 6
          i32.const 66729
          i32.const 10
          call $errors.New
          local.get 6
          i32.const 60
          i32.add
          local.get 6
          i32.load offset=4
          local.tee 9
          i32.store
          local.get 6
          i32.load
          local.set 7
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            local.get 5
            i32.ge_u
            br_if 1 (;@3;)
          end
          call $runtime.slicePanic
          unreachable
        end
        local.get 4
        local.get 5
        i32.sub
        local.set 4
        local.get 3
        local.get 5
        i32.sub
        local.set 3
        local.get 2
        local.get 5
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.get 8
    i32.store offset=68120
    local.get 0
    local.get 9
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 6
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $time.get4 (type 2) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 0
      i32.load align=1
      local.set 2
    end
    local.get 2)
  (func $time.closefd (type 3) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $syscall.Close
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_*time.dataIO_.read (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.get 2
            i32.ge_s
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.store8 offset=12
            i32.const 0
            local.set 3
            local.get 1
            i32.const 0
            i32.store offset=8
            local.get 1
            i64.const 0
            i64.store align=4
            i32.const 0
            local.set 2
            i32.const 0
            local.set 4
            br 3 (;@1;)
          end
          local.get 1
          i32.load offset=8
          local.tee 4
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=4
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 1
          i32.load offset=8
          local.tee 6
          i32.gt_u
          br_if 1 (;@2;)
          local.get 1
          i32.load
          local.set 3
          local.get 1
          i32.load
          local.set 7
          local.get 1
          local.get 6
          local.get 2
          i32.sub
          i32.store offset=8
          local.get 1
          local.get 5
          local.get 2
          i32.sub
          i32.store offset=4
          local.get 1
          local.get 7
          local.get 2
          i32.add
          i32.store
          br 2 (;@1;)
        end
        call $runtime.nilPanic
        unreachable
      end
      call $runtime.slicePanic
      unreachable
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8)
  (func $_*time.dataIO_.big4 (type 11) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.const 4
    call $_*time.dataIO_.read
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.gt_s
          br_if 0 (;@3;)
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.store8 offset=12
          i32.const 0
          local.set 1
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.load
        i32.load align=1
        local.tee 1
        i32.const 24
        i32.shl
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 1
        i32.const 1
        local.set 3
      end
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.const 1
      i32.and
      i32.store8 offset=4
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*time.dataIO_.byte (type 11) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    local.get 2
    local.get 1
    i32.const 1
    call $_*time.dataIO_.read
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.store8 offset=12
          i32.const 0
          local.set 1
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.load
        i32.load8_u
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 3
      i32.const 1
      i32.and
      i32.store8 offset=1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $time.tzsetName (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u
                i32.const 60
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.const 0
                i32.store offset=40
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 3
                    i32.const 24
                    i32.add
                    local.get 1
                    local.get 2
                    local.get 3
                    i32.const 40
                    i32.add
                    call $runtime.stringNext
                    local.get 3
                    i32.load8_u offset=24
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 3
                    i32.load offset=32
                    i32.const -43
                    i32.add
                    local.tee 4
                    i32.const 14
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 1
                    local.get 4
                    i32.shl
                    i32.const 32743
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  local.get 3
                  i32.load offset=28
                  local.tee 5
                  i32.const 3
                  i32.lt_s
                  br_if 4 (;@3;)
                  local.get 5
                  local.get 2
                  i32.le_u
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 2
                i32.const 3
                i32.lt_s
                br_if 3 (;@3;)
                i32.const 1
                local.set 6
                i32.const 0
                local.set 4
                i32.const 0
                local.set 7
                br 5 (;@1;)
              end
              i32.const 0
              local.set 4
              local.get 3
              i32.const 0
              i32.store offset=40
              loop  ;; label = @6
                local.get 3
                i32.const 8
                i32.add
                local.get 1
                local.get 2
                local.get 3
                i32.const 40
                i32.add
                call $runtime.stringNext
                block  ;; label = @7
                  local.get 3
                  i32.load8_u offset=8
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  i32.const 0
                  local.set 2
                  br 5 (;@2;)
                end
                local.get 3
                i32.load offset=16
                i32.const 62
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 3
              i32.load offset=12
              local.tee 4
              i32.const -1
              i32.add
              local.tee 5
              local.get 2
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 1
              local.set 6
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              local.get 2
              i32.gt_u
              br_if 1 (;@4;)
              local.get 2
              local.get 4
              i32.sub
              local.set 7
              local.get 1
              local.get 4
              i32.add
              local.set 4
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 5
              local.set 2
              br 4 (;@1;)
            end
            local.get 2
            local.get 5
            i32.sub
            local.set 7
            local.get 1
            local.get 5
            i32.add
            local.set 4
            i32.const 1
            local.set 6
            local.get 5
            local.set 2
            br 3 (;@1;)
          end
          call $runtime.slicePanic
          unreachable
        end
        i32.const 0
        local.set 1
        i32.const 0
        local.set 2
        i32.const 0
        local.set 4
      end
      i32.const 0
      local.set 7
      i32.const 0
      local.set 6
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 7
    i32.store offset=12
    local.get 0
    local.get 6
    i32.const 1
    i32.and
    i32.store8 offset=16
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $time.tzsetOffset (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        i32.const 0
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load8_u
              i32.const -43
              i32.add
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;) 2 (;@3;)
            end
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            i32.const 1
            local.set 5
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          i32.const 0
          local.set 5
        end
        local.get 3
        i32.const 32
        i32.add
        local.get 1
        local.get 2
        i32.const 0
        i32.const 168
        call $time.tzsetNum
        local.get 3
        i32.load8_u offset=44
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=36
        local.set 2
        local.get 3
        i32.load offset=32
        i32.const 3600
        i32.mul
        local.set 6
        block  ;; label = @3
          local.get 3
          i32.load offset=40
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          i32.const 58
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          i32.const 1
          i32.add
          local.get 1
          i32.const -1
          i32.add
          i32.const 0
          i32.const 59
          call $time.tzsetNum
          local.get 3
          i32.load8_u offset=28
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=20
          local.set 2
          local.get 3
          i32.load offset=16
          i32.const 60
          i32.mul
          local.get 6
          i32.add
          local.set 7
          block  ;; label = @4
            local.get 3
            i32.load offset=24
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load8_u
            i32.const 58
            i32.ne
            br_if 0 (;@4;)
            i32.const 1
            local.set 6
            i32.const 0
            local.set 4
            local.get 3
            local.get 2
            i32.const 1
            i32.add
            local.get 1
            i32.const -1
            i32.add
            i32.const 0
            i32.const 59
            call $time.tzsetNum
            local.get 3
            i32.load8_u offset=12
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            i32.load offset=8
            local.set 1
            local.get 3
            i32.load offset=4
            local.set 2
            i32.const 0
            local.get 3
            i32.load
            local.get 7
            i32.add
            local.tee 4
            i32.sub
            local.get 4
            local.get 5
            select
            local.set 4
            br 3 (;@1;)
          end
          i32.const 0
          local.get 7
          i32.sub
          local.get 7
          local.get 5
          select
          local.set 4
          i32.const 1
          local.set 6
          br 2 (;@1;)
        end
        i32.const 0
        local.get 6
        i32.sub
        local.get 6
        local.get 5
        select
        local.set 4
        i32.const 1
        local.set 6
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const 0
      local.set 1
      i32.const 0
      local.set 6
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 6
    i32.const 1
    i32.and
    i32.store8 offset=12
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $time.tzsetRule (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 288
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    local.get 3
    i32.const 96
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 96
    i32.add
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=96
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 3
          i32.const 120
          i32.add
          i32.const 16
          i32.add
          i32.const 0
          i32.store
          local.get 3
          i32.const 120
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 3
          i64.const 0
          i64.store offset=120
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load8_u
                          i32.const -74
                          i32.add
                          br_table 0 (;@11;) 2 (;@9;) 2 (;@9;) 1 (;@10;) 2 (;@9;)
                        end
                        local.get 3
                        i32.const 32
                        i32.add
                        local.get 1
                        i32.const 1
                        i32.add
                        local.get 2
                        i32.const -1
                        i32.add
                        i32.const 1
                        i32.const 365
                        call $time.tzsetNum
                        local.get 3
                        i32.load8_u offset=44
                        i32.eqz
                        br_if 7 (;@3;)
                        local.get 3
                        i32.load offset=40
                        local.set 2
                        local.get 3
                        i32.load offset=36
                        local.set 1
                        local.get 3
                        local.get 3
                        i32.load offset=32
                        local.tee 5
                        i32.store offset=100
                        i32.const 0
                        local.set 6
                        local.get 3
                        i32.const 0
                        i32.store offset=96
                        i32.const 0
                        local.set 7
                        i32.const 0
                        local.set 4
                        br 2 (;@8;)
                      end
                      local.get 3
                      i32.const 80
                      i32.add
                      local.get 1
                      i32.const 1
                      i32.add
                      local.get 2
                      i32.const -1
                      i32.add
                      i32.const 1
                      i32.const 12
                      call $time.tzsetNum
                      local.get 3
                      i32.load8_u offset=92
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=88
                      local.tee 4
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=84
                      local.tee 2
                      i32.load8_u
                      i32.const 46
                      i32.ne
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=80
                      local.set 6
                      local.get 3
                      i32.const 64
                      i32.add
                      local.get 2
                      i32.const 1
                      i32.add
                      local.get 4
                      i32.const -1
                      i32.add
                      i32.const 1
                      i32.const 5
                      call $time.tzsetNum
                      local.get 3
                      i32.load8_u offset=76
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 3
                      i32.load offset=72
                      local.tee 2
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 3
                      i32.load offset=68
                      local.tee 1
                      i32.load8_u
                      i32.const 46
                      i32.ne
                      br_if 3 (;@6;)
                      local.get 3
                      i32.load offset=64
                      local.set 7
                      i32.const 0
                      local.set 4
                      local.get 3
                      i32.const 48
                      i32.add
                      local.get 1
                      i32.const 1
                      i32.add
                      local.get 2
                      i32.const -1
                      i32.add
                      i32.const 0
                      i32.const 6
                      call $time.tzsetNum
                      local.get 3
                      i32.load8_u offset=60
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 3
                      i32.load offset=56
                      local.set 2
                      local.get 3
                      i32.load offset=52
                      local.set 1
                      local.get 3
                      i32.load offset=48
                      local.set 5
                      local.get 3
                      local.get 6
                      i32.store offset=108
                      local.get 3
                      local.get 7
                      i32.store offset=104
                      local.get 3
                      local.get 5
                      i32.store offset=100
                      i32.const 2
                      local.set 4
                      local.get 3
                      i32.const 2
                      i32.store offset=96
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 4
                    local.get 3
                    i32.const 16
                    i32.add
                    local.get 1
                    local.get 2
                    i32.const 0
                    i32.const 365
                    call $time.tzsetNum
                    block  ;; label = @9
                      local.get 3
                      i32.load8_u offset=28
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 280
                      i32.add
                      i32.const 0
                      i32.store
                      local.get 3
                      i32.const 272
                      i32.add
                      i64.const 0
                      i64.store
                      local.get 3
                      i64.const 0
                      i64.store offset=264
                      br 7 (;@2;)
                    end
                    local.get 3
                    i32.load offset=24
                    local.set 2
                    local.get 3
                    i32.load offset=20
                    local.set 1
                    local.get 3
                    local.get 3
                    i32.load offset=16
                    local.tee 5
                    i32.store offset=100
                    i32.const 1
                    local.set 4
                    local.get 3
                    i32.const 1
                    i32.store offset=96
                    i32.const 0
                    local.set 6
                    i32.const 0
                    local.set 7
                  end
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.load8_u
                    i32.const 47
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 8
                    local.get 3
                    local.get 1
                    i32.const 1
                    i32.add
                    local.get 2
                    i32.const -1
                    i32.add
                    call $time.tzsetOffset
                    local.get 3
                    i32.load8_u offset=12
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 3
                    i32.load offset=8
                    local.set 2
                    local.get 3
                    i32.load offset=4
                    local.set 1
                    local.get 3
                    local.get 3
                    i32.load
                    local.tee 9
                    i32.store offset=112
                    br 7 (;@1;)
                  end
                  i32.const 7200
                  local.set 9
                  local.get 3
                  i32.const 7200
                  i32.store offset=112
                  i32.const 1
                  local.set 8
                  br 6 (;@1;)
                end
                i32.const 0
                local.set 4
                local.get 3
                i32.const 256
                i32.add
                i32.const 0
                i32.store
                local.get 3
                i32.const 248
                i32.add
                i64.const 0
                i64.store
                local.get 3
                i64.const 0
                i64.store offset=240
                br 4 (;@2;)
              end
              i32.const 0
              local.set 4
              local.get 3
              i32.const 232
              i32.add
              i32.const 0
              i32.store
              local.get 3
              i32.const 224
              i32.add
              i64.const 0
              i64.store
              local.get 3
              i64.const 0
              i64.store offset=216
              br 3 (;@2;)
            end
            local.get 3
            i32.const 208
            i32.add
            i32.const 0
            i32.store
            local.get 3
            i32.const 200
            i32.add
            i64.const 0
            i64.store
            local.get 3
            i64.const 0
            i64.store offset=192
            br 2 (;@2;)
          end
          i32.const 0
          local.set 4
          local.get 3
          i32.const 184
          i32.add
          i32.const 0
          i32.store
          local.get 3
          i32.const 176
          i32.add
          i64.const 0
          i64.store
          local.get 3
          i64.const 0
          i64.store offset=168
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        local.get 3
        i32.const 160
        i32.add
        i32.const 0
        i32.store
        local.get 3
        i32.const 152
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i64.const 0
        i64.store offset=144
      end
      i32.const 0
      local.set 5
      i32.const 0
      local.set 7
      i32.const 0
      local.set 6
      i32.const 0
      local.set 9
      i32.const 0
      local.set 1
      i32.const 0
      local.set 2
      i32.const 0
      local.set 8
    end
    local.get 0
    local.get 8
    i32.store8 offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 9
    i32.store offset=16
    local.get 0
    local.get 6
    i32.store offset=12
    local.get 0
    local.get 7
    i32.store offset=8
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 3
    i32.const 288
    i32.add
    global.set $__stack_pointer)
  (func $time.absDate (type 23) (param i32 i64 i32)
    (local i64 i64 i32 i32 i32 i32 i32)
    local.get 1
    i64.const 12622780800
    i64.div_u
    local.tee 3
    i64.const -146097
    i64.mul
    local.get 1
    i64.const 86400
    i64.div_u
    i64.add
    local.tee 1
    i64.const 36524
    i64.div_u
    local.tee 4
    local.get 4
    i64.const 2
    i64.shr_u
    i64.sub
    local.tee 4
    i64.const 100
    i64.mul
    local.get 3
    i64.const 400
    i64.mul
    i64.add
    local.get 4
    i64.const -36524
    i64.mul
    local.get 1
    i64.add
    local.tee 1
    i64.const 1461
    i64.div_u
    local.tee 3
    i64.const 2
    i64.shl
    i64.add
    local.get 3
    i64.const -1461
    i64.mul
    local.get 1
    i64.add
    local.tee 1
    i64.const 365
    i64.div_u
    local.tee 3
    local.get 3
    i64.const 2
    i64.shr_u
    i64.sub
    local.tee 3
    i64.add
    i32.wrap_i64
    i32.const -219246271
    i32.add
    local.set 5
    local.get 3
    i64.const -365
    i64.mul
    local.get 1
    i64.add
    i32.wrap_i64
    local.set 6
    i32.const 0
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 6
        local.set 2
        block  ;; label = @3
          local.get 5
          call $time.isLeap
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            i32.const 60
            i32.lt_s
            br_if 0 (;@4;)
            local.get 6
            i32.const -1
            i32.add
            local.set 2
            br 1 (;@3;)
          end
          local.get 6
          local.set 2
          local.get 6
          i32.const 59
          i32.ne
          br_if 0 (;@3;)
          i32.const 29
          local.set 2
          i32.const 2
          local.set 7
          i32.const 59
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        i32.const 31
        i32.div_s
        local.tee 8
        i32.const 1
        i32.add
        local.tee 7
        i32.const 12
        i32.gt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 7
            i32.const 2
            i32.shl
            i32.const 66444
            i32.add
            i32.load
            local.tee 9
            i32.lt_s
            br_if 0 (;@4;)
            local.get 8
            i32.const 2
            i32.add
            local.set 7
            br 1 (;@3;)
          end
          local.get 8
          i32.const 12
          i32.gt_u
          br_if 2 (;@1;)
          local.get 8
          i32.const 2
          i32.shl
          i32.const 66444
          i32.add
          i32.load
          local.set 9
        end
        local.get 2
        local.get 9
        i32.sub
        i32.const 1
        i32.add
        local.set 2
      end
      local.get 0
      local.get 6
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $time.tzruleTime (type 24) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    i32.const 0
    local.set 8
    local.get 7
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i32.store
    local.get 7
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 7
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  br_table 1 (;@6;) 2 (;@5;) 0 (;@7;) 6 (;@1;)
                end
                local.get 2
                local.get 0
                local.get 4
                i32.const 3
                i32.lt_s
                i32.sub
                local.tee 8
                i32.const 400
                i32.div_s
                local.get 8
                i32.const 100
                i32.rem_s
                local.tee 1
                i32.add
                local.get 8
                i32.const -100
                i32.div_s
                i32.const 1
                i32.shl
                i32.add
                local.get 1
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.const 4
                i32.div_s
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.add
                local.get 4
                i32.const 9
                i32.add
                i32.const 12
                i32.rem_s
                i32.const 1703936
                i32.mul
                i32.const 1572864
                i32.add
                i32.const 16
                i32.shr_s
                i32.const 10
                i32.div_s
                i32.const 16
                i32.shl
                i32.const 65536
                i32.add
                i32.const 16
                i32.shr_s
                i32.add
                i32.const 7
                i32.rem_s
                local.tee 8
                i32.const 7
                i32.add
                local.get 8
                local.get 8
                i32.const 0
                i32.lt_s
                select
                i32.sub
                local.tee 8
                i32.const 7
                i32.add
                local.get 8
                local.get 8
                i32.const 0
                i32.lt_s
                select
                local.set 2
                local.get 3
                i32.const 1
                local.get 3
                i32.const 1
                i32.gt_s
                select
                local.set 1
                local.get 4
                i32.const 2
                i32.shl
                i32.const 66444
                i32.add
                local.set 9
                local.get 4
                i32.const -1
                i32.add
                local.tee 10
                i32.const 2
                i32.shl
                i32.const 66444
                i32.add
                local.set 11
                local.get 4
                i32.const 13
                i32.lt_u
                local.set 12
                loop  ;; label = @7
                  local.get 2
                  local.set 3
                  local.get 1
                  i32.const -1
                  i32.add
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.const 2
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 29
                        local.set 8
                        local.get 0
                        call $time.isLeap
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                      local.get 12
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 10
                      i32.const 13
                      i32.ge_u
                      br_if 7 (;@2;)
                    end
                    local.get 9
                    i32.load
                    local.get 11
                    i32.load
                    i32.sub
                    local.set 8
                  end
                  local.get 3
                  i32.const 7
                  i32.add
                  local.tee 2
                  local.get 8
                  i32.lt_s
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 2
              i32.const 86400
              i32.mul
              local.tee 1
              i32.const -86400
              i32.add
              local.set 8
              local.get 0
              call $time.isLeap
              i32.const 1
              i32.and
              i32.eqz
              br_if 4 (;@1;)
              local.get 1
              local.get 8
              local.get 2
              i32.const 59
              i32.gt_s
              select
              local.set 8
              br 4 (;@1;)
            end
            local.get 2
            i32.const 86400
            i32.mul
            local.set 8
            br 3 (;@1;)
          end
          local.get 10
          i32.const 13
          i32.ge_u
          br_if 1 (;@2;)
        end
        local.get 10
        i32.const 2
        i32.shl
        i32.const 66444
        i32.add
        i32.load
        local.get 0
        call $time.isLeap
        local.get 4
        i32.const 2
        i32.gt_s
        i32.and
        i32.add
        local.get 3
        i32.add
        i32.const 86400
        i32.mul
        local.set 8
        br 1 (;@1;)
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 5
    local.get 6
    i32.sub
    local.get 8
    i32.add)
  (func $time.tzsetNum (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          local.get 5
          i32.const 0
          i32.store offset=24
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                i32.const 8
                i32.add
                local.get 1
                local.get 2
                local.get 5
                i32.const 24
                i32.add
                call $runtime.stringNext
                local.get 5
                i32.load8_u offset=8
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 5
                  i32.load offset=16
                  i32.const -48
                  i32.add
                  local.tee 7
                  i32.const 10
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 7
                  local.get 5
                  i32.load offset=12
                  local.tee 8
                  i32.eqz
                  br_if 5 (;@2;)
                  i32.const 0
                  local.set 4
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 10
                  local.get 6
                  local.get 3
                  i32.lt_s
                  br_if 6 (;@1;)
                  local.get 8
                  local.get 2
                  i32.le_u
                  br_if 3 (;@4;)
                  call $runtime.slicePanic
                  unreachable
                end
                local.get 7
                local.get 6
                i32.const 10
                i32.mul
                i32.add
                local.tee 6
                local.get 4
                i32.gt_s
                br_if 3 (;@3;)
                br 0 (;@6;)
              end
            end
            local.get 6
            local.get 3
            i32.lt_s
            br_if 1 (;@3;)
            i32.const 1
            local.set 10
            i32.const 0
            local.set 4
            local.get 6
            local.set 7
            i32.const 0
            local.set 9
            br 3 (;@1;)
          end
          local.get 2
          local.get 8
          i32.sub
          local.set 9
          local.get 1
          local.get 8
          i32.add
          local.set 4
          i32.const 1
          local.set 10
          local.get 6
          local.set 7
          br 2 (;@1;)
        end
        i32.const 0
        local.set 7
      end
      i32.const 0
      local.set 4
      i32.const 0
      local.set 9
      i32.const 0
      local.set 10
    end
    local.get 0
    local.get 7
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store offset=8
    local.get 0
    local.get 10
    i32.const 1
    i32.and
    i32.store8 offset=12
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_time.Month_.String (type 11) (param i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=44
    local.get 2
    i64.const 0
    i64.store offset=36 align=4
    local.get 2
    i64.const 4
    i64.store offset=28 align=4
    i32.const 0
    i32.load offset=68120
    local.set 3
    i32.const 0
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=68120
    local.get 2
    local.get 3
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 4
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.shl
        local.tee 1
        i32.const 67780
        i32.add
        i32.load
        local.set 4
        local.get 1
        i32.const 67776
        i32.add
        i32.load
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 32
      i32.add
      i32.const 20
      call $runtime.alloc
      local.tee 4
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i64.extend_i32_u
            local.set 5
            i32.const 19
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                i64.eqz
                br_if 1 (;@5;)
                local.get 1
                i32.const 19
                i32.gt_u
                br_if 3 (;@3;)
                local.get 4
                local.get 1
                i32.add
                local.get 5
                local.get 5
                i64.const 10
                i64.div_u
                local.tee 6
                i64.const 10
                i64.mul
                i64.sub
                i32.wrap_i64
                i32.const 48
                i32.or
                i32.store8
                local.get 1
                i32.const -1
                i32.add
                local.set 1
                local.get 6
                local.set 5
                br 0 (;@6;)
              end
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          local.get 4
          i32.const 48
          i32.store8 offset=19
          i32.const 19
          local.set 1
          br 1 (;@2;)
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 4
      local.get 1
      i32.add
      i32.const 20
      local.get 1
      i32.sub
      local.tee 1
      local.get 1
      call $runtime.stringFromBytes
      local.get 2
      i32.const 36
      i32.add
      local.get 2
      i32.load offset=16
      local.tee 1
      i32.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 66789
      i32.const 8
      local.get 1
      local.get 2
      i32.load offset=20
      call $runtime.stringConcat
      local.get 2
      i32.const 40
      i32.add
      local.get 2
      i32.load offset=8
      local.tee 1
      i32.store
      local.get 2
      local.get 1
      local.get 2
      i32.load offset=12
      i32.const 66797
      i32.const 1
      call $runtime.stringConcat
      local.get 2
      i32.load offset=4
      local.set 4
      local.get 2
      i32.load
      local.set 1
    end
    i32.const 0
    local.get 3
    i32.store offset=68120
    local.get 2
    i32.const 44
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_time.Weekday_.String (type 11) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.shl
    i32.const 67720
    i32.add
    i64.load align=4
    i64.store)
  (func $os.handleSyscallError (type 13) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 216
      i32.eq
      local.tee 4
      call $runtime.interfaceTypeAssert
      i32.const 12261
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 0
        local.get 4
        select
        local.tee 4
        i32.const 20
        i32.ne
        br_if 0 (;@2;)
        i32.const 67948
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 44
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      i32.const 67940
      local.set 2
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4)
  (func $read (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        local.get 3
        i32.const 4
        i32.add
        call $__wasi_fd_read
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 8
        local.get 0
        local.get 0
        i32.const 76
        i32.eq
        select
        i32.store offset=68244
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 0
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $__lseek (type 25) (param i32 i64 i32) (result i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        i32.const 255
        i32.and
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 70
        local.get 0
        local.get 0
        i32.const 76
        i32.eq
        select
        i32.store offset=68244
        i64.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i64.load offset=8
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $write (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        local.get 3
        i32.const 4
        i32.add
        call $__wasi_fd_write
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 8
        local.get 0
        local.get 0
        i32.const 76
        i32.eq
        select
        i32.store offset=68244
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 0
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $close (type 4) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      call $__wasi_fd_close
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.get 0
    i32.store offset=68244
    i32.const -1)
  (func $fstat (type 2) (param i32 i32) (result i32)
    (local i32 i64 i64 i64 i64 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 2
        call $__wasi_fd_filestat_get
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=68244
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i64.const 0
      i64.store offset=24
      local.get 1
      local.get 2
      i64.load offset=24
      i64.store offset=16
      local.get 1
      local.get 2
      i64.load offset=8
      i64.store offset=8
      local.get 1
      local.get 2
      i64.load
      i64.store
      local.get 1
      i64.const 0
      i64.store offset=64
      i32.const 0
      local.set 0
      local.get 1
      i32.const 0
      i32.store offset=56
      local.get 1
      local.get 2
      i64.load offset=32
      i64.store offset=48
      local.get 2
      i32.const 80
      i32.add
      i64.const 0
      i64.store align=4
      local.get 2
      i32.const 88
      i32.add
      i64.const 0
      i64.store align=4
      local.get 1
      i32.const 32
      i32.add
      i64.const 0
      i64.store
      local.get 1
      i32.const 40
      i32.add
      i64.const 0
      i64.store
      local.get 1
      local.get 2
      i64.load offset=56
      local.tee 3
      i64.const 1000000000
      i64.div_u
      local.tee 4
      i64.store offset=104
      local.get 1
      local.get 2
      i64.load offset=48
      local.tee 5
      i64.const 1000000000
      i64.div_u
      local.tee 6
      i64.store offset=88
      local.get 1
      local.get 2
      i64.load offset=40
      local.tee 7
      i64.const 1000000000
      i64.div_u
      local.tee 8
      i64.store offset=72
      local.get 1
      i32.const 112
      i32.add
      local.get 3
      local.get 4
      i64.const 1000000000
      i64.mul
      i64.sub
      i64.store32
      local.get 1
      i32.const 96
      i32.add
      local.get 5
      local.get 6
      i64.const 1000000000
      i64.mul
      i64.sub
      i64.store32
      local.get 1
      i32.const 80
      i32.add
      local.get 7
      local.get 8
      i64.const 1000000000
      i64.mul
      i64.sub
      i64.store32
      local.get 2
      i64.const 0
      i64.store offset=72 align=4
      local.get 1
      i32.const 140
      i32.add
      local.get 2
      i32.const 68
      i32.add
      i32.const 24
      i32.add
      i32.load
      i32.store
      local.get 1
      i32.const 132
      i32.add
      local.get 2
      i32.const 84
      i32.add
      i64.load align=4
      i64.store align=4
      local.get 1
      i32.const 124
      i32.add
      local.get 2
      i32.const 76
      i32.add
      i64.load align=4
      i64.store align=4
      local.get 1
      local.get 2
      i64.load offset=68 align=4
      i64.store offset=116 align=4
      local.get 2
      i32.load8_u offset=16
      i32.const -1
      i32.add
      local.tee 9
      i32.const 255
      i32.and
      i32.const 6
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 24
      i32.add
      local.get 9
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      i32.const 2
      i32.shl
      i32.const 67576
      i32.add
      i32.load
      i32.store
    end
    local.get 2
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $__wasilibc_nocwd_openat_nomode (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 503316480
            i32.and
            i32.const -33554432
            i32.add
            i32.const 25
            i32.shr_u
            local.tee 4
            i32.const 9
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.get 4
            i32.shl
            local.tee 4
            i32.const 642
            i32.and
            br_if 1 (;@3;)
            i64.const -4211012
            local.set 5
            local.get 4
            i32.const 9
            i32.and
            br_if 2 (;@2;)
          end
          i32.const 0
          i32.const 28
          i32.store offset=68244
          i32.const -1
          local.set 4
          br 2 (;@1;)
        end
        i64.const -4194626
        i64.const -4211012
        local.get 2
        i32.const 67108864
        i32.and
        select
        local.tee 5
        i64.const 4194625
        i64.or
        local.get 5
        local.get 2
        i32.const 268435456
        i32.and
        select
        local.set 5
      end
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 4
        i32.store offset=68244
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      i32.const -1
      local.set 4
      block  ;; label = @2
        local.get 0
        local.get 2
        i32.const 24
        i32.shr_u
        i32.const -1
        i32.xor
        i32.const 1
        i32.and
        local.get 1
        local.get 2
        i32.const 12
        i32.shr_u
        i32.const 4095
        i32.and
        local.get 3
        i64.load offset=24
        local.tee 6
        local.get 5
        i64.and
        local.get 6
        local.get 2
        i32.const 4095
        i32.and
        local.get 3
        i32.const 4
        i32.add
        call $__wasi_path_open
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=68244
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $open (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.const 12
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i32.const 68248
        i32.const 1
        call $undefined_weak:__wasilibc_find_relpath_alloc
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.const 12
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i32.const 0
      i32.load offset=68248
      call $__wasilibc_find_relpath
      local.set 4
    end
    i32.const -1
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 76
        i32.store offset=68244
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.load offset=8
      local.get 1
      call $__wasilibc_nocwd_openat_nomode
      local.set 0
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $abort (type 8)
    unreachable
    unreachable)
  (func $_Exit (type 3) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $internal_register_preopened_fd (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 2
        i32.add
        br_table 1 (;@1;) 1 (;@1;) 0 (;@2;)
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.load offset=68252
        local.tee 2
        i32.const 0
        i32.load offset=68260
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=68256
        local.set 3
        block  ;; label = @3
          i32.const 8
          local.get 2
          i32.const 1
          i32.shl
          i32.const 4
          local.get 2
          select
          local.tee 4
          call $calloc
          local.tee 5
          br_if 0 (;@3;)
          i32.const -1
          return
        end
        local.get 5
        local.get 3
        local.get 2
        i32.const 3
        i32.shl
        call $memcpy
        local.set 5
        i32.const 0
        local.get 4
        i32.store offset=68260
        i32.const 0
        local.get 5
        i32.store offset=68256
        local.get 3
        call $free
      end
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.tee 3
              i32.load8_u
              i32.const -46
              i32.add
              br_table 1 (;@4;) 0 (;@5;) 3 (;@2;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.load8_u offset=1
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 47
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 2
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 3
        call $strdup
        local.tee 3
        br_if 0 (;@2;)
        i32.const -1
        return
      end
      i32.const 0
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=68252
      i32.const 0
      i32.load offset=68256
      local.get 2
      i32.const 3
      i32.shl
      i32.add
      local.tee 1
      local.get 0
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      i32.const 0
      return
    end
    call $abort
    unreachable)
  (func $__wasilibc_find_relpath (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        local.get 4
        i32.const 12
        i32.add
        i32.const 0
        call $undefined_weak:__wasilibc_find_relpath_alloc
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      call $__wasilibc_find_abspath
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $__wasilibc_find_abspath (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    loop  ;; label = @1
      local.get 0
      local.tee 3
      i32.const 1
      i32.add
      local.set 0
      local.get 3
      i32.load8_u
      i32.const 47
      i32.eq
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=68252
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=68256
        local.set 6
        i32.const -1
        local.set 7
        loop  ;; label = @3
          local.get 6
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          i32.const 3
          i32.shl
          i32.add
          local.tee 8
          i32.load
          local.tee 9
          call $strlen
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const -1
              i32.eq
              br_if 0 (;@5;)
              local.get 10
              local.get 4
              i32.le_u
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load8_u
                i32.const 47
                i32.eq
                br_if 0 (;@6;)
                local.get 10
                i32.eqz
                br_if 1 (;@5;)
              end
              local.get 3
              local.get 9
              local.get 10
              call $memcmp
              br_if 1 (;@4;)
              local.get 10
              i32.const -1
              i32.add
              local.set 11
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 11
                  local.tee 12
                  i32.const -1
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 12
                  i32.const -1
                  i32.add
                  local.set 11
                  local.get 9
                  local.get 12
                  i32.add
                  i32.load8_u
                  i32.const 47
                  i32.eq
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              local.get 12
              i32.add
              i32.load8_u
              local.tee 12
              i32.const 47
              i32.eq
              br_if 0 (;@5;)
              local.get 12
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 9
            i32.store
            local.get 8
            i32.load offset=4
            local.set 7
            local.get 10
            local.set 4
          end
          local.get 5
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const -1
        i32.ne
        br_if 1 (;@1;)
      end
      i32.const 0
      i32.const 44
      i32.store offset=68244
      i32.const -1
      return
    end
    local.get 3
    local.get 4
    i32.add
    local.set 12
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.load8_u
        local.tee 3
        i32.const 47
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 67604
          local.set 12
        end
        local.get 2
        local.get 12
        i32.store
        local.get 7
        return
      end
      local.get 12
      i32.const 1
      i32.add
      local.set 12
      br 0 (;@1;)
    end)
  (func $__wasilibc_populate_preopens (type 8)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 0
            i32.const 8
            i32.add
            call $__wasi_fd_prestat_get
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            i32.const 16
            i32.add
            global.set $__stack_pointer
            return
          end
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=8
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.tee 3
            i32.const 1
            i32.add
            call $malloc
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            local.get 2
            local.get 3
            call $__wasi_fd_prestat_dir_name
            br_if 2 (;@2;)
            local.get 2
            local.get 0
            i32.load offset=12
            i32.add
            i32.const 0
            i32.store8
            local.get 1
            local.get 2
            call $internal_register_preopened_fd
            br_if 3 (;@1;)
            local.get 2
            call $free
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      i32.const 71
      call $_Exit
      unreachable
    end
    i32.const 70
    call $_Exit
    unreachable)
  (func $__wasi_environ_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and)
  (func $__wasi_environ_sizes_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_close (type 4) (param i32) (result i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_fd_close
    i32.const 65535
    i32.and)
  (func $__wasi_fd_fdstat_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_fdstat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_filestat_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_filestat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_prestat_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_prestat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_prestat_dir_name (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__imported_wasi_snapshot_preview1_fd_prestat_dir_name
    i32.const 65535
    i32.and)
  (func $__wasi_fd_read (type 0) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_read
    i32.const 65535
    i32.and)
  (func $__wasi_fd_seek (type 6) (param i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_seek
    i32.const 65535
    i32.and)
  (func $__wasi_fd_write (type 0) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $runtime.fd_write
    i32.const 65535
    i32.and)
  (func $__wasi_path_open (type 26) (param i32 i32 i32 i32 i64 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 2
    call $strlen
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    call $__imported_wasi_snapshot_preview1_path_open
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 3) (param i32)
    local.get 0
    call $runtime.proc_exit
    unreachable)
  (func $__wasilibc_ensure_environ (type 8)
    block  ;; label = @1
      i32.const 0
      i32.load offset=67972
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end)
  (func $__wasilibc_initialize_environ (type 8)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $__wasi_environ_sizes_get
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 1
            br_if 0 (;@4;)
            i32.const 0
            i32.const 68264
            i32.store offset=67972
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.tee 2
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              call $malloc
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 4
              call $calloc
              local.tee 1
              br_if 1 (;@4;)
              local.get 3
              call $free
            end
            i32.const 70
            call $_Exit
            unreachable
          end
          local.get 1
          local.get 3
          call $__wasi_environ_get
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          call $free
          local.get 1
          call $free
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      i32.const 0
      local.get 1
      i32.store offset=67972
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $getenv (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    block  ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.get 0
      i32.sub
      local.tee 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=67972
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 4
      i32.add
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 4
            local.get 1
            call $strncmp
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.add
            local.tee 4
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 3
          i32.load
          local.set 4
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 4
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 2)
  (func $memcmp (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.set 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        i32.const -2
        i32.add
        local.set 3
        local.get 0
        i32.const 2
        i32.add
        local.set 4
        local.get 1
        i32.const 2
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        i32.const -3
        i32.add
        local.set 3
        local.get 0
        i32.const 3
        i32.add
        local.set 4
        local.get 1
        i32.const 3
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 2
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.set 4
        local.get 1
        i32.const 4
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      local.set 3
      local.get 0
      local.set 4
      local.get 1
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          local.tee 1
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                i32.const -16
                i32.add
                local.tee 1
                i32.const 16
                i32.and
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i64.load align=4
                i64.store align=4
                local.get 4
                local.get 5
                i64.load offset=8 align=4
                i64.store offset=8 align=4
                local.get 4
                i32.const 16
                i32.add
                local.set 4
                local.get 5
                i32.const 16
                i32.add
                local.set 5
                local.get 1
                local.set 3
              end
              local.get 1
              i32.const 16
              i32.lt_u
              br_if 1 (;@4;)
              loop  ;; label = @6
                local.get 4
                local.get 5
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 8
                i32.add
                local.get 5
                i32.const 8
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 16
                i32.add
                local.get 5
                i32.const 16
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 24
                i32.add
                local.get 5
                i32.const 24
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 32
                i32.add
                local.set 4
                local.get 5
                i32.const 32
                i32.add
                local.set 5
                local.get 3
                i32.const -32
                i32.add
                local.tee 3
                i32.const 15
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 3
            local.set 1
          end
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 8
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 4
            i32.const 4
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 1
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          i32.const 32
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const -1
                i32.add
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 4
              local.get 5
              i32.load
              local.tee 6
              i32.store8
              local.get 4
              local.get 6
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 4
              local.get 6
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 3
              i32.const -3
              i32.add
              local.set 3
              local.get 4
              i32.const 3
              i32.add
              local.set 7
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 7
                local.get 1
                i32.add
                local.tee 4
                local.get 5
                local.get 1
                i32.add
                local.tee 2
                i32.const 4
                i32.add
                i32.load
                local.tee 8
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 4
                i32.add
                local.get 2
                i32.const 8
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 8
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 8
                i32.add
                local.get 2
                i32.const 12
                i32.add
                i32.load
                local.tee 8
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 12
                i32.add
                local.get 2
                i32.const 16
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 8
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 3
                i32.const -16
                i32.add
                local.tee 3
                i32.const 16
                i32.gt_u
                br_if 0 (;@6;)
              end
              local.get 7
              local.get 1
              i32.add
              local.set 4
              local.get 5
              local.get 1
              i32.add
              i32.const 3
              i32.add
              local.set 5
              br 2 (;@3;)
            end
            local.get 4
            local.get 5
            i32.load
            local.tee 6
            i32.store16 align=1
            local.get 3
            i32.const -2
            i32.add
            local.set 3
            local.get 4
            i32.const 2
            i32.add
            local.set 7
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 7
              local.get 1
              i32.add
              local.tee 4
              local.get 5
              local.get 1
              i32.add
              local.tee 2
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 4
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 8
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 8
              i32.add
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 12
              i32.add
              local.get 2
              i32.const 16
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 8
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.const -16
              i32.add
              local.tee 3
              i32.const 17
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 1
            i32.add
            local.set 4
            local.get 5
            local.get 1
            i32.add
            i32.const 2
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          local.get 5
          i32.load
          local.tee 6
          i32.store8
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 4
          i32.const 1
          i32.add
          local.set 7
          i32.const 0
          local.set 1
          loop  ;; label = @4
            local.get 7
            local.get 1
            i32.add
            local.tee 4
            local.get 5
            local.get 1
            i32.add
            local.tee 2
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 4
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 8
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 8
            i32.add
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 12
            i32.add
            local.get 2
            i32.const 16
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 8
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 3
            i32.const -16
            i32.add
            local.tee 3
            i32.const 18
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 1
          i32.add
          local.set 4
          local.get 5
          local.get 1
          i32.add
          i32.const 1
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load8_u
          i32.store8
          local.get 4
          local.get 5
          i32.load offset=1 align=1
          i32.store offset=1 align=1
          local.get 4
          local.get 5
          i64.load offset=5 align=1
          i64.store offset=5 align=1
          local.get 4
          local.get 5
          i32.load16_u offset=13 align=1
          i32.store16 offset=13 align=1
          local.get 4
          local.get 5
          i32.load8_u offset=15
          i32.store8 offset=15
          local.get 4
          i32.const 16
          i32.add
          local.set 4
          local.get 5
          i32.const 16
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i64.load align=1
          i64.store align=1
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          local.get 5
          i32.const 8
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load align=1
          i32.store align=1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 5
          i32.const 4
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 5
          i32.const 2
          i32.add
          local.set 5
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 4
      local.get 5
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memmove (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        local.get 2
        i32.add
        local.tee 3
        i32.sub
        i32.const 0
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  i32.ge_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    local.set 4
                    local.get 0
                    local.set 3
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.and
                    br_if 0 (;@8;)
                    local.get 2
                    local.set 4
                    local.get 0
                    local.set 3
                    br 5 (;@3;)
                  end
                  local.get 2
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  local.get 1
                  i32.load8_u
                  i32.store8
                  local.get 2
                  i32.const -1
                  i32.add
                  local.set 4
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 3
                  i32.const 3
                  i32.and
                  br_if 1 (;@6;)
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  br 4 (;@3;)
                end
                local.get 4
                br_if 2 (;@4;)
                local.get 3
                i32.const 3
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                i32.add
                local.tee 4
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                i32.store8
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -2
                i32.add
                local.tee 3
                i32.add
                local.tee 4
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                i32.store8
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -3
                i32.add
                local.tee 3
                i32.add
                local.tee 4
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                i32.store8
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                i32.const -4
                i32.add
                local.tee 2
                i32.add
                local.get 1
                local.get 2
                i32.add
                i32.load8_u
                i32.store8
                br 1 (;@5;)
              end
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 2
              i32.const -2
              i32.add
              local.set 4
              block  ;; label = @6
                local.get 0
                i32.const 2
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i32.const 2
                i32.add
                local.set 1
                br 3 (;@3;)
              end
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 2
              i32.const -3
              i32.add
              local.set 4
              block  ;; label = @6
                local.get 0
                i32.const 3
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 1
                i32.const 3
                i32.add
                local.set 1
                br 3 (;@3;)
              end
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 0
              i32.const 4
              i32.add
              local.set 3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const -4
              i32.add
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.const -4
              i32.add
              local.tee 5
              i32.const 2
              i32.shr_u
              i32.const 1
              i32.add
              i32.const 3
              i32.and
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const -4
              i32.add
              local.set 4
              local.get 0
              i32.const -4
              i32.add
              local.set 6
              loop  ;; label = @6
                local.get 6
                local.get 2
                i32.add
                local.get 4
                local.get 2
                i32.add
                i32.load
                i32.store
                local.get 2
                i32.const -4
                i32.add
                local.set 2
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 5
            i32.const 12
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -16
            i32.add
            local.set 6
            local.get 0
            i32.const -16
            i32.add
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.get 2
              i32.add
              local.tee 3
              i32.const 12
              i32.add
              local.get 6
              local.get 2
              i32.add
              local.tee 4
              i32.const 12
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              i32.store
              local.get 3
              local.get 4
              i32.load
              i32.store
              local.get 2
              i32.const -16
              i32.add
              local.tee 2
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.const -1
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.and
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.add
            local.set 4
            local.get 0
            i32.const -1
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.get 4
              local.get 2
              i32.add
              i32.load8_u
              i32.store8
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const 3
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i32.const -4
          i32.add
          local.set 6
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 1
            i32.const 3
            i32.add
            local.get 4
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 2
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            local.get 3
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -4
            i32.add
            local.tee 2
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const -4
          i32.add
          local.tee 6
          i32.const 2
          i32.shr_u
          i32.const 1
          i32.add
          i32.const 7
          i32.and
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 4
            i32.const -4
            i32.add
            local.set 4
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 28
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 1
          i32.const 4
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          i32.const 12
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          i32.const 20
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 24
          i32.add
          local.get 1
          i32.const 24
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 28
          i32.add
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 32
          i32.add
          local.set 3
          local.get 1
          i32.const 32
          i32.add
          local.set 1
          local.get 4
          i32.const -32
          i32.add
          local.tee 4
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const -1
      i32.add
      local.set 6
      block  ;; label = @2
        local.get 4
        i32.const 7
        i32.and
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 4
        i32.const -8
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memset (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $__strchrnul (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            block  ;; label = @5
              local.get 3
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 0
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load8_u
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 4
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 3 (;@1;)
            local.get 0
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load8_u
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 4
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 3 (;@1;)
            local.get 0
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load8_u
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 4
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 3 (;@1;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            br 2 (;@2;)
          end
          local.get 0
          local.get 0
          call $strlen
          i32.add
          return
        end
        local.get 3
        local.set 0
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 255
        i32.and
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $strdup (type 4) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $strlen (type 4) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 1
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $strncmp (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u
          local.tee 5
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 255
          i32.and
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 255
    i32.and
    local.get 1
    i32.load8_u
    i32.sub)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 65536))
  (export "memory" (memory 0))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "calloc" (func $calloc))
  (export "realloc" (func $realloc))
  (export "posix_memalign" (func $posix_memalign))
  (export "aligned_alloc" (func $aligned_alloc))
  (export "malloc_usable_size" (func $malloc_usable_size))
  (export "_start" (func $_start))
  (data $.rodata (i32.const 65536) "unimplemented: alignment of type\00\00\01\00 \00\00\00LenNumFieldunimplemented: size of type\00\003\00\01\00\1b\00\00\00unimplemented: (reflect.Type).Elem()\00\00\00\00X\00\01\00$\00\00\00Fieldreflect: field index out of range\00\00\8d\00\01\00!\00\00\00<unimplemented>reflect: call of reflect.Type.BoolComplexElemFloatreflect: slice index out of range\00\00\00\00\00\00\f9\00\01\00!\00\00\00reflect: string index out of range\00\00\00\00\00\00(\01\01\00\22\00\00\00IndexIntunimplemented: (reflect.Value).Pointer()`\01\01\00(\00\00\00Pointer<T>Uintreflect: call of reflect.Value. on invalid typescheduler is disabledsync: unlock of unlocked Mutex\e2\01\01\00\1e\00\00\00EOFunimplemented: posix_memalignunimplemented: aligned_allocunimplemented: malloc_usable_sizeout of memorycomparing un-comparable typetype assert failedpanic: panic: runtime error: nil pointer dereferenceindex out of rangeslice out of rangenil-0errno \00\04\01\00\00\09\01\00\00\0e\02\00\00\10\02\00\00\12\02\00\00\14\01\00\00SundayTuesdayWednesdayThursdayFridaySaturdayFebruaryMarchAprilMayJuneJulyAugustSeptemberOctoberNovemberDecember\00\00\00\00\00\1f\00\00\00;\00\00\00Z\00\00\00x\00\00\00\97\00\00\00\b5\00\00\00\d4\00\00\00\f3\00\00\00\11\01\00\000\01\00\00N\01\00\00m\01\00\00malformed time zone information/usr/share/zoneinfo//usr/share/lib/zoneinfo//usr/lib/locale/TZ/JanJanuaryMonMondayMST2006-070000-07:00:00-0700-07:00-07Z070000Z07:00:00Z0700Z07:00Z07: cannot parse  as parsing time \ef\bf\bd\5cx0123456789abcdefshort readPMAMpmam2006-01-02 15:04:05.999999999 -0700 MST m=%!Month(),M3.2.0,M11.1.0time: file  is too largeTZif.zipunsupported compression for  in corrupt zip file tzdataunknown time zone TZ/etclocaltime/etc/localtimeLocalUTCdalTLDpSugct?rwxrwxrwxfile not foundfile exists/dev/stdoutclosereadfstatwriteopen : /\18\00\00\00\0e\00\00\00\01\00\00\001\00\00\00I\00\00\00@\00\00\00\01\00\00\00\ab\00\00\00\a6\00\00\00\87\00\00\00\98\00\00\00<\00\00\00\a6\00\00\00\00\00\00\00\10\04\0c\03\00\00\00\00\00\04\00\0c\00\00\10\05\00\02\0b\00\02\11\03\00\22$\00\04.\00\025\07\00\22$\00\e7\0f)\00\e7\17;\00\22>\00\0cE\00\0cP\00\e5\0fY\03\00\16\17\00\0c\1c\00\e5\07 \01\00\22c\02\04\0a\be\01\04\0c\c2\01\0f\04\16{\04\16\7f\04\16\83\01\04\14\89\01\04\14\8e\01\04\14\92\01\04\09\96\01\04\16\a0\01\04\0c\a5\01\04\0a\aa\01\04\0c\b2\01\04\bf\01\b9\01\04\bf\01\c7\01\04\bf\01\cc\01\04I\d1\01\05\00\22$\00\0ce\00Tj\00\7fo\00\9f\01w\03\04\22\d8\01\04\22\db\01\04\d3\01\e0\01\01\04\22\e4\01\05\04\22\eb\01\04\22\f2\01\04\22\f8\01\04\22\83\02\04\22\8d\02\04when\05index\05isstd\05isutc\04wall\03ext\03loc\04name\04zone\06offset\05isDST\02tx\06extend\0acacheStart\08cacheEnd\09cacheZone\01s\04size\04mode\07modTime\03sys\03Dev\03Ino\05Nlink\04Mode\03Uid\03Gid\09Pad_cgo_0\04Rdev\04Size\07Blksize\06Blocks\04Atim\03Sec\04Nsec\04Mtim\04Ctim\06Qspare\02Op\04Path\03Err\06Method\06Layout\05Value\0aLayoutElem\09ValueElem\07Message\00\00\00\00`\00\00\00 \00\00\00@\00\00\00\80\00\00\00\c0\00\00\00\c0\00\00\00\a0\00\00.\00")
  (data $.data (i32.const 67608) "\b0\0a\01\00\90\09\01\00\00\00\00\00\00\00\00\00\88\05\01\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\df\03\01\00\14\00\00\00\f3\03\01\00\18\00\00\00\0b\04\01\00\13\00\00\00@\09\01\00#\00\00\00\1c\03\01\00\06\00\00\00+\04\01\00\06\00\00\00\22\03\01\00\07\00\00\00)\03\01\00\09\00\00\002\03\01\00\08\00\00\00:\03\01\00\06\00\00\00@\03\01\00\08\00\00\00!\04\01\00\07\00\00\00H\03\01\00\08\00\00\00P\03\01\00\05\00\00\00U\03\01\00\05\00\00\00Z\03\01\00\03\00\00\00]\03\01\00\04\00\00\00a\03\01\00\04\00\00\00e\03\01\00\06\00\00\00k\03\01\00\09\00\00\00t\03\01\00\07\00\00\00{\03\01\00\08\00\00\00\83\03\01\00\08\00\00\00\18\01\00\00\01\00\00\00\ba\05\01\00\0b\00\00\00\08\02\01\00\03\00\00\00\c0\03\01\00\1f\00\00\00/usr/local/go/lib/time/zoneinfo.zip\00\a1\05\01\00\0e\00\00\00\af\05\01\00\0b\00\00\00\df\05\01\00\01\00\00\00\bf\01\00\00\00\00\00\00\ff\ff\ff\ff"))
