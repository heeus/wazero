package exbench

import (
	_ "embed"
	"testing"
	"time"

	"github.com/ivvist/wazero"
	"github.com/ivvist/wazero/api"
	"github.com/ivvist/wazero/internal/testing/require"
)

func TestJustCall(t *testing.T) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(t, rtm)

	var err error

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)
	require.Nil(t, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(testCtx, calls)
	require.NoError(t, err)
	defer module.Close(testCtx)

	var callEngine api.ICallEngine
	justCall := module.ExportedFunction("justCall")

	ceCSP := api.CallEngineParams{}
	_, err = justCall.CallEx(testCtx, callEngine, &ceCSP)
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
	var ce api.ICallEngine

	for i := 0; i < 100; i++ {
		num := uint64(i)
		if _, err = fibonacci.CallEx(testCtx, ce, &api.CallEngineParams{Duration: 2 * time.Second}, num); err != nil {
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
		if _, err = fibonacci.CallEx(testCtx, nil, &api.CallEngineParams{Gaslimit: 10}, num); err != nil {
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
		if _, err = fibonacci.CallEx(testCtx, nil, &api.CallEngineParams{Gaslimit: 300}, num); err != nil {
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
		if _, err = fibonacci.CallEx(testCtx, nil, &api.CallEngineParams{Gaslimit: 5000}, num); err != nil {
			if nil != err {
				require.Equal(t, num, uint64(20))
				break
			}
		}
	}
	require.Equal(t, err, api.ErrGasLimit)
}

func TestCallGoFunc2Params(t *testing.T) {
	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(t, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackSP).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallbackSP).
		Instantiate(testCtx)
	cbp := host.ExportedFunction("callbackp")
	require.NotNil(t, cbp)

	require.Nil(t, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(t, err)
	defer module.Close(testCtx)

	callbackp := module.ExportedFunction("doCallbackp")

	_, err = callbackp.CallEx(testCtx, nil, &api.CallEngineParams{}, 4, 5)
	require.Nil(t, err)
	require.Equal(t, hcallbaсkCount, uint64(45))
}

func Benchmark_hwazero_TimeNow(b *testing.B) {
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		time.Now()
	}
}
