/*
 Structs group related fields. When initializing a struct literal you may use
 positional fields (in declaration order) or named fields, but you cannot mix
 partial positional with missing ones.

 Relevant syntax:
   Vector3{x = 10.0, y = 20.0}        // named: omitted fields zero-initialize
   Vector3{10.0, 20.0, 30.0}          // positional: ALL fields required

 A positional literal must supply every field. Supplying only two of three
 fields is a compile error; use named fields to leave some at their zero value.

 Level: Intermediate

 @author fidzr
*/

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
