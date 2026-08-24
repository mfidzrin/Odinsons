package main

import "core:fmt"

main :: proc() {
    // A standard C-style loop: initialization; condition; post-statement
    for (i := 0; i < 5; i += 1) {
        fmt.println(i)
    }
}
