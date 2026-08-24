package main

import "core:fmt"

Person :: struct {
	age: int,
}

main :: proc() {
	m := make(map[string]Person)
	defer delete(m)

	m["Bob"] = Person{age = 30}

	// In Odin, assigning directly to a struct field within a map value is prohibited.
	// Try to compile the line below. How should you do it instead?
	m["Bob"].age = 31

	fmt.println("Bob's age:", m["Bob"].age)
}
