package interpreter

// CallStack s.e.
type callStack interface {
	// Operations with stack
	PushValue(v uint64)
	PopValue() (v uint64)
	PeekValues(count int) []uint64
	Drop(rangeStart int, rangeEnd int)
	Reset()
	Pick(opus int)
	Swap(opus int)
	GetTop(num int) []uint64
	GetLen() int
}

// CallEngineStack s.e.
type callEngineStack struct {
	// stack contains the operands.
	// Note that all the values are represented as uint64.
	stack []uint64
}

func (ces *callEngineStack) PushValue(v uint64) {
	ces.stack = append(ces.stack, v)
}

func (ces *callEngineStack) PopValue() (v uint64) {
	// No need to check stack bound
	// as we can assume that all the operations
	// are valid thanks to validateFunction
	// at module validation phase
	// and wazeroir translation
	// before compilation.
	stackTopIndex := len(ces.stack) - 1
	v = ces.stack[stackTopIndex]
	ces.stack = ces.stack[:stackTopIndex]
	return
}

// PeekValues peeks api.ValueType values from the stack and returns them in reverse order.
func (ces *callEngineStack) PeekValues(count int) []uint64 {
	if count == 0 {
		return nil
	}
	stackTopIndex := len(ces.stack) - 1
	peeked := ces.stack[stackTopIndex-count : stackTopIndex]
	values := make([]uint64, 0, count)
	for i := count - 1; i >= 0; i-- {
		values = append(values, peeked[i])
	}
	return values
}

func (ces *callEngineStack) Drop(rangeStart int, rangeEnd int) {
	// No need to check stack bound
	// as we can assume that all the operations
	// are valid thanks to validateFunction
	// at module validation phase
	// and wazeroir translation
	// before compilation.
	if rangeStart == 0 {
		ces.stack = ces.stack[:len(ces.stack)-1-rangeEnd]
	} else {
		newStack := ces.stack[:len(ces.stack)-1-rangeEnd]
		newStack = append(newStack, ces.stack[len(ces.stack)-rangeStart:]...)
		ces.stack = newStack
	}
}

func (ces *callEngineStack) Reset() {
	ces.stack = ces.stack[:0]
}

func (ces *callEngineStack) Pick(opus int) {
	ces.PushValue(ces.stack[len(ces.stack)-1-opus])
}

func (ces *callEngineStack) Swap(opus int) {
	index := len(ces.stack) - 1 - opus
	ces.stack[len(ces.stack)-1], ces.stack[index] = ces.stack[index], ces.stack[len(ces.stack)-1]
}

func (ces *callEngineStack) GetTop(num int) []uint64 {
	l := len(ces.stack)
	if l > num {
		return ces.stack[len(ces.stack)-num:]
	}
	return nil
}

func (ces *callEngineStack) GetLen() int {
	return len(ces.stack)
}
