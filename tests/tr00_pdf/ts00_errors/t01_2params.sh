#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="usage: ./pathfinder [filename]$"
RES="$(./$1 a b 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 a b

exit $TEST_FAILED
