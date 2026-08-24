package main

import "core:fmt"

Value :: union {
	int,
	string,
}

main :: proc() {
	val: Value = "Odinsons"

	// We want to assert that 'val' contains a string.
	// In Odin, type assertions use a special dot-parentheses syntax.
	// What is wrong with how we assert this below?
	s, ok := val(string)

	if ok {
		fmt.println("String value is:", s)
	} else {
		fmt.println("Not a string!")
	}
}
