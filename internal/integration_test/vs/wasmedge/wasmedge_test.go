//go:build amd64 && cgo && wasmedge

// wasmedge depends on manual installation of a shared library, so is guarded by a flag by default.

package wasmedge

import (
	"testing"

	"github.com/voedger/wazero/internal/integration_test/vs"
)

var runtime = newWasmedgeRuntime

func TestAllocation(t *testing.T) {
	vs.RunTestAllocation(t, runtime)
}

func BenchmarkAllocation(b *testing.B) {
	vs.RunBenchmarkAllocation(b, runtime)
}

func TestFactorial(t *testing.T) {
	vs.RunTestFactorial(t, runtime)
}

func BenchmarkFactorial(b *testing.B) {
	vs.RunBenchmarkFactorial(b, runtime)
}
