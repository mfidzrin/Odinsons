/*
 Odin does NOT support implicit procedure overloading. To expose several
 implementations under one name you use explicit overloading with `proc{}`.

 Relevant syntax:
   print_int   :: proc(val: int)    { ... }
   print_string :: proc(val: string) { ... }
   print_val   :: proc{ print_int, print_string }   // overload group

 You cannot declare two procedures with the same name; give each a unique name
 and group them under the desired identifier with `proc{ ... }`.

 Level: Intermediate

 @author fidzr
*/

package main

import "core:fmt"

// In Odin, implicit procedure overloading is prohibited.
// We cannot declare two procedures with the exact same name.
// How do we explicitly overload these so they can both be called as 'print_val'?

print_val :: proc(val: int) {
	fmt.println("Integer:", val)
}

print_val :: proc(val: string) {
	fmt.println("String:", val)
}

main :: proc() {
	print_val(42)
	print_val("Allfather")
}
