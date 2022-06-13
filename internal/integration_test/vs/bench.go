package vs

import (
	"context"
	"os"
	"path"
	"runtime"
	"testing"

	"github.com/heeus/wazero/internal/testing/require"
)

// testCtx is an arbitrary, non-default context. Non-nil also prevents linter errors.
var testCtx = context.WithValue(context.Background(), struct{}{}, "arbitrary")

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
