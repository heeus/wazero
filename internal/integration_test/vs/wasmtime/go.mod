module github.com/heeus/wazero/internal/integration_test/vs/wasmtime

go 1.17

require (
	github.com/bytecodealliance/wasmtime-go v0.36.0
	github.com/heeus/wazero v0.0.0
)

replace github.com/heeus/wazero => ../../../..
