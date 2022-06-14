## Bench tests result with different functions 

#### Classic wazero Function.Call()
```
goos: windows
goarch: amd64
pkg: github.com/heeus/wazero/examples/basic
cpu: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Benchmark_hwazero_Old_JustCall-16              	10931768	       110.6 ns/op	     152 B/op	       3 allocs/op
Benchmark_hwazero_Old_CallBack-16              	 1202161	       964.6 ns/op	     440 B/op	      14 allocs/op
Benchmark_hwazero_Old_CallBack3Param-16        	 1000000	      1088 ns/op	     440 B/op	      14 allocs/op
Benchmark_hwazero_Old_fib20_CallDuration-16    	     732	   1583838 ns/op	    1664 B/op	      16 allocs/op
Benchmark_hwazero_Old_Root-16                  	    4783	    212055 ns/op	     433 B/op	      10 allocs/op
PASS
ok  	github.com/heeus/wazero/examples/basic	7.130s
```

#### Function.CallEx(), parameters to Host Go function are passed over stack
```
goos: windows
goarch: amd64
pkg: github.com/heeus/wazero/examples/basic
cpu: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Benchmark_hwazero_CallEx_JustCall-16            	36477046	        28.98 ns/op	       0 B/op	       0 allocs/op
Benchmark_hwazero_CallEx_CallBackExParams-16    	10686129	       115.8 ns/op	      16 B/op	       1 allocs/op
Benchmark_hwazero_CallEx_CallBackNoParam-16     	31742504	        34.52 ns/op	       0 B/op	       0 allocs/op
Benchmark_hwazero_CallEx_CallBack1Param-16      	14762562	        85.67 ns/op	      16 B/op	       1 allocs/op
Benchmark_hwazero_CallEx_CallBack3Param-16      	10150772	       115.9 ns/op	      16 B/op	       1 allocs/op
Benchmark_hwazero_CallEx_fib20_Duration-16      	     724	   1601860 ns/op	     123 B/op	       2 allocs/op
Benchmark_hwazero_CallEx_Root-16                	    5594	    235434 ns/op	      31 B/op	       2 allocs/op
PASS
ok  	github.com/heeus/wazero/examples/basic	9.070s
```

#### Function.CallExArg(), parameters to WASM function are passed in array of uint64

```
goos: windows
goarch: amd64
pkg: github.com/heeus/wazero/examples/basic
cpu: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Benchmark_hwazero_Arg_JustCall-16           	44928506	        24.50 ns/op	       0 B/op	       0 allocs/op
Benchmark_hwazero_Arg_CallBackNoParam-16    	31131634	        33.80 ns/op	       0 B/op	       0 allocs/op
Benchmark_hwazero_Arg_CallBack1Param-16     	20212602	        54.87 ns/op	       0 B/op	       0 allocs/op
Benchmark_hwazero_Arg_CallBack3Param-16     	15155648	        76.34 ns/op	       0 B/op	       0 allocs/op
Benchmark_hwazero_Arg_fib20-16              	     750	   1562258 ns/op	     112 B/op	       1 allocs/op
Benchmark_hwazero_Arg_Root-16               	    5191	    211228 ns/op	      24 B/op	       1 allocs/op
PASS
ok  	github.com/heeus/wazero/examples/basic	7.265s
```
