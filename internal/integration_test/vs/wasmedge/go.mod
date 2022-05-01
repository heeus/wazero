module github.com/heeus/wazero/internal/integration_test/vs/wasmedge

go 1.17

require (
	github.com/second-state/WasmEdge-go v0.9.2
	github.com/heeus/wazero v0.0.0
)

replace github.com/heeus/wazero => ../../../..
