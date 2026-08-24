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
