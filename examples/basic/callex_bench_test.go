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

var hcallbaсkCount uint64
var testCtxD = context.WithValue(context.Background(), struct{}{}, "arbitrary")
var (
	//go:embed testdata/fib.wasm
	fibD []byte
)
var callCtxD = context.WithValue(context.Background(), struct{}{}, "arbitrary")
var (
	//go:embed testdata/callp.wasm
	callD []byte
)

func Benchmark_hwazero_CallBackEx0(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)
	callback := module.ExportedFunction("doCallback")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callback.CallEx(testCtx, nil, api.CallEngineParams{})
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallBackExParams(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callbackp := module.ExportedFunction("doCallbackp")

	var p1 uint64 = 4
	var p2 uint64 = 5
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp.CallEx(testCtx, nil, api.CallEngineParams{5 * time.Second, 300}, p1, p2)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_fib20_CallExDuration(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	var err error
	module, err := rtm.InstantiateModuleFromCode(testCtxD, fibD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	fibonacci := module.ExportedFunction("fibonacci")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		if _, err = fibonacci.CallEx(testCtxD, nil, api.CallEngineParams{10 * time.Second, 0}, 20); err != nil {
			if nil != err {
				break
			}
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_fib20_CallDuration(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	var err error
	module, err := rtm.InstantiateModuleFromCode(testCtxD, fibD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	fibonacci := module.ExportedFunction("fibonacci")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		if _, err = fibonacci.Call(testCtxD, 20); err != nil {
			if nil != err {
				break
			}
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallBack(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callback := module.ExportedFunction("doCallback")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callback.Call(testCtx)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func hcallback() {
	hcallbaсkCount++
}

func hcallbackp(i int32, j int32) {
	hcallbaсkCount = hcallbaсkCount + uint64(i) + uint64(j)
}
