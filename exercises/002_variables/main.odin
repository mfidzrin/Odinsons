package main

import "core:fmt"

main :: proc() {
    // Odin has a clean syntax for declaring variables.
    x: int
    y: string

    // Wait, let's make a variable that uses uninitialized memory.
    // In Odin, we use the '---' symbol for this. But something is wrong below:
    z: int = --

    fmt.println(x, y, z)
}
