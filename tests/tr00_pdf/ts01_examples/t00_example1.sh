#!/bin/bash

source ../../../lib/asserts.sh

EXP="========================================$"
RES="$(./$1 example1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 example1

exit $TEST_FAILED
