package add

import (
	"context"
	_ "embed"
	"os"
	"testing"
	"time"

	"github.com/heeus/wazero"
	"github.com/heeus/wazero/api"
	"github.com/heeus/wazero/wasi"
	"github.com/stretchr/testify/require"
)

var testCtx = context.WithValue(context.Background(), struct{}{}, "arbitrary")

func TestFib_Duration(t *testing.T) {
	require := require.New(t)

	fibWasm, _ := os.ReadFile("testdata/fibonacci.wasm")
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())

	wm, _ := wasi.InstantiateSnapshotPreview1(testCtx, rtm)
	defer wm.Close(testCtx)

	code, _ := rtm.CompileModule(testCtx, fibWasm)
	module, _ := rtm.InstantiateModule(testCtx, code)
	defer module.Close(testCtx)

	fibonacci := module.ExportedFunction("fibonacci")

	var err error
	for i := 0; i < 100; i++ {
		num := uint64(i)
		if _, err = fibonacci.CallEx(testCtx, 10*time.Millisecond, 0, num); err != nil {
			if nil != err {
				break
			}
		}
	}
	require.Equal(err.Error(), api.ErrDuration.Error())
}

func TestFib_GasLimit(t *testing.T) {
	require := require.New(t)

	fibWasm, _ := os.ReadFile("testdata/fibonacci.wasm")
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())

	wm, _ := wasi.InstantiateSnapshotPreview1(testCtx, rtm)
	defer wm.Close(testCtx)

	code, _ := rtm.CompileModule(testCtx, fibWasm)
	module, _ := rtm.InstantiateModule(testCtx, code)
	defer module.Close(testCtx)

	fibonacci := module.ExportedFunction("fibonacci")

	// Gaslimit 10
	var err error
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, 0, 10, num); err != nil {
			if nil != err {
				require.Equal(num, uint64(5))
				break
			}
		}
	}
	// Gaslimit 100
	require.Equal(err.Error(), api.ErrGasLimit.Error())
	err = nil
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, 0, 300, num); err != nil {
			if nil != err {
				require.Equal(num, uint64(10))
				break
			}
		}
	}
	// Gaslimit 1000
	require.Equal(err.Error(), api.ErrGasLimit.Error())
	err = nil
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, 0, 5000, num); err != nil {
			if nil != err {
				require.Equal(num, uint64(20))
				break
			}
		}
	}
	require.Equal(err.Error(), api.ErrGasLimit.Error())
}
