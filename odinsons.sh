#!/usr/bin/env bash
# Odinsons verifier — checks each exercise: must compile AND produce the expected output.
# Usage: ./odinsons.sh          (verify from first incomplete)
#        ./odinsons.sh <name>   (check a specific exercise, e.g. 003 or 003_assignment)
set -u

cd "$(dirname "$0")"
PROGRESS=".progress"
touch "$PROGRESS"

# name | expected output (newline-separated, use \n in the string)
exercises=(
    "001_hellope|Hellope World!"
    "002_variables|*" # "*" = any output OK (uninitialized memory is nondeterministic)
    "003_assignment|Hello\nHellope"
    "004_constants|3.14159"
    "005_if_statement|You passed!"
    "006_for_loop|0\n1\n2\n3\n4"
    "007_ranges|Counting to 3 (inclusive):\n1\n2\n3"
    "008_switch|Good!\nKeep it up!"
    "009_defer|10"
    "010_procedures|Result: 30"
)

is_done() { grep -qx "$1" "$PROGRESS"; }
mark_done() { echo "$1" >> "$PROGRESS"; }

check_one() {
    local ex="$1" expected="$2" actual
    echo -e "\n\033[1m=== $ex ===\033[0m"
    if ! odin build "exercises/$ex" -o:none -out:/tmp/odinsons_bin 2>&1; then
        echo -e "\033[31m✘ $ex does not compile yet. Fix it and run ./odinsons.sh again.\033[0m"
        return 1
    fi
    actual="$(/tmp/odinsons_bin)"; rc=$?
    rm -f /tmp/odinsons_bin
    # Show the program output in its own section
    echo -e "\n\033[1m--- Program output ---\033[0m"
    if [ -n "$actual" ]; then
        printf '%s\n' "$actual"
    else
        echo "(no output)"
    fi
    echo -e "\033[1m----------------------\033[0m"
    if [ $rc -ne 0 ]; then
        echo -e "\033[31m✘ $ex exited with code $rc. Fix it and run ./odinsons.sh again.\033[0m"
        return 1
    fi
    if [ "$expected" != "*" ] && [ "$actual" != "$(printf '%b' "$expected")" ]; then
        echo -e "\033[31m✘ $ex ran but the output is wrong:\033[0m"
        diff <(printf '%b' "$expected") <(printf '%s\n' "$actual") && true
        echo -e "\033[31mFix the logic and run ./odinsons.sh again.\033[0m"
        return 1
    fi
    mark_done "$ex"
    echo -e "\n\033[32m✔ $ex complete!\033[0m \033[2m(output matched — nice work)\033[0m"
    return 0
}

if [ $# -ge 1 ]; then
    for entry in "${exercises[@]}"; do
        ex="${entry%%|*}"
        case "$ex" in *"$1"*) check_one "$ex" "${entry#*|}"; exit $?;; esac
    done
    echo "Unknown exercise: $1"; exit 1
fi

for entry in "${exercises[@]}"; do
    ex="${entry%%|*}"
    is_done "$ex" && continue
    check_one "$ex" "${entry#*|}" || exit 1
done

echo -e "\n\033[32m🎉 All exercises complete! Batch 1 done.\033[0m"
