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
var (
	//go:embed testdata/callp.wasm
	calls []byte
)

func TestJustCall(t *testing.T) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(t, rtm)

	var err error

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)
	require.Nil(t, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(testCtx, calls)
	require.NoError(t, err)
	defer module.Close(testCtx)

	var callEngine api.ICallEngine
	justCall := module.ExportedFunction("justCall")
	ceCSP := api.CallEngineParams{0, 0}
	_, err = justCall.CallEx(testCtx, callEngine, ceCSP)
	require.Equal(t, err, nil)
}

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
		if _, err = fibonacci.CallEx(testCtx, nil, api.CallEngineParams{10 * time.Second, 0}, num); err != nil {
			if nil != err {
				break
			}
		}
	}
	require.Equal(t, err, api.ErrDuration)
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
		if _, err = fibonacci.CallEx(testCtx, nil, api.CallEngineParams{0, 10}, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(5))
				break
			}
		}
	}
	// Gaslimit 300
	require.Equal(t, err, api.ErrGasLimit)
	err = nil
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, nil, api.CallEngineParams{0, 300}, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(10))
				break
			}
		}
	}
	// Gaslimit 1000
	require.Equal(t, err, api.ErrGasLimit)
	err = nil
	for _, num := range []int{5, 10, 20, 30, 50, 100} {
		num := uint64(num)
		if _, err = fibonacci.CallEx(testCtx, nil, api.CallEngineParams{0, 5000}, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(20))
				break
			}
		}
	}
	require.Equal(t, err, api.ErrGasLimit)
}
