package spectest

import (
	"testing"

	"github.com/heeus/wazero/internal/wasm"
	"github.com/heeus/wazero/internal/wasm/interpreter"
)

const enabledFeatures = wasm.Features20191205

func TestInterpreter(t *testing.T) {
	Run(t, testcases, interpreter.NewEngine, enabledFeatures)
}
