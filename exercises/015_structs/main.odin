package main

import "core:fmt"

Vector3 :: struct {
	x, y, z: f32,
}

main :: proc() {
	// If we use positional arguments, we must specify ALL fields.
	// Let's try to declare a Vector3 with only 2 positional fields.
	v := Vector3{10.0, 20.0}

	fmt.println("Vector:", v)
}
