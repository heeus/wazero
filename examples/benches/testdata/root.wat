(module
  (type (;0;) (func (param f64) (result f64)))
  (func (;0;) (type 0) (param f64) (result f64)
    (local f64 f64 i32 i32 f64 f64)
    f64.const 0x0p+0 (;=0;)
    local.set 6
    i32.const -1
    local.set 4
    local.get 0
    local.set 5
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        local.get 5
        f64.add
        f64.const 0x1p-1 (;=0.5;)
        f64.mul
        local.tee 1
        local.get 1
        f64.mul
        local.tee 2
        local.get 0
        f64.eq
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        local.get 2
        local.get 0
        f64.gt
        local.tee 3
        select
        local.set 5
        local.get 6
        local.get 1
        local.get 3
        select
        local.set 6
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.const 999
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (table (;0;) 0 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "root" (func 0)))
