/*
 Maps associate keys with values: `map[Key]Value`. To keep performance
 predictable, Odin forbids directly assigning to a field of a struct stored
 as a map value (e.g. `m["Bob"].age = 31` is illegal).

 Relevant syntax (two valid workarounds):
   bob := m["Bob"]; bob.age = 31; m["Bob"] = bob   // copy, mutate, reinsert
   value, ok := &m["Bob"]                          // take a pointer to the slot
   if ok { value.age = 31 }

 You cannot mutate a map value in place through the indexing expression.

 Level: Intermediate

 @author fidzr
*/

package main

import "core:fmt"

Person :: struct {
	age: int,
}

main :: proc() {
	m := make(map[string]Person)
	defer delete(m)

	m["Bob"] = Person{age = 30}

	// In Odin, assigning directly to a struct field within a map value is prohibited.
	// Try to compile the line below. How should you do it instead?
	m["Bob"].age = 31

	fmt.println("Bob's age:", m["Bob"].age)
}
