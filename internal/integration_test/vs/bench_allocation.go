package vs

import (
	"bytes"
	_ "embed"
	"fmt"
	"testing"

	"github.com/ivvist/wazero/api"
	"github.com/ivvist/wazero/internal/testing/require"
)

var (
	// allocationWasm is compiled from ../../../examples/allocation/tinygo/testdata/src/greet.go
	// We can't use go:embed as it is outside this directory. Copying it isn't ideal due to size and drift.
	allocationWasmPath = "../../../examples/allocation/tinygo/testdata/greet.wasm"
	allocationWasm     []byte
	allocationParam    = "wazero"
	allocationResult   = []byte("wasm >> Hello, wazero!")
	allocationConfig   *RuntimeConfig
)

func init() {
	allocationWasm = readRelativeFile(allocationWasmPath)
	allocationConfig = &RuntimeConfig{
		ModuleName: "greet",
		ModuleWasm: allocationWasm,
		FuncNames:  []string{"malloc", "free", "greet"},
		NeedsWASI:  true, // Needed for TinyGo
		LogFn: func(buf []byte) error {
			if !bytes.Equal(allocationResult, buf) {
				return fmt.Errorf("expected %q, but was %q", allocationResult, buf)
			}
			return nil
		},
	}
}

func allocationCall(m Module) error {
	nameSize := uint32(len(allocationParam))
	// Instead of an arbitrary memory offset, use Rust's allocator. Notice
	// there is nothing string-specific in this allocation function. The same
	// function could be used to pass binary serialized data to Wasm.
	namePtr, err := m.CallI32_I32(testCtx, "malloc", nameSize)
	if err != nil {
		return err
	}

	// The pointer is a linear memory offset, which is where we write the name.
	if err = m.WriteMemory(testCtx, namePtr, []byte(allocationParam)); err != nil {
		return err
	}

	// Now, we can call "greet", which reads the string we wrote to memory!
	if err = m.CallI32I32_V(testCtx, "greet", namePtr, nameSize); err != nil {
		return err
	}

	// This pointer was allocated by Rust, but owned by Go, So, we have to
	// deallocate it when finished
	return m.CallI32_V(testCtx, "free", namePtr)
}

func allocationCallEx(m Module, ce api.ICallEngine, ceParams *api.CallEngineParams) error {
	nameSize := uint32(len(allocationParam))
	// Instead of an arbitrary memory offset, use Rust's allocator. Notice
	// there is nothing string-specific in this allocation function. The same
	// function could be used to pass binary serialized data to Wasm.
	namePtr, err := m.CallI32_I32Ex(testCtx, ce, ceParams, "malloc", nameSize)
	if err != nil {
		return err
	}

	// The pointer is a linear memory offset, which is where we write the name.
	if err = m.WriteMemory(testCtx, namePtr, []byte(allocationParam)); err != nil {
		return err
	}

	// Now, we can call "greet", which reads the string we wrote to memory!
	if err = m.CallI32I32_VEx(testCtx, ce, ceParams, "greet", namePtr, nameSize); err != nil {
		return err
	}

	// This pointer was allocated by Rust, but owned by Go, So, we have to
	// deallocate it when finished
	return m.CallI32_VEx(testCtx, ce, ceParams, "free", namePtr)
}

func RunTestAllocation(t *testing.T, runtime func() Runtime) {
	testCall(t, runtime, allocationConfig, testAllocationCall)
}

func RunTestAllocationEx(t *testing.T, runtime func() Runtime) {
	testCallEx(t, runtime, allocationConfig, testAllocationCallEx)
}

func testAllocationCall(t *testing.T, m Module, instantiation, iteration int) {
	err := allocationCall(m)
	require.NoError(t, err, "instantiation[%d] iteration[%d] failed: %v", instantiation, iteration, err)
}

func testAllocationCallEx(t *testing.T, m Module, ce api.ICallEngine, ceParams *api.CallEngineParams, pars []uint64) {
	err := allocationCallEx(m, ce, ceParams)
	require.NoError(t, err, "instantiation[%d] iteration[%d] failed: %v", pars[0], pars[1], err)
}

func RunBenchmarkAllocation(b *testing.B, runtime func() Runtime) {
	benchmark(b, runtime, allocationConfig, allocationCall)
}
