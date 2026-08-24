# Odinsons 🛡️

Learn the [Odin](https://odin-lang.org/) programming language by fixing tiny broken programs — inspired by [rustlings](https://github.com/rust-lang/rustlings) and [ziglings](https://codeberg.org/ziglings/exercises).

Each exercise under `exercises/` is a small Odin program that **does not compile** (or misbehaves). Find the bug, fix it, and learn the concept behind it.

## Requirements

- The Odin compiler: `odin version` must work. See [odin-lang.org](https://odin-lang.org/download/).
- Bash (Linux/macOS/WSL).

## Getting started

```bash
./odinsons.sh
```

The verifier checks exercises in order and stops at the first one that fails. Fix it (hints are in `docs/batch-1.md`), then run again.

Check a specific exercise:

```bash
./odinsons.sh 003
```

Progress is tracked in `.progress` (gitignored).

## Exercises — Batch 1

| # | Exercise | Concept |
|---|----------|---------|
| 001 | hellope | Imports & Hello World |
| 002 | variables | Declarations & zero values |
| 003 | assignment | `:=` vs `=` |
| 004 | constants | Compile-time constants |
| 005 | if_statement | Conditionals |
| 006 | for_loop | Odin's only loop |
| 007 | ranges | `..=` and `..<` |
| 008 | switch | Switch & fallthrough |
| 009 | defer | Deferred execution |
| 010 | procedures | Defining procedures |

## Exercises — Batch 2

| # | Exercise | Concept |
|---|----------|---------|
| 011 | arrays | Fixed-size arrays & indexing |
| 012 | slices | Slices vs arrays, half-open interval |
| 013 | dynamic_arrays | `[dynamic]T`, `append(&x)` |
| 014 | maps | Map struct-field update constraint |
| 015 | structs | Positional struct literals |
| 016 | enums | Implicit selector `.Red` & inference |
| 017 | unions | Type assertions `val.(Type)` |
| 018 | pointers | Pascal-style `^` and `p^` |
| 019 | using_structs | `using` embedded fields |
| 020 | explicit_overloading | Explicit `proc{}` overloading |

## License

MIT
