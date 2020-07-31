#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="error: file islands does not exist$"
RES="$(./$1 islands 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
