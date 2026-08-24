package main

import "core:fmt"

main :: proc() {
	x: [dynamic]int
	defer delete(x)

	// In Odin, append requires a pointer to the dynamic array so it can resize it.
	// Can you find the bug in the call below?
	append(x, 42)

	fmt.println("Dynamic array contents:", x[:])
}
