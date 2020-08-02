#!/bin/bash

source ../../../lib/asserts.sh

EXP="usage: ./pathfinder [filename]$"
RES="$(./$1 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1

exit $TEST_FAILED
