/*
 A slice (`[]T`) is a variable-length view into an underlying array. Slicing
 uses a half-open interval `a[low:high]`, which includes `low` but excludes
 `high`.

 Relevant syntax:
   fibonaccis   := [6]int{0, 1, 1, 2, 3, 5}
   slice_of_fib : []int = fibonaccis[1:4]   // indices 1, 2, 3 -> {1, 1, 2}

 A slice is NOT a fixed array, so it cannot be stored in a `[N]T` type.
 Declare the binding as `[]int`, and remember `high` is exclusive: to include
 index 3, write `[1:4]`.

 Level: Intermediate

 @author fidzr
*/

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
