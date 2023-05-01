package spectest

import (
	"testing"

	"github.com/voedger/wazero/internal/wasm"
	"github.com/voedger/wazero/internal/wasm/interpreter"
)

const enabledFeatures = wasm.Features20191205

func TestInterpreter(t *testing.T) {
	Run(t, testcases, interpreter.NewEngine, enabledFeatures)
}
