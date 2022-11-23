module github.com/ivvist/wazero/internal/integration_test/vs/wasmer

go 1.18

require (
	github.com/ivvist/wazero v0.0.0
	github.com/wasmerio/wasmer-go v1.0.4
)

replace github.com/ivvist/wazero => ../../../..
