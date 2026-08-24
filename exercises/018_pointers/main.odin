package main

import "core:fmt"

main :: proc() {
	x := 100

	// In Odin, pointers use '^' instead of '*'.
	p: ^int = &x

	// We want to double the value of x through the pointer.
	// What is wrong with our dereferencing syntax below?
	*p = *p * 2

	fmt.println("Doubled value is:", x)
}
