package main

import (
	"context"
	"log"
	"strings"
	"testing"

	"github.com/voedger/wazero"
	"github.com/voedger/wazero/internal/testing/maintester"
	"github.com/voedger/wazero/internal/testing/require"
	"github.com/voedger/wazero/wasi"
)

// Test_main ensures the following will work:
//
//	go run greet.go wazero
func Test_main(t *testing.T) {
	stdout, _ := maintester.TestMain(t, main, "greet", "wazero")
	require.Equal(t, `wasm >> Hello, wazero!
go >> Hello, wazero!
`, stdout)
}

func Benchmark_AllocStr(b *testing.B) {

	// Choose the context to use for function calls.
	ctx := context.Background()

	// Create a new WebAssembly Runtime.
	r := wazero.NewRuntime()

	// Instantiate a Go-defined module named "env" that exports a function to
	// log to the console.
	env, err := r.NewModuleBuilder("env").
		ExportFunction("log", logString).
		Instantiate(ctx)
	if err != nil {
		log.Fatal(err)
	}
	defer env.Close(ctx)

	// Note: testdata/greet.go doesn't use WASI, but TinyGo needs it to
	// implement functions such as panic.
	wm, err := wasi.InstantiateSnapshotPreview1(ctx, r)
	if err != nil {
		log.Fatal(err)
	}
	defer wm.Close(ctx)

	// Instantiate a WebAssembly module that imports the "log" function defined
	// in "env" and exports "memory" and functions we'll use in this example.
	mod, err := r.InstantiateModuleFromCode(ctx, greetWasm)
	if err != nil {
		log.Fatal(err)
	}
	defer mod.Close(ctx)

	// These are undocumented, but exported. See tinygo-org/tinygo#2788
	malloc := mod.ExportedFunction("malloc")
	free := mod.ExportedFunction("free")

	// Let's use the argument to this main function in Wasm.
	shortstr := "1234567890"
	name := strings.Repeat(shortstr, 100)
	nameSize := uint64(len(name))

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		results, err := malloc.Call(ctx, nameSize)
		if err != nil {
			log.Fatal(err)
		}
		namePtr := results[0]
		// This pointer is managed by TinyGo, but TinyGo is unaware of external usage.
		// So, we have to free it when finished
		free.Call(ctx, namePtr)
	}
}
