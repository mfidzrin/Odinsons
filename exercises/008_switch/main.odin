/*
 Odin's `switch` is safer than C's: only the matching case runs (implicit
 `break`), and there is no fall-through by default.

 Relevant syntax:
   switch value {
   case 'A': ...
   case 'B': fallthrough   // explicitly continue into the next case
   case: ...               // default case (no value)
   }

 To execute the next case's body as well, you must write `fallthrough`
 explicitly. Without it, case 'B' stops after its own statements.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	grade := 'B'

	switch grade {
	case 'A':
		fmt.println("Excellent!")
	case 'B':
		fmt.println("Good!")
		// We want 'B' to also print "Keep it up!" which is in case 'C'
	case 'C':
		fmt.println("Keep it up!")
	case:
		fmt.println("Passed!")
	}
}
