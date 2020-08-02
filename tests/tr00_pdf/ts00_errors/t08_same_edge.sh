#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: duplicate bridges$"
RES="$(./$1 invalid5 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 invalid5

exit $TEST_FAILED
