#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="error: file [empty_file] is empty$"
RES="$(./$1 empty_file 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
