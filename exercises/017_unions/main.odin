/*
 A union holds exactly one of several possible types. To read the value you
 perform a type assertion, which yields the value and an `ok` boolean.

 Relevant syntax:
   s, ok := val.(string)     // assert val holds a string
   if ok { fmt.println(s) }

 The assertion uses dot-parentheses `.(Type)`, NOT a function-style call
 `val(string)`. The broken code uses the wrong syntax.

 Level: Intermediate

 @author fidzr
*/

package main

import "core:fmt"

Value :: union {
	int,
	string,
}

main :: proc() {
	val: Value = "Odinsons"

	// We want to assert that 'val' contains a string.
	// In Odin, type assertions use a special dot-parentheses syntax.
	// What is wrong with how we assert this below?
	s, ok := val(string)

	if ok {
		fmt.println("String value is:", s)
	} else {
		fmt.println("Not a string!")
	}
}
