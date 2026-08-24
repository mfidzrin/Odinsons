package main

import "core:fmt"

main :: proc() {
    fmt.println("Counting to 3 (inclusive):")
    for i in 1..3 { // Something is missing here!
        fmt.println(i)
    }
}
