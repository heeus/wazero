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

func Benchmark_hwazero_CallBackExParams(b *testing.B) {

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

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callbackp := module.ExportedFunction("doCallbackp")
	cep := api.CallEngineParams{Duration: 5 * time.Second, Gaslimit: 300}
	var ce api.ICallEngine

	var p1 uint64 = 14
	var p2 uint64 = 15
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp.CallEx(testCtx, ce, cep, p1, p2)
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
	cep := api.CallEngineParams{Duration: 10 * time.Second}
	var ce api.ICallEngine

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		if _, err = fibonacci.CallEx(testCtxD, ce, cep, 20); err != nil {
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

func Benchmark_hwazero_CallBackOldCall(b *testing.B) {

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

func Benchmark_hwazero_JustCallOld(b *testing.B) {
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

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	justCall := module.ExportedFunction("justCall")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = justCall.Call(testCtx)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_JustCall(b *testing.B) {
	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	justCall := module.ExportedFunction("justCall")
	var ce api.ICallEngine
	cep := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = justCall.CallEx(testCtx, ce, cep)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}
func Benchmark_hwazero_CallBackNoParam(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackSP).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callback := module.ExportedFunction("doCallback")
	var ce api.ICallEngine
	cnp := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callback.CallEx(testCtx, ce, cnp)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallBack1Param(b *testing.B) {

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

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callbackp := module.ExportedFunction("doCallbackp1")
	var ce api.ICallEngine
	cnp := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp.CallEx(testCtx, ce, cnp, 2, 3)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_CallBack3ParamOld(b *testing.B) {

	hcallbaсkCount = 0
	var err error
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	host, err := rtm.NewModuleBuilder("env").
		ExportFunction("callbackp", hcallbackp).
		ExportFunction("callbackp1", hcallbackSP).
		ExportFunction("callback", hcallback).
		Instantiate(testCtx)

	require.Nil(b, err)
	defer host.Close(testCtx)

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callbackp3 := module.ExportedFunction("doCallbackp")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp3.Call(testCtx, 2, 3)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}
func Benchmark_hwazero_CallBack3Param(b *testing.B) {

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

	module, err := rtm.InstantiateModuleFromCode(callCtxD, callD)
	require.NoError(b, err)
	defer module.Close(testCtxD)

	callbackp3 := module.ExportedFunction("doCallbackp")
	var ce api.ICallEngine
	cnp := api.CallEngineParams{}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp3.CallEx(testCtx, ce, cnp, 2, 3)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}
func Benchmark_hwazero_PushPopStack(b *testing.B) {

	hcallbaсkCount = 0
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	s := api.NewCallEngineStack()

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		s.PushValue(5)
		s.PopValue()
	}
}

func hcallback() {
	hcallbaсkCount++
}

func hcallbackp(i int32, j int32, k int32) {
	hcallbaсkCount = hcallbaсkCount + uint64(i) + uint64(j)
}

func hcallbackSP(pars []uint64) []uint64 {
	for i := 0; i < len(pars); i++ {
		hcallbaсkCount = hcallbaсkCount + pars[0]
	}
	return nil
}
