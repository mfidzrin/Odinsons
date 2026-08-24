package main

import "core:fmt"

add :: func(a, b: int) -> int { // Is 'func' the correct keyword?
    return a + b
}

main :: proc() {
    result := add(10, 20)
    fmt.println("Result:", result)
}
