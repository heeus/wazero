package exbench

import (
	_ "embed"
	"testing"
	"time"

	"github.com/heeus/wazero"
	"github.com/heeus/wazero/api"
	"github.com/heeus/wazero/internal/testing/require"
)

func Benchmark_hwazero_CallEx_JustCall(b *testing.B) {
	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallbackSP).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(b, err)
	defer module.Close(testCtx)

	justCall := module.ExportedFunction("justCall")
	var ce api.ICallEngine = justCall.NewCallEngine()
	cep := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = justCall.CallEx(testCtx, ce, &cep)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallEx_CallBackExParams(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackSP).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(b, err)
	defer module.Close(testCtx)

	callbackp := module.ExportedFunction("doCallbackp")
	var ce api.ICallEngine = callbackp.NewCallEngine()
	cep := api.CallEngineParams{Duration: 5 * time.Second, Gaslimit: 300}

	var p1 uint64 = 14
	var p2 uint64 = 15
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp.CallEx(testCtx, ce, &cep, p1, p2)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallEx_CallBackNoParam(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackSP).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallbackSP).
		Instantiate(testCtx)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(b, err)
	defer module.Close(testCtx)

	callback := module.ExportedFunction("doCallback")
	var ce api.ICallEngine = callback.NewCallEngine()
	cnp := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callback.CallEx(testCtx, ce, &cnp)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallEx_CallBack1Param(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackSP).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallbackSP).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(b, err)
	defer module.Close(testCtx)

	callbackp := module.ExportedFunction("doCallbackp1")
	var ce api.ICallEngine = callbackp.NewCallEngine()
	cnp := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp.CallEx(testCtx, ce, &cnp, 2, 3)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallEx_CallBack3Param(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackSP).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallbackSP).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(b, err)
	defer module.Close(testCtx)

	callbackp3 := module.ExportedFunction("doCallbackp")
	var ce api.ICallEngine = callbackp3.NewCallEngine()
	cnp := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp3.CallEx(testCtx, ce, &cnp, 2, 3)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallEx_fib20_Duration(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())

	module, _ := rtm.InstantiateModuleFromCode(testCtx, fib)
	defer module.Close(testCtx)

	fibonacci := module.ExportedFunction("fibonacci")
	var ce api.ICallEngine = fibonacci.NewCallEngine()
	cep := api.CallEngineParams{Duration: 10 * time.Second}

	for i := 0; i < b.N; i++ {
		fibonacci.CallEx(testCtx, ce, &cep, 20)
	}
}

func Benchmark_hwazero_CallEx_Root(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())

	module, _ := rtm.InstantiateModuleFromCode(testCtx, root)
	defer module.Close(testCtx)

	root := module.ExportedFunction("root")
	var ce api.ICallEngine = root.NewCallEngine()
	cep := api.CallEngineParams{}

	for i := 0; i < b.N; i++ {
		root.CallEx(testCtx, ce, &cep, 1000)
	}
}
