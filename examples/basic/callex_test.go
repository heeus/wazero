package add

import (
	"context"
	_ "embed"
	"testing"
	"time"

	"github.com/heeus/wazero"
	"github.com/heeus/wazero/api"
	"github.com/heeus/wazero/internal/testing/require"
)

var testCtx = context.WithValue(context.Background(), struct{}{}, "arbitrary")
var (
	//go:embed testdata/fib.wasm
	fib []byte
)

func TestFib_Duration(t *testing.T) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(t, rtm)

	var err error

	module, err := rtm.InstantiateModuleFromCode(testCtx, fib)
	require.NoError(t, err)
	defer module.Close(testCtx)

	fibonacci := module.ExportedFunction("fibonacci")

	for i := 0; i < 100; i++ {
		num := uint64(i)
		if _, err = fibonacci.CallEx(testCtx, 10*time.Millisecond, 0, num); err != nil {
			if nil != err {
				break
			}
		}
	}
	require.Equal(t, err.Error(), api.ErrDuration.Error())
}

func TestFib_GasLimit(t *testing.T) {

	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(t, rtm)

	var err error

	module, err := rtm.InstantiateModuleFromCode(testCtx, fib)
	require.NoError(t, err)
	defer module.Close(testCtx)

	fibonacci := module.ExportedFunction("fibonacci")

	// Gaslimit 10
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, 0, 10, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(5))
				break
			}
		}
	}
	// Gaslimit 100
	require.Equal(t, err.Error(), api.ErrGasLimit.Error())
	err = nil
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, 0, 300, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(10))
				break
			}
		}
	}
	// Gaslimit 1000
	require.Equal(t, err.Error(), api.ErrGasLimit.Error())
	err = nil
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, 0, 5000, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(20))
				break
			}
		}
	}
	require.Equal(t, err.Error(), api.ErrGasLimit.Error())
}
