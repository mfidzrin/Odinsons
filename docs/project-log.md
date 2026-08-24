# Odinsons — Project Log

Last updated: 2026-08-24 (Batch 1 scaffolded & verified)

## Environment

- Odin: `dev-2026-08:8412dc37a` (`/usr/bin/odin`)
- git 2.55.0, bash verifier
- Repo: `/home/fidzr/Workspace/Odinsons`

## Completed

### Repo scaffold (commit `a86b3c3`)
```
exercises/001_hellope … 010_procedures/main.odin   # one package dir per exercise
docs/batch-1.md        # exercise write-ups + hints
odinsons.sh            # verifier: compile check + expected-output check, .progress tracking
README.md, LICENSE (MIT), .gitignore
```

### Batch 1 exercises (10) — all verified to fail as intended against the real compiler
| # | Exercise | Bug |
|---|----------|-----|
| 001 | hellope | `Main` instead of `main` entry point |
| 002 | variables | `--` instead of `---` |
| 003 | assignment | redeclaration with `:=` instead of `=` |
| 004 | constants | assigning to a constant |
| 005 | if_statement | missing braces |
| 006 | for_loop | parentheses around loop header |
| 007 | ranges | `1..3` instead of `1..=3` |
| 008 | switch | missing `fallthrough` in case 'B' (logical bug, output-checked) |
| 009 | defer | `defer y := 20` — compiler confirms "You cannot defer a declaration" |
| 010 | procedures | `func` instead of `proc` |

### Design notes / gotchas discovered
- This Odin dev build **accepts unquoted** `import core:fmt`, so ex 001's original import bug didn't work — swapped to entry-point casing bug.
- Verifier supports expected-output checking; `002_variables` uses `*` = any output OK (prints uninitialized memory).
- Naming convention: `NNN_topic_name/main.odin`.
- Usage: `./odinsons.sh` (sequential) or `./odinsons.sh 008` (single). Progress in `.progress` (gitignored).

## Next steps

1. **Odin-native CLI runner** — rewrite `odinsons.sh` as an Odin program under `src/` (`odin run src/ -- verify|hint <n>|next`), like rustlings' binary. Track progress in a TOML/JSON state file.
2. **info.toml / exercise metadata** — per-exercise hint text and expected output moved out of the shell script into a data file.
3. **GitHub Actions CI** — build all exercises on push (install Odin from source or a release tarball); add a job that verifies each *fixed* solution compiles.
4. **Batch 2 topics** — arrays/slices, dynamic arrays, strings & runes, structs, enums, unions, maps, error handling (`or_return`, `maybe`), multiple returns, parametric polymorphism basics.
5. **Solutions branch** — keep fixed versions of every exercise on a `solutions/` branch or dir so CI can test them.
6. **Publishing** — push to GitHub/GitLab, pick final name (currently "Odinsons"; docs sometimes say "Odinlings" — unify), add install section to README.
7. Nice-to-haves: `hint` command, colored progress list (`odinsons.sh list`), exercise numbering gaps reserved per batch.
