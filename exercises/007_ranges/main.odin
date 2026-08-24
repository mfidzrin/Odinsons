/*
 Iterating over a half-open or closed range is done with Odin's range operators.

 Relevant syntax:
   for i in 0..<n { ... }   // half-open: 0 up to but NOT including n
   for i in 0..=n { ... }   // closed:     0 up to AND including n

 There is no bare `..` operator on its own. To make `1..3` inclusive you must
 use the closed-interval form `1..=3`.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	fmt.println("Counting to 3 (inclusive):")
	for i in 1..3 { // Something is missing here!
		fmt.println(i)
	}
}
