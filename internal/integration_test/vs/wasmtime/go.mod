module github.com/voedger/wazero/internal/integration_test/vs/wasmtime

go 1.20

require (
	github.com/bytecodealliance/wasmtime-go v0.36.0
	github.com/voedger/wazero v0.0.0
)

replace github.com/voedger/wazero => ../../../..
