package exbench

import (
	"context"
	_ "embed"
)

var (
	hcallbaсkCount uint64
	testCtx        = context.WithValue(context.Background(), struct{}{}, "arbitrary")

	//go:embed testdata/fib.wasm
	fib []byte

	//go:embed testdata/callp.wasm
	calls []byte

	//go:embed testdata/root.wasm
	root []byte
)
var callCtx = context.WithValue(context.Background(), struct{}{}, "arbitrary")

func hcallback() {
	hcallbaсkCount++
}

func hcallbackp(i int32, j int32, k int32) {
	hcallbaсkCount = hcallbaсkCount + uint64(i) + uint64(j) + uint64(k)
}

func hcallbackSP(pars []uint64) []uint64 {
	for i := 0; i < len(pars); i++ {
		hcallbaсkCount = hcallbaсkCount + pars[i]
	}
	return nil
}
