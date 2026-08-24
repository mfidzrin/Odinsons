/*
 Odin uses the keyword `proc` (short for procedure) instead of `func`, `fn`,
 or `method` to define functions.

 Every runnable program must declare an entry point named exactly `main`.
 The syntax for the main procedure is:

     main :: proc() {
         ...
     }

 Odin procedures are public by default. The compiler looks for a `main`
 procedure inside the `main` package to know where execution begins.

 Level: Beginner

 @author fidzr
*/

package main

import "core:fmt"

Main :: proc() { // Something is wrong here!
    fmt.println("Hellope World!")
}
