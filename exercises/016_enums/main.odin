/*
 Enums define a distinct ordered type. Odin allows an "implicit selector"
 shorthand (`.Member`) only when the compiler can infer the enum type.

 Relevant syntax:
   Color :: enum { Red, Green, Blue }
   c: Color = .Red        // type annotation lets .Red be inferred
   c := Color.Red         // fully qualified form also works

 Writing `c := .Red` with no type information leaves the compiler unable to
 infer which enum `.Red` belongs to. Provide the type or the full name.

 Level: Intermediate

 @author fidzr
*/

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
