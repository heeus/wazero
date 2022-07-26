module github.com/heeus/wazero/internal/integration_test/vs/wasmer

go 1.18

require (
	github.com/heeus/wazero v0.0.0
	github.com/wasmerio/wasmer-go v1.0.4
)

replace github.com/heeus/wazero => ../../../..
