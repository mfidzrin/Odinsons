package main

import "core:fmt"

main :: proc() {
    x := 10
    defer y := 20 // Can you defer a declaration?
    fmt.println(x)
}
