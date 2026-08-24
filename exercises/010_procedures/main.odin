/*
 Subroutines in Odin are called procedures, declared with the `proc` keyword.

 Relevant syntax:
   add :: proc(a, b: int) -> int {
       return a + b
   }

 Odin uses `proc`, not `func` or `fn`. Parameters share a type when written as
 `a, b: int`, the return type follows `->`, and `return` yields the result.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

add :: func(a, b: int) -> int { // Is 'func' the correct keyword?
	return a + b
}

main :: proc() {
	result := add(10, 20)
	fmt.println("Result:", result)
}
