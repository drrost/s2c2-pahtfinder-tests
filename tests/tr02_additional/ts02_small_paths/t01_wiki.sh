#!/bin/bash

source ../../../lib/asserts.sh

EXP="========================================$"
RES="$(./$1 wiki | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 wiki

exit $TEST_FAILED
