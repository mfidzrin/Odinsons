/*
 Fixed-size arrays are declared as `[N]T`, where `N` is a compile-time
 constant length and `T` the element type. Arrays are 0-indexed: a 3-element
 array has valid indices `0`, `1`, and `2`.

 Relevant syntax:
   numbers := [3]int{10, 20, 30}   // fixed array of length 3
   last    := numbers[2]            // access the final element

 Accessing `numbers[3]` goes one past the end and is a compile-time bounds
 error. The correct index for the last element is `N - 1`.

 Level: Intermediate

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	// In Odin, arrays are declared as [N]T.
	// Let's initialize a fixed-size array of 3 numbers.
	numbers := [3]int{10, 20, 30}

	// We want to access the last element (30).
	// What is wrong with the indexing below?
	last := numbers[3]

	fmt.println("Last element is:", last)
}
