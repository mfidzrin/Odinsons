# Odinlings: Learn Odin by Fixing Tiny Broken Programs (Batch 1)

Welcome to Odinlings! This is the first batch of 10 exercises designed to teach you the fundamentals of the Odin programming language. 

In each exercise, you will find a small Odin program that is slightly broken and will not compile. Your job is to identify the bug, fix it, and understand the core concept behind it.

To compile and run any of these files on your local machine, save the corrected code as a `.odin` file and run:
```bash
odin run <filename>.odin -file
```

---

## Exercise 1: Hellope World (`001_hellope.odin`)
Odin programs always start in the `main` package, at a procedure named exactly `main`.

### Broken Code
```odin
package main

import "core:fmt"

Main :: proc() { // Something is wrong here!
    fmt.println("Hellope World!")
}
```

### Hint
The compiler can't find your program's entry point! In Odin, identifiers are case-sensitive: the entry point must be `main`, not `Main`.

---

## Exercise 2: Declarations and Defaults (`002_variables.odin`)
Variables in Odin are strongly and distinctly typed. They are automatically initialized to their zero value (like `0` for integers, `false` for booleans, and `""` for strings) unless we explicitly specify otherwise.

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    // Odin has a clean syntax for declaring variables.
    // Try to declare an integer 'x' and a string 'y'.
    x: int
    y: string

    // Wait, let's make a variable that uses uninitialized memory.
    // In Odin, we use the '---' symbol for this. But something is wrong below:
    z: int = --

    fmt.println(x, y, z)
}
```

### Hint
In Odin, uninitialized memory is represented by exactly three hyphens: `---`. Look at how `z` is declared!

---

## Exercise 3: Declaring vs Assigning (`003_assignment.odin`)
In Odin, `:=` is used to declare and initialize a new variable (type inference is applied if no type is written), while `=` is the assignment operator used to change the value of an existing variable. 

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    message := "Hello"
    fmt.println(message)

    // We want to change the message to "Hellope"
    message := "Hellope"
    fmt.println(message)
}
```

### Hint
Redeclarations within the same scope are prohibited in Odin. If `message` is already declared, we should use the assignment operator `=` instead of the declaration operator `:=`.

---

## Exercise 4: Constants (`004_constants.odin`)
Constants are compile-time entities whose values cannot change. They are declared using double colons `::`.

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    PI :: 3.14159

    // Can we re-assign a constant?
    PI = 3.14

    fmt.println(PI)
}
```

### Hint
Constants are immutable. Once declared with `::`, they cannot be assigned a new value using the `=` operator. If you need a value to be mutable, it must be declared as a variable instead!

---

## Exercise 5: Control Flow - If (`005_if_statement.odin`)
Conditionals in Odin are clean. Unlike C, C++, or Java, parentheses `()` are not required around the condition expression, but braces `{}` are always required for the block.

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    score := 85

    if (score >= 80) // Braces are required, parentheses are not!
        fmt.println("You passed!")
}
```

### Hint
Braces `{}` are mandatory in Odin's `if` statements, even for a single statement. Remove the parentheses and wrap the print statement in curly braces.

---

## Exercise 6: Loop It Up (`006_for_loop.odin`)
Odin has only one looping statement: the `for` loop. It acts as both a standard three-component loop, a range-based loop, and an infinite loop. Like `if`, parentheses are not used, but braces are required.

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    // A standard C-style loop: initialization; condition; post-statement
    for (i := 0; i < 5; i += 1) {
        fmt.println(i)
    }
}
```

### Hint
Remove the parentheses `()` surrounding the loop's three components. In Odin, they are syntactically incorrect.

---

## Exercise 7: Ranges (`007_ranges.odin`)
Range-based for loops are incredibly common in Odin. There are two range operators: `..=` (closed interval, inclusive of the upper limit) and `..<` (half-open interval, exclusive of the upper limit).

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    fmt.println("Counting to 3 (inclusive):")
    for i in 1..3 { // Something is missing here!
        fmt.println(i)
    }
}
```

### Hint
Odin doesn't use `..` by itself as a range operator. For an inclusive range, you must use `..=`. For an exclusive range, use `..<`.

---

## Exercise 8: Switches and Fallthrough (`008_switch.odin`)
Odin's `switch` statement is cleaner and safer than C's. By default, only the matched case is executed, and it automatically breaks. To fall through to the next case, you must explicitly use the `fallthrough` keyword.

### Broken Code
```odin
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
```

### Hint
If you want case `'B'` to fall through and execute case `'C'`'s code, add the `fallthrough` statement at the end of case `'B'`.

---

## Exercise 9: Delayed Cleanups (`009_defer.odin`)
The `defer` statement defers the execution of a statement until the end of the current scope. It is incredibly useful for resource management (like closing files or freeing memory).

### Broken Code
```odin
package main

import "core:fmt"

main :: proc() {
    x := 10
    
    defer fmt.println("Deferred value of x:", x) // What value of x will this print?
    
    x = 20
    fmt.println("Current value of x:", x)
}
```

### Hint
Wait! This code is not syntactically broken, but it is *logically* broken if we want to change `x` in a deferred block and expect it to change the final returned named variable or mutate variables. Let's change the exercise so there is a compilation error.
In Odin, `defer` cannot be used to modify a procedure's named return values since it runs after exit. Let's make an exercise demonstrating this constraint:

```odin
package main

import "core:fmt"

foo :: proc() -> (n: int) {
    defer {
        n = 456 // This won't compile or affect 'n' as expected if you assume it behaves like Go!
    }
    n = 123
    return
}

main :: proc() {
    fmt.println(foo())
}
```
Wait, let's write a simple syntax error for `defer` instead. For example, trying to defer a declaration or statement that is not allowed. In Odin, deferring a variable declaration `defer y := 10` is a compilation error! Let's do that!
```odin
package main

import "core:fmt"

main :: proc() {
    x := 10
    defer y := 20 // Can you defer a declaration?
    fmt.println(x)
}
```

### Hint
You can only defer statements or expressions that represent actions (like function calls, assignments, or blocks). Deferring a variable declaration is invalid. Remove the `defer` keyword before the declaration, or defer a print statement instead.

---

## Exercise 10: Procedures (`010_procedures.odin`)
In Odin, functions are called **procedures** and are declared using the `proc` keyword. Let's write a simple procedure to add two numbers.

### Broken Code
```odin
package main

import "core:fmt"

add :: func(a, b: int) -> int { // Is 'func' the correct keyword?
    return a + b
}

main :: proc() {
    result := add(10, 20)
    fmt.println("Result:", result)
}
```

### Hint
Odin doesn't use `func` or `fn` to define functions. It uses the `proc` keyword. Change `func` to `proc`.
