/*
 Odin distinguishes declaring a new variable from assigning to an existing one.

 Relevant syntax:
   message := "Hello"   // := declares AND initializes a new variable (type inferred)
   message  = "Hellope" //  = assigns a new value to an ALREADY declared variable

 Redeclaring a variable that is already in scope with `:=` is an error. Once a
 name is declared, use `=` to change its value.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	message := "Hello"
	fmt.println(message)

	// We want to change the message to "Hellope"
	message := "Hellope"
	fmt.println(message)
}
