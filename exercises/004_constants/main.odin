/*
 Constants are compile-time entities whose value can never change.

 Relevant syntax:
   PI :: 3.14159   // double colon (::) declares a constant

 The `::` operator creates a named constant. Unlike a variable (declared with
 `:`), a constant cannot be reassigned with the `=` operator. If a value needs
 to change at runtime, declare it as a variable instead.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	PI :: 3.14159

	// Can we re-assign a constant?
	PI = 3.14

	fmt.println(PI)
}
