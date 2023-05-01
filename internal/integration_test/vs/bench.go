package vs

import (
	"context"
	"os"
	"path"
	"runtime"
	"testing"

	"github.com/voedger/wazero/api"
	"github.com/voedger/wazero/internal/testing/require"
)

// testCtx is an arbitrary, non-default context. Non-nil also prevents linter errors.
var testCtx = context.WithValue(context.Background(), struct{}{}, "arbitrary")

// ensureCompilerFastest is overridable via ldflags. Ex.
//	-ldflags '-X github.com/tetratelabs/wazero/internal/integration_test/vs.ensureCompilerFastest=true'
var ensureCompilerFastest = "false"

const compilerRuntime = "wazero-compiler"

func benchmark(b *testing.B, runtime func() Runtime, rtCfg *RuntimeConfig, call func(Module) error) {
	rt := runtime()
	b.Run("Compile", func(b *testing.B) {
		benchmarkCompile(b, rt, rtCfg)
	})
	b.Run("Instantiate", func(b *testing.B) {
		benchmarkInstantiate(b, rt, rtCfg)
	})

	// Don't burn CPU when this is already going to be called in runTestBenchmark_Call_CompilerFastest
	if ensureCompilerFastest != "true" || rt.Name() == compilerRuntime {
		b.Run("Call", func(b *testing.B) {
			benchmarkCall(b, rt, rtCfg, call)
		})
	}
}

func benchmarkCompile(b *testing.B, rt Runtime, rtCfg *RuntimeConfig) {
	for i := 0; i < b.N; i++ {
		if err := rt.Compile(testCtx, rtCfg); err != nil {
			b.Fatal(err)
		}
		if err := rt.Close(testCtx); err != nil {
			b.Fatal(err)
		}
	}
}

func benchmarkInstantiate(b *testing.B, rt Runtime, rtCfg *RuntimeConfig) {
	// Compile outside the benchmark loop
	if err := rt.Compile(testCtx, rtCfg); err != nil {
		b.Fatal(err)
	}
	defer rt.Close(testCtx)

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		mod, err := rt.Instantiate(testCtx, rtCfg)
		if err != nil {
			b.Fatal(err)
		}
		err = mod.Close(testCtx)
		if err != nil {
			b.Fatal(err)
		}
	}
}

func benchmarkCall(b *testing.B, rt Runtime, rtCfg *RuntimeConfig, call func(Module) error) {
	// Initialize outside the benchmark loop
	if err := rt.Compile(testCtx, rtCfg); err != nil {
		b.Fatal(err)
	}
	defer rt.Close(testCtx)
	mod, err := rt.Instantiate(testCtx, rtCfg)
	if err != nil {
		b.Fatal(err)
	}
	defer mod.Close(testCtx)
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		if err := call(mod); err != nil {
			b.Fatal(err)
		}
	}
}

func testCall(t *testing.T, runtime func() Runtime, rtCfg *RuntimeConfig, testCall func(*testing.T, Module, int, int)) {
	rt := runtime()
	err := rt.Compile(testCtx, rtCfg)
	require.NoError(t, err)
	defer rt.Close(testCtx)

	// Ensure the module can be re-instantiated times, even if not all runtimes allow renaming.
	for i := 0; i < 10; i++ {
		m, err := rt.Instantiate(testCtx, rtCfg)
		require.NoError(t, err)

		// Large loop in test is only to show the function is stable (ex doesn't leak or crash on Nth use).
		for j := 0; j < 1000; j++ {
			testCall(t, m, i, j)
		}

		require.NoError(t, m.Close(testCtx))
	}
}

func testCallEx(t *testing.T, runtime func() Runtime, rtCfg *RuntimeConfig,
	tCallEx func(*testing.T, Module, api.ICallEngine, *api.CallEngineParams, []uint64)) {
	rt := runtime()
	err := rt.Compile(testCtx, rtCfg)
	require.NoError(t, err)
	defer rt.Close(testCtx)

	ceParams := api.CallEngineParams{}

	// Ensure the module can be re-instantiated times, even if not all runtimes allow renaming.
	par := []uint64{0, 0}
	for i := 0; i < 10; i++ {
		m, err := rt.Instantiate(testCtx, rtCfg)
		require.NoError(t, err)

		par[0] = uint64(i)
		// Large loop in test is only to show the function is stable (ex doesn't leak or crash on Nth use).
		for j := 0; j < 1000; j++ {
			par[1] = uint64(j)
			tCallEx(t, m, nil, &ceParams, par)
		}

		require.NoError(t, m.Close(testCtx))
	}
}

func readRelativeFile(relativePath string) []byte {
	// We can't resolve relative paths as init() is called from each of its subdirs
	_, source, _, _ := runtime.Caller(1) // 1 as this utility is in a different source than the caller.
	realPath := path.Join(path.Dir(source), relativePath)
	bytes, err := os.ReadFile(realPath)
	if err != nil {
		panic(err)
	}
	return bytes
}
