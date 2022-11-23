module github.com/ivvist/wazero/internal/integration_test/vs/wasmedge

go 1.18

require (
	github.com/ivvist/wazero v0.0.0
	github.com/second-state/WasmEdge-go v0.9.2
)

replace github.com/ivvist/wazero => ../../../..
