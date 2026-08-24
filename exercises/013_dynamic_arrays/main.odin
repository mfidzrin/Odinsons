/*
 Dynamic arrays (`[dynamic]T`) can grow at runtime. Because they are heap
 allocated, you must free them with `delete`.

 Relevant syntax:
   x: [dynamic]int
   defer delete(x)              // always clean up
   append(&x, 42)               // append takes a POINTER to the dynamic array

 `append` needs the address of the dynamic array (`&x`) so it can resize the
 backing storage in place. Passing `x` by value will not compile.

 Level: Intermediate

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	x: [dynamic]int
	defer delete(x)

	// In Odin, append requires a pointer to the dynamic array so it can resize it.
	// Can you find the bug in the call below?
	append(x, 42)

	fmt.println("Dynamic array contents:", x[:])
}
