#!/bin/bash

source ../../../lib/asserts.sh

# Test 01-1 - Two params
EXP="error: file data_file does not exist$"
RES="$(./$1 data_file 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 data_file

exit $TEST_FAILED
