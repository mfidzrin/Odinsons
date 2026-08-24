/*
 `defer` schedules a statement to run when the enclosing scope exits, in
 reverse order of declaration. It is handy for cleanup (closing files, freeing
 memory).

 Relevant syntax:
   defer fmt.println("done")        // defer an action (call, assignment, block)
   defer { free(some_ptr) }          // defer a block

 You can only defer an action, not a declaration. Writing `defer y := 20`
 tries to defer a variable declaration, which is a compile error.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	x := 10
	defer y := 20 // Can you defer a declaration?
	fmt.println(x)
}
