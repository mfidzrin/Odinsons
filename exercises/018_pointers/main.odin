/*
 Odin borrows its pointer syntax from Pascal rather than C.

 Relevant syntax:
   p: ^int = &x       // ^T is a pointer to T; &x takes the address of x
   p^ = p^ * 2        // p^ dereferences the pointer (read/write the value)

 C-style `*p` is not valid in Odin. The type stays on the left (`^`), and the
 dereference operator is the postfix caret `^`.

 Level: Intermediate

 @author fidzr
*/

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
