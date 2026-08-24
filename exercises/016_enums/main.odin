package main

import "core:fmt"

Color :: enum {
	Red,
	Green,
	Blue,
}

main :: proc() {
	// We want to declare a variable 'c' with the value Color.Red.
	// But look at how we declared it below.
	c := .Red

	fmt.println("Color is:", c)
}
