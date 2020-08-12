#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: file empty_file is empty$"
RES="$(./$1 empty_file 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

run_leaks_check $1 empty_file

exit $TEST_FAILED
