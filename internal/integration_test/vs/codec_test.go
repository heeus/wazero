package vs

import (
	_ "embed"
	"testing"

	"github.com/voedger/wazero"
	"github.com/voedger/wazero/internal/testing/require"
	"github.com/voedger/wazero/internal/wasm"
	"github.com/voedger/wazero/internal/wasm/binary"
	"github.com/voedger/wazero/internal/wasm/text"
	"github.com/voedger/wazero/wasi"
)

func TestExampleUpToDate(t *testing.T) {
	t.Run("binary.DecodeModule", func(t *testing.T) {
		m, err := binary.DecodeModule(exampleBinary, wasm.FeaturesFinished, wasm.MemoryLimitPages)
		require.NoError(t, err)
		require.Equal(t, example, m)
	})

	t.Run("text.DecodeModule", func(t *testing.T) {
		m, err := text.DecodeModule(exampleText, wasm.FeaturesFinished, wasm.MemoryLimitPages)
		require.NoError(t, err)
		require.Equal(t, example, m)
	})

	t.Run("Executable", func(t *testing.T) {
		r := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter().WithFinishedFeatures())

		// Add WASI to satisfy import tests
		wm, err := wasi.InstantiateSnapshotPreview1(testCtx, r)
		require.NoError(t, err)
		defer wm.Close(testCtx)

		// Decode and instantiate the module
		module, err := r.InstantiateModuleFromCode(testCtx, exampleBinary)
		require.NoError(t, err)
		defer module.Close(testCtx)

		// Call the swap function as a smoke test
		results, err := module.ExportedFunction("swap").Call(testCtx, 1, 2)
		require.NoError(t, err)
		require.Equal(t, []uint64{2, 1}, results)
	})
}

func BenchmarkCodec(b *testing.B) {
	b.Run("binary.DecodeModule", func(b *testing.B) {
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			if _, err := binary.DecodeModule(exampleBinary, wasm.FeaturesFinished, wasm.MemoryLimitPages); err != nil {
				b.Fatal(err)
			}
		}
	})
	b.Run("binary.EncodeModule", func(b *testing.B) {
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			_ = binary.EncodeModule(example)
		}
	})
	b.Run("text.DecodeModule", func(b *testing.B) {
		b.ReportAllocs()
		for i := 0; i < b.N; i++ {
			if _, err := text.DecodeModule(exampleText, wasm.FeaturesFinished, wasm.MemoryLimitPages); err != nil {
				b.Fatal(err)
			}
		}
	})
}
