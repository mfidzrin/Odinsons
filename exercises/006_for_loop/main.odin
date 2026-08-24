/*
 Odin has a single looping construct: the `for` loop. It serves as the
 C-style loop, a range loop, and an infinite loop all at once.

 Relevant syntax (three-part C-style form):
   for init; condition; post {
       ...
   }

 Unlike C/C++/Java, parentheses `()` around the three clauses are NOT allowed
 and braces `{}` ARE required. The broken code wraps the header in `()`.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	// A standard C-style loop: initialization; condition; post-statement
	for (i := 0; i < 5; i += 1) {
		fmt.println(i)
	}
}
