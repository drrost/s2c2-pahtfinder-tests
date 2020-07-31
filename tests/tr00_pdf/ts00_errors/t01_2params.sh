#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="usage: ./pathfinder [filename]$"
RES="$(./$1 a b 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
