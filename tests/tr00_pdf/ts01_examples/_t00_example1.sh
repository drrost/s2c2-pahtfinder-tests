#!/bin/bash

source ../../../lib/asserts.sh

EXP="========================================$"
RES="$(./$1 example1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

exit $TEST_FAILED
