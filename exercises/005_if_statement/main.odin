/*
 Conditionals in Odin are deliberately minimal. Parentheses around the
 condition are optional, but the body must be explicitly delimited.

 Relevant syntax (two valid forms for a single-statement body):
   if score >= 80 do fmt.println("You passed!")   // `do` one-liner
   if score >= 80 { fmt.println("You passed!") }   // braces block

 For a body with more than one statement, braces `{}` are required. Note that
 the broken code below has neither `do` nor `{}`, so it will not compile.

 (In case of having just one action after checking, you can use `do`
  instead of `{}`.)

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

main :: proc() {
	score := 85

	if (score >= 80) // Braces are required, parentheses are not!
		fmt.println("You passed!")
	// in case of having just one action after checking, you can use `do` instead of `{}`
}
