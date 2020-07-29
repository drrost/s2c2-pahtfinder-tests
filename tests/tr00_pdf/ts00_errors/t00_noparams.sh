#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - No params
EXP="usage: ..$"
RES="$(./$1 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

EXP="usage$"
RES="$(./$1 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
