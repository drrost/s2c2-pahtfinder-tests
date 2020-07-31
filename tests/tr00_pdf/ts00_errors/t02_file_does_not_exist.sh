#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="error: file [absent_file] does not exist$"
RES="$(./$1 absent_file 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
