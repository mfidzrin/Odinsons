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
