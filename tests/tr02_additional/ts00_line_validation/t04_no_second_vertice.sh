#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="error: line 3 is not valid$"
RES="$(./$1 invalid4 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
