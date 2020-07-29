#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - No params
EXP="usage: ./pathfinder [filename]$"
RES="$(./$1 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
