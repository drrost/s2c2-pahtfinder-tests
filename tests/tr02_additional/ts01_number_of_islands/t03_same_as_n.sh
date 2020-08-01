#!/bin/bash

source ../../../lib/asserts.sh

EXP=""
RES="$(./$1 valid3 2>&1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
