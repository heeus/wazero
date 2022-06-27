package exbench

import (
	_ "embed"
	"testing"

	"github.com/heeus/wazero"
	"github.com/heeus/wazero/internal/testing/require"
)

func Benchmark_hwazero_Old_JustCall(b *testing.B) {
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
func Benchmark_hwazero_Old_CallBack(b *testing.B) {

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

	module, err := rtm.InstantiateModuleFromCode(callCtx, calls)
	require.NoError(b, err)
	defer module.Close(testCtx)

	callbackp := module.ExportedFunction("doCallbackp")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		_, err = callbackp.Call(testCtx, 1, 2)
		if nil != err {
			break
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_Old_CallBack3Param(b *testing.B) {
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

func Benchmark_hwazero_Old_fib20_CallDuration(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())
	require.NotNil(b, rtm)

	var err error
	module, err := rtm.InstantiateModuleFromCode(testCtx, fib)
	require.NoError(b, err)
	defer module.Close(testCtx)

	fibonacci := module.ExportedFunction("fibonacci")

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		if _, err = fibonacci.Call(testCtx, 20); err != nil {
			if nil != err {
				break
			}
		}
	}
	require.Nil(b, err)
}

func Benchmark_hwazero_Old_Root(b *testing.B) {
	rtm := wazero.NewRuntimeWithConfig(wazero.NewRuntimeConfigInterpreter())

	module, _ := rtm.InstantiateModuleFromCode(testCtx, root)
	defer module.Close(testCtx)

	root := module.ExportedFunction("root")

	for i := 0; i < b.N; i++ {
		root.Call(testCtx, 1000)
	}
}
