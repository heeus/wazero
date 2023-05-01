package binary

import (
	"bytes"
	"strconv"
	"testing"

	"github.com/voedger/wazero/internal/testing/require"
	"github.com/voedger/wazero/internal/wasm"
)

func uint32Ptr(v uint32) *uint32 {
	return &v
}

func Test_ensureElementKindFuncRef(t *testing.T) {
	require.NoError(t, ensureElementKindFuncRef(bytes.NewReader([]byte{0x0})))
	require.Error(t, ensureElementKindFuncRef(bytes.NewReader([]byte{0x1})))
}

func Test_decodeElementInitValueVector(t *testing.T) {
	for i, tc := range []struct {
		in  []byte
		exp []*wasm.Index
	}{
		{
			in:  []byte{0},
			exp: []*wasm.Index{},
		},
		{
			in:  []byte{5, 1, 2, 3, 4, 5},
			exp: []*wasm.Index{uint32Ptr(1), uint32Ptr(2), uint32Ptr(3), uint32Ptr(4), uint32Ptr(5)},
		},
	} {
		t.Run(strconv.Itoa(i), func(t *testing.T) {
			actual, err := decodeElementInitValueVector(bytes.NewReader(tc.in))
			require.NoError(t, err)
			require.Equal(t, tc.exp, actual)
		})
	}
}

func Test_decodeElementConstExprVector(t *testing.T) {
	for i, tc := range []struct {
		in       []byte
		exp      []*wasm.Index
		features wasm.Features
	}{
		{
			in:       []byte{0},
			exp:      []*wasm.Index{},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			in: []byte{
				2, // Two indexes.
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
				wasm.OpcodeRefFunc, 100, wasm.OpcodeEnd,
			},
			exp:      []*wasm.Index{nil, uint32Ptr(100)},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			in: []byte{
				3, // Three indexes.
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
				wasm.OpcodeRefFunc,
				0x80, 0x80, 0x80, 0x4f, // 165675008 in varint encoding.
				wasm.OpcodeEnd,
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
			},
			exp:      []*wasm.Index{nil, uint32Ptr(165675008), nil},
			features: wasm.FeatureBulkMemoryOperations,
		},
	} {
		t.Run(strconv.Itoa(i), func(t *testing.T) {
			actual, err := decodeElementConstExprVector(bytes.NewReader(tc.in), tc.features)
			require.NoError(t, err)
			require.Equal(t, tc.exp, actual)
		})
	}
}

func TestDecodeElementSegment(t *testing.T) {
	for _, tc := range []struct {
		name     string
		in       []byte
		exp      *wasm.ElementSegment
		features wasm.Features
	}{
		{
			name: "legacy",
			in: []byte{
				0, // Prefix (which is previously the table index fixed to zero)
				// Offset const expr.
				wasm.OpcodeI32Const, 1, wasm.OpcodeEnd,
				// Init vector.
				5, 1, 2, 3, 4, 5,
			},
			exp: &wasm.ElementSegment{
				OffsetExpr: &wasm.ConstantExpression{Opcode: wasm.OpcodeI32Const, Data: []byte{1}},
				Init:       []*wasm.Index{uint32Ptr(1), uint32Ptr(2), uint32Ptr(3), uint32Ptr(4), uint32Ptr(5)},
				Mode:       wasm.ElementModeActive,
				Type:       wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			name: "legacy multi byte const expr data",
			in: []byte{
				0, // Prefix (which is previously the table index fixed to zero)
				// Offset const expr.
				wasm.OpcodeI32Const, 0x80, 0, wasm.OpcodeEnd,
				// Init vector.
				5, 1, 2, 3, 4, 5,
			},
			exp: &wasm.ElementSegment{
				OffsetExpr: &wasm.ConstantExpression{Opcode: wasm.OpcodeI32Const, Data: []byte{0x80, 0}},
				Init:       []*wasm.Index{uint32Ptr(1), uint32Ptr(2), uint32Ptr(3), uint32Ptr(4), uint32Ptr(5)},
				Mode:       wasm.ElementModeActive,
				Type:       wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{

			name: "passive value vector",
			in: []byte{
				1, // Prefix.
				0, // Elem kind must be fixed to zero.
				// Init vector.
				5, 1, 2, 3, 4, 5,
			},
			exp: &wasm.ElementSegment{
				Init: []*wasm.Index{uint32Ptr(1), uint32Ptr(2), uint32Ptr(3), uint32Ptr(4), uint32Ptr(5)},
				Mode: wasm.ElementModePassive,
				Type: wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{

			name: "active with table index encoded.",
			in: []byte{
				2, // Prefix.
				0, // Table index which is fixed to zero until reference type proposal.
				// Offset const expr.
				wasm.OpcodeI32Const, 0x80, 0, wasm.OpcodeEnd,
				0, // Elem kind must be fixed to zero.
				// Init vector.
				5, 1, 2, 3, 4, 5,
			},
			exp: &wasm.ElementSegment{
				OffsetExpr: &wasm.ConstantExpression{Opcode: wasm.OpcodeI32Const, Data: []byte{0x80, 0}},
				Init:       []*wasm.Index{uint32Ptr(1), uint32Ptr(2), uint32Ptr(3), uint32Ptr(4), uint32Ptr(5)},
				Mode:       wasm.ElementModeActive,
				Type:       wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			name: "declarative",
			in: []byte{
				3, // Prefix.
				0, // Elem kind must be fixed to zero.
				// Init vector.
				5, 1, 2, 3, 4, 5,
			},
			exp: &wasm.ElementSegment{
				Init: []*wasm.Index{uint32Ptr(1), uint32Ptr(2), uint32Ptr(3), uint32Ptr(4), uint32Ptr(5)},
				Mode: wasm.ElementModeDeclarative,
				Type: wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			name: "active const expr vector",
			in: []byte{
				4, // Prefix.
				// Offset expr.
				wasm.OpcodeI32Const, 0x80, 1, wasm.OpcodeEnd,
				// Init const expr vector.
				3, // number of const expr.
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
				wasm.OpcodeRefFunc,
				0x80, 0x80, 0x80, 0x4f, // 165675008 in varint encoding.
				wasm.OpcodeEnd,
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
			},
			exp: &wasm.ElementSegment{
				OffsetExpr: &wasm.ConstantExpression{Opcode: wasm.OpcodeI32Const, Data: []byte{0x80, 1}},
				Init:       []*wasm.Index{nil, uint32Ptr(165675008), nil},
				Mode:       wasm.ElementModeActive,
				Type:       wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			name: "passive const expr vector - funcref",
			in: []byte{
				5, // Prefix.
				wasm.RefTypeFuncref,
				// Init const expr vector.
				3, // number of const expr.
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
				wasm.OpcodeRefFunc,
				0x80, 0x80, 0x80, 0x4f, // 165675008 in varint encoding.
				wasm.OpcodeEnd,
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
			},
			exp: &wasm.ElementSegment{
				Init: []*wasm.Index{nil, uint32Ptr(165675008), nil},
				Mode: wasm.ElementModePassive,
				Type: wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			name: "active with table index and const expr vector",
			in: []byte{
				6, // Prefix.
				0, // Table index which is fixed to zero until reference type proposal.
				// Offset expr.
				wasm.OpcodeI32Const, 0x80, 1, wasm.OpcodeEnd,
				wasm.RefTypeFuncref,
				// Init const expr vector.
				3, // number of const expr.
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
				wasm.OpcodeRefFunc,
				0x80, 0x80, 0x80, 0x4f, // 165675008 in varint encoding.
				wasm.OpcodeEnd,
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
			},
			exp: &wasm.ElementSegment{
				OffsetExpr: &wasm.ConstantExpression{Opcode: wasm.OpcodeI32Const, Data: []byte{0x80, 1}},
				Init:       []*wasm.Index{nil, uint32Ptr(165675008), nil},
				Mode:       wasm.ElementModeActive,
				Type:       wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
		{
			name: "declarative const expr vector",
			in: []byte{
				7, // Prefix.
				wasm.RefTypeFuncref,
				// Init const expr vector.
				2, // number of const expr.
				wasm.OpcodeRefNull, wasm.RefTypeFuncref, wasm.OpcodeEnd,
				wasm.OpcodeRefFunc,
				0x80, 0x80, 0x80, 0x4f, // 165675008 in varint encoding.
				wasm.OpcodeEnd,
			},
			exp: &wasm.ElementSegment{
				Init: []*wasm.Index{nil, uint32Ptr(165675008)},
				Mode: wasm.ElementModeDeclarative,
				Type: wasm.RefTypeFuncref,
			},
			features: wasm.FeatureBulkMemoryOperations,
		},
	} {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			actual, err := decodeElementSegment(bytes.NewReader(tc.in), tc.features)
			require.NoError(t, err)
			require.Equal(t, actual, tc.exp)
		})
	}
}

func TestDecodeElementSegment_errors(t *testing.T) {
	_, err := decodeElementSegment(bytes.NewReader([]byte{1}), wasm.FeatureMultiValue)
	require.EqualError(t, err, `non-zero prefix for element segment is invalid as feature "bulk-memory-operations" is disabled`)
}
