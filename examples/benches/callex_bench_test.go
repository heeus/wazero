package exbench

import (
	_ "embed"
	"testing"
	"time"

	"github.com/voedger/wazero"
	"github.com/voedger/wazero/api"
	"github.com/voedger/wazero/internal/testing/require"
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

	var ce api.ICallEngine = module.NewCallEngine()
	justCall := module.ExportedFunction("justCall")
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

	var ce api.ICallEngine = module.NewCallEngine()
	callbackp := module.ExportedFunction("doCallbackp")
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

	var ce api.ICallEngine = module.NewCallEngine()
	callback := module.ExportedFunction("doCallback")
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

	var ce api.ICallEngine = module.NewCallEngine()
	callbackp := module.ExportedFunction("doCallbackp1")
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

	var ce api.ICallEngine = module.NewCallEngine()
	callbackp3 := module.ExportedFunction("doCallbackp")
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

	var ce api.ICallEngine = module.NewCallEngine()
	fibonacci := module.ExportedFunction("fibonacci")
	cep := api.CallEngineParams{Duration: 10 * time.Second}

	for i := 0; i < b.N; i++ {
		fibonacci.CallEx(testCtx, ce, &cep, 20)
	}
}

func Benchmark_hwazero_CallEx_Root(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())

	module, _ := rtm.InstantiateModuleFromCode(testCtx, root)
	defer module.Close(testCtx)

	var ce api.ICallEngine = module.NewCallEngine()
	root := module.ExportedFunction("root")
	cep := api.CallEngineParams{}

	for i := 0; i < b.N; i++ {
		root.CallEx(testCtx, ce, &cep, 1000)
	}
}
