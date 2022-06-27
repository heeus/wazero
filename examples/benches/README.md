## Bench tests result with different functions 

#### Classic wazero Function.Call()
go test -run="^$" -bench=^Benchmark_hwazero_Old
```
goos: windows
goarch: amd64
pkg: github.com/heeus/wazero/examples/benches
cpu: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Benchmark_hwazero_Old_JustCall-16               10301560               109.1 ns/op
Benchmark_hwazero_Old_CallBack-16                1315196               921.9 ns/op
Benchmark_hwazero_Old_CallBack3Param-16          1354840               865.5 ns/op
Benchmark_hwazero_Old_fib20_CallDuration-16          716           1672881 ns/op
Benchmark_hwazero_Old_Root-16                       5185            218326 ns/op
Benchmark_hwazero_Old_Add2Param-16               3022195               393.3 ns/op
PASS
ok  	github.com/heeus/wazero/examples/basic	7.130s
```

#### Function.CallEx(), parameters to Host Go function are passed over stack
go test -run="^$" -bench=^Benchmark_hwazero_CallEx_
```
goos: windows
goarch: amd64
pkg: github.com/heeus/wazero/examples/benches
cpu: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Benchmark_hwazero_CallEx_JustCall-16                    44945839                25.61 ns/op
Benchmark_hwazero_CallEx_CallBackExParams-16            10583064               108.4 ns/op
Benchmark_hwazero_CallEx_CallBackNoParam-16             36766845                30.27 ns/op
Benchmark_hwazero_CallEx_CallBack1Param-16              16361791                73.82 ns/op
Benchmark_hwazero_CallEx_CallBack3Param-16              11412484               105.4 ns/op
Benchmark_hwazero_CallEx_fib20_Duration-16                   708           1645800 ns/op
Benchmark_hwazero_CallEx_Root-16                            4569            221647 ns/op
PASS
ok  	github.com/heeus/wazero/examples/basic	9.070s
```

#### Function.CallExArg(), parameters to WASM function are passed in array of uint64
go test -run="^$" -bench=^Benchmark_hwazero_Arg_

```
goos: windows
goarch: amd64
pkg: github.com/heeus/wazero/examples/benches
cpu: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Benchmark_hwazero_Arg_JustCall-16               42250099                24.80 ns/op
Benchmark_hwazero_Arg_CallBackNoParam-16        40054710                29.93 ns/op
Benchmark_hwazero_Arg_CallBack1Param-16         23440108                49.52 ns/op
Benchmark_hwazero_Arg_CallBack3Param-16         15224271                74.96 ns/op
Benchmark_hwazero_Arg_fib20-16                       692           1599440 ns/op
Benchmark_hwazero_Arg_Root-16                       5004            221545 ns/op
Benchmark_hwazero_Arg_AddParam-16               41923447                30.76 ns/op
PASS
ok  	github.com/heeus/wazero/examples/basic	7.265s
```
