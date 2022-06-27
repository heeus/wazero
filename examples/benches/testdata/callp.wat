(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32)))
  (import "env" "callback" (func (;0;) (type 0)))
  (import "env" "callbackp" (func (;1;) (type 1)))
  (import "env" "callbackp1" (func (;2;) (type 2)))
  (func (;3;) (type 0)
    call 0)
  (func (;4;) (type 3) (param i32 i32)
    local.get 0
    i32.const 10
    i32.add
    local.get 1
    i32.const 10
    i32.add
    local.get 1
    i32.const 11
    i32.add
    call 1)
  (func (;5;) (type 3) (param i32 i32)
    local.get 1
    local.get 0
    i32.add
    call 2)
  (func (;6;) (type 0))
  (func (;7;) (type 2) (param i32))
  (func (;8;) (type 3) (param i32 i32))
  (table (;0;) 0 funcref)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (export "doCallback" (func 3))
  (export "doCallbackp" (func 4))
  (export "doCallbackp1" (func 5))
  (export "justCall" (func 6))
  (export "justCallParam" (func 7))
  (export "justCallParam2" (func 8)))
