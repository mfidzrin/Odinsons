package main

import "core:fmt"

main :: proc() {
    PI :: 3.14159

    // Can we re-assign a constant?
    PI = 3.14

    fmt.println(PI)
}
