package interpreter

import (
	"context"
	"fmt"
	"math"
	"testing"
	"time"

	"github.com/heeus/wazero/api"
	"github.com/heeus/wazero/internal/testing/require"
	"github.com/heeus/wazero/internal/wasm"
	"github.com/heeus/wazero/internal/wazeroir"
)

func TestInterpreter_Call_WithContextTimeout(t *testing.T) {
	translateToIROperationKind := func(op wasm.Opcode) (kind wazeroir.OperationKind) {
		switch op {
		case wasm.OpcodeI32Extend8S:
			kind = wazeroir.OperationKindSignExtend32From8
		case wasm.OpcodeI32Extend16S:
			kind = wazeroir.OperationKindSignExtend32From16
		case wasm.OpcodeI64Extend8S:
			kind = wazeroir.OperationKindSignExtend64From8
		case wasm.OpcodeI64Extend16S:
			kind = wazeroir.OperationKindSignExtend64From16
		case wasm.OpcodeI64Extend32S:
			kind = wazeroir.OperationKindSignExtend64From32
		}
		return
	}
	t.Run("32bit", func(t *testing.T) {
		for _, tc := range []struct {
			in       int32
			expected int32
			opcode   wasm.Opcode
		}{
			// https://github.com/WebAssembly/spec/blob/ee4a6c40afa22e3e4c58610ce75186aafc22344e/test/core/i32.wast#L270-L276
			{in: 0, expected: 0, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x7f, expected: 127, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x80, expected: -128, opcode: wasm.OpcodeI32Extend8S},
			{in: 0xff, expected: -1, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x012345_00, expected: 0, opcode: wasm.OpcodeI32Extend8S},
			{in: -19088768 /* = 0xfedcba_80 bit pattern */, expected: -0x80, opcode: wasm.OpcodeI32Extend8S},
			{in: -1, expected: -1, opcode: wasm.OpcodeI32Extend8S},

			// https://github.com/WebAssembly/spec/blob/ee4a6c40afa22e3e4c58610ce75186aafc22344e/test/core/i32.wast#L278-L284
			{in: 0, expected: 0, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x7fff, expected: 32767, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x8000, expected: -32768, opcode: wasm.OpcodeI32Extend16S},
			{in: 0xffff, expected: -1, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x0123_0000, expected: 0, opcode: wasm.OpcodeI32Extend16S},
			{in: -19103744 /* = 0xfedc_8000 bit pattern */, expected: -0x8000, opcode: wasm.OpcodeI32Extend16S},
			{in: -1, expected: -1, opcode: wasm.OpcodeI32Extend16S},
		} {
			tc := tc
			t.Run(fmt.Sprintf("%s(i32.const(0x%x))", wasm.InstructionName(tc.opcode), tc.in), func(t *testing.T) {
				fmockStep := func() uint64 { return 2 }
				ce := &callEngine{stack: NewCallEngineStack(), funcCtxErrStep: fmockStep, opcounter: fmockStep()}
				f := &function{
					source: &wasm.FunctionInstance{Module: &wasm.ModuleInstance{Engine: &moduleEngine{}}},
					body: []*interpreterOp{
						{kind: wazeroir.OperationKindConstI32, us: []uint64{uint64(uint32(tc.in))}},
						{kind: translateToIROperationKind(tc.opcode)},
						{kind: wazeroir.OperationKindBr, us: []uint64{math.MaxUint64}},
					},
				}
				var err error
				ctx, cancel := context.WithTimeout(testCtx, 10*time.Millisecond)
				defer cancel()
				mdlctx := wasm.CallContext{}
				for i := 0; i < 10000000; i++ {
					err = ce.callNativeFunc(ctx, &mdlctx, f)
					if nil != err {
						break
					}
				}
				var errstr string
				if nil != err {
					errstr = err.Error()
				}
				require.Equal(t, errstr, "context deadline exceeded")
			})
		}
	})
}

func TestInterpreter_Call_WithGasLimit(t *testing.T) {
	translateToIROperationKind := func(op wasm.Opcode) (kind wazeroir.OperationKind) {
		switch op {
		case wasm.OpcodeI32Extend8S:
			kind = wazeroir.OperationKindSignExtend32From8
		case wasm.OpcodeI32Extend16S:
			kind = wazeroir.OperationKindSignExtend32From16
		case wasm.OpcodeI64Extend8S:
			kind = wazeroir.OperationKindSignExtend64From8
		case wasm.OpcodeI64Extend16S:
			kind = wazeroir.OperationKindSignExtend64From16
		case wasm.OpcodeI64Extend32S:
			kind = wazeroir.OperationKindSignExtend64From32
		}
		return
	}
	t.Run("32bit", func(t *testing.T) {
		for _, tc := range []struct {
			in       int32
			expected int32
			opcode   wasm.Opcode
		}{
			// https://github.com/WebAssembly/spec/blob/ee4a6c40afa22e3e4c58610ce75186aafc22344e/test/core/i32.wast#L270-L276
			{in: 0, expected: 0, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x7f, expected: 127, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x80, expected: -128, opcode: wasm.OpcodeI32Extend8S},
			{in: 0xff, expected: -1, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x012345_00, expected: 0, opcode: wasm.OpcodeI32Extend8S},
			{in: -19088768 /* = 0xfedcba_80 bit pattern */, expected: -0x80, opcode: wasm.OpcodeI32Extend8S},
			{in: -1, expected: -1, opcode: wasm.OpcodeI32Extend8S},

			// https://github.com/WebAssembly/spec/blob/ee4a6c40afa22e3e4c58610ce75186aafc22344e/test/core/i32.wast#L278-L284
			{in: 0, expected: 0, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x7fff, expected: 32767, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x8000, expected: -32768, opcode: wasm.OpcodeI32Extend16S},
			{in: 0xffff, expected: -1, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x0123_0000, expected: 0, opcode: wasm.OpcodeI32Extend16S},
			{in: -19103744 /* = 0xfedc_8000 bit pattern */, expected: -0x8000, opcode: wasm.OpcodeI32Extend16S},
			{in: -1, expected: -1, opcode: wasm.OpcodeI32Extend16S},
		} {
			tc := tc
			t.Run(fmt.Sprintf("%s(i32.const(0x%x))", wasm.InstructionName(tc.opcode), tc.in), func(t *testing.T) {
				fmockStep := func() uint64 { return 1 }
				ce := &callEngine{stack: NewCallEngineStack(), funcCtxErrStep: fmockStep, opcounter: fmockStep()}
				mdl := wasm.ModuleInstance{Engine: &moduleEngine{}}
				f := &function{
					source: &wasm.FunctionInstance{Module: &mdl},
					body: []*interpreterOp{
						{kind: wazeroir.OperationKindConstI32, us: []uint64{uint64(uint32(tc.in))}},
						{kind: translateToIROperationKind(tc.opcode)},
						{kind: wazeroir.OperationKindBr, us: []uint64{math.MaxUint64}},
					},
				}
				var err error
				var errstr string
				emptytcx := &wasm.CallContext{}

				// Limit should work
				ce = ce.WithGasLimit(1)
				err = ce.callNativeFunc(testCtx, emptytcx, f)
				if nil != err {
					errstr = err.Error()
				}
				require.Equal(t, errstr, api.ErrGasLimit.Error())

				//Limit should not work
				ce = ce.WithGasLimit(2)
				err = ce.callNativeFunc(testCtx, emptytcx, f)
				require.Nil(t, err)

				//Limit should not work
				ce = ce.WithGasLimit(5)
				err = ce.callNativeFunc(testCtx, emptytcx, f)
				require.Nil(t, err)

				// Limit should work
				ce = ce.WithGasLimit(2)
				err = ce.callNativeFunc(testCtx, emptytcx, f)
				if nil != err {
					errstr = err.Error()
				}
				require.Equal(t, errstr, api.ErrGasLimit.Error())

			})
		}
	})
}

func TestInterpreter_Call_WithDuration(t *testing.T) {
	translateToIROperationKind := func(op wasm.Opcode) (kind wazeroir.OperationKind) {
		switch op {
		case wasm.OpcodeI32Extend8S:
			kind = wazeroir.OperationKindSignExtend32From8
		case wasm.OpcodeI32Extend16S:
			kind = wazeroir.OperationKindSignExtend32From16
		case wasm.OpcodeI64Extend8S:
			kind = wazeroir.OperationKindSignExtend64From8
		case wasm.OpcodeI64Extend16S:
			kind = wazeroir.OperationKindSignExtend64From16
		case wasm.OpcodeI64Extend32S:
			kind = wazeroir.OperationKindSignExtend64From32
		}
		return
	}
	t.Run("32bit", func(t *testing.T) {
		for _, tc := range []struct {
			in       int32
			expected int32
			opcode   wasm.Opcode
		}{
			// https://github.com/WebAssembly/spec/blob/ee4a6c40afa22e3e4c58610ce75186aafc22344e/test/core/i32.wast#L270-L276
			{in: 0, expected: 0, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x7f, expected: 127, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x80, expected: -128, opcode: wasm.OpcodeI32Extend8S},
			{in: 0xff, expected: -1, opcode: wasm.OpcodeI32Extend8S},
			{in: 0x012345_00, expected: 0, opcode: wasm.OpcodeI32Extend8S},
			{in: -19088768 /* = 0xfedcba_80 bit pattern */, expected: -0x80, opcode: wasm.OpcodeI32Extend8S},
			{in: -1, expected: -1, opcode: wasm.OpcodeI32Extend8S},

			// https://github.com/WebAssembly/spec/blob/ee4a6c40afa22e3e4c58610ce75186aafc22344e/test/core/i32.wast#L278-L284
			{in: 0, expected: 0, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x7fff, expected: 32767, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x8000, expected: -32768, opcode: wasm.OpcodeI32Extend16S},
			{in: 0xffff, expected: -1, opcode: wasm.OpcodeI32Extend16S},
			{in: 0x0123_0000, expected: 0, opcode: wasm.OpcodeI32Extend16S},
			{in: -19103744 /* = 0xfedc_8000 bit pattern */, expected: -0x8000, opcode: wasm.OpcodeI32Extend16S},
			{in: -1, expected: -1, opcode: wasm.OpcodeI32Extend16S},
		} {
			tc := tc
			t.Run(fmt.Sprintf("%s(i32.const(0x%x))", wasm.InstructionName(tc.opcode), tc.in), func(t *testing.T) {
				fmockStep := func() uint64 { return 1 }
				// Set test duration to 10 Milliseconds
				ce := &callEngine{stack: NewCallEngineStack(), funcCtxErrStep: fmockStep, duration: 10 * time.Millisecond, opcounter: fmockStep()}
				f := &function{
					source: &wasm.FunctionInstance{Module: &wasm.ModuleInstance{Engine: &moduleEngine{}}},
					body: []*interpreterOp{
						{kind: wazeroir.OperationKindConstI32, us: []uint64{uint64(uint32(tc.in))}},
						{kind: translateToIROperationKind(tc.opcode)},
						{kind: wazeroir.OperationKindBr, us: []uint64{math.MaxUint64}},
					},
				}
				var err error
				mdlctx := wasm.CallContext{}
				timenow := time.Now()
				// Set mock start time to Now
				ce.startTime = timenow
				ce.funcGetTime = func() time.Time { return timenow }
				for i := 0; i < 15; i++ {
					err = ce.callNativeFunc(testCtx, &mdlctx, f)
					// Every cycle iteration incerase mock time to 1 Millisecond
					ce.funcGetTime = func() time.Time {
						t := timenow.Add(time.Duration(i) * time.Millisecond)
						return t
					}
					if nil != err {
						// On 11th iteration mock time must exceeed test Duration 10 Milliseconds
						require.Equal(t, i, 11)
						break
					}
				}
				var errstr string
				if nil != err {
					errstr = err.Error()
				}
				require.Equal(t, errstr, api.ErrDuration.Error())
			})
		}
	})
}
