#!/bin/bash

source ../../../lib/asserts.sh

EXP="$(cat -e example2_exp)"
RES="$(./$1 example2 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

OUT_DIR="t01_out"
mkdir -p $OUT_DIR
echo "$EXP" > $OUT_DIR/exp_2
echo "$RES" > $OUT_DIR/res_2

run_leaks_check $1 example2

exit $TEST_FAILED
