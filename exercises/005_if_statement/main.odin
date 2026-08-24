package main

import "core:fmt"

main :: proc() {
    score := 85

    if (score >= 80) // Braces are required, parentheses are not!
        fmt.println("You passed!")
    // in case of having just one action after checking, you can use `do` instead of `{}`
}
