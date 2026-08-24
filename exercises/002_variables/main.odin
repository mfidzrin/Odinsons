/*
 Variables are declared with a colon (`:`), and are automatically initialized
 to their zero value (`0` for integers, `false` for booleans, `""` for strings)
 when no initializer is given.

 Relevant syntax:
   x: int            // declare x, initialized to zero value (0)
   y: int = 10       // declare y and initialize it to 10
   z: int = ---      // declare z with uninitialized memory (exactly 3 hyphens)

 Odin does NOT use a single `-` or `--` to mean "uninitialized". The correct
 token is three hyphens: `---`.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	// Odin has a clean syntax for declaring variables.
	x: int
	y: string

	// Wait, let's make a variable that uses uninitialized memory.
	// In Odin, we use the '---' symbol for this. But something is wrong below:
	z: int = --

	fmt.println(x, y, z)
}
