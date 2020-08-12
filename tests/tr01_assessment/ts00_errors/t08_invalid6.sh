#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: sum of bridges lengths is too big$"
RES="$(./$1 invalid6 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 invalid6

exit $TEST_FAILED
