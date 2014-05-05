#!/bin/dash

# Create a test directory which is
# automatically deleted after the shell
# exits.

test -n "$DEBUG" && set -x

dir="${TMP:-/tmp}/${USER}/${0##*/}-$$"

trap "rm -rf '$dir'" 0 INT TERM HUP QUIT
mkdir -p "$dir"
cd "$dir"

test $# -eq 0 && set -- "$SHELL"
"$@"

