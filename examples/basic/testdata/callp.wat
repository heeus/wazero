(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "callback" (func $callback))
 (import "env" "callbackp" (func $callbackp (param i32 i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "doCallback" (func $doCallback))
 (export "doCallbackp" (func $doCallbackp))
 (export "justCall" (func $justCall))
 (export "justCallParam" (func $justCallParam))
 (export "justCallParam2" (func $justCallParam2))
 (func $doCallback (; 2 ;)
  (call $callback)
 )
 (func $doCallbackp (; 3 ;) (param $0 i32) (param $1 i32)
  (call $callbackp
   (get_local $0)
   (get_local $1)
  )
 )
 (func $justCall (; 4 ;)
 )
 (func $justCallParam (; 5 ;) (param $0 i32)
 )
 (func $justCallParam2 (; 6 ;) (param $0 i32) (param $1 i32)
 )
)
