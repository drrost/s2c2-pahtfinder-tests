#!/bin/bash

source ../../../lib/asserts.sh

EXP="error: duplicate bridges$"
RES="$(./$1 invalid5 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
