#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: line 4 is not valid$"
RES="$(./$1 invalid4 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 invalid4

exit $TEST_FAILED
