#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: invalid number of islands$"
RES="$(./$1 invalid2 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
