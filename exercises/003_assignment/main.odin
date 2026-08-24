package main

import "core:fmt"

main :: proc() {
    message := "Hello"
    fmt.println(message)

    // We want to change the message to "Hellope"
    message := "Hellope"
    fmt.println(message)
}
