#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="error: invalid number of islands$"
RES="$(./$1 invalid3 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 invalid3

exit $TEST_FAILED
