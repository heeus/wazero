module github.com/voedger/wazero/internal/integration_test/vs/wasmedge

go 1.20

require (
	github.com/second-state/WasmEdge-go v0.9.2
	github.com/voedger/wazero v0.0.0
)

replace github.com/voedger/wazero => ../../../..
