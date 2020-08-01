#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: line 2 is not valid$"
RES="$(./$1 invalid5 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
