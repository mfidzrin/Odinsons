package main

import "core:fmt"

main :: proc() {
	fibonaccis := [6]int{0, 1, 1, 2, 3, 5}

	// We want a slice that includes the values {1, 1, 2}.
	// These are located at indices 1, 2, and 3 of the original array.
	// A slice is a variable-length view, so it cannot be stored in a fixed array type.
	slice_of_fib: [3]int = fibonaccis[1:4]

	fmt.println("Slice contains:", slice_of_fib)
}
