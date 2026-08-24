package main

import "core:fmt"

main :: proc() {
    grade := 'B'

    switch grade {
    case 'A':
        fmt.println("Excellent!")
    case 'B':
        fmt.println("Good!")
        // We want 'B' to also print "Keep it up!" which is in case 'C'
    case 'C':
        fmt.println("Keep it up!")
    case:
        fmt.println("Passed!")
    }
}
