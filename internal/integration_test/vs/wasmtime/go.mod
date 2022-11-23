module github.com/ivvist/wazero/internal/integration_test/vs/wasmtime

go 1.18

require (
	github.com/bytecodealliance/wasmtime-go v0.36.0
	github.com/ivvist/wazero v0.0.0
)

replace github.com/ivvist/wazero => ../../../..
