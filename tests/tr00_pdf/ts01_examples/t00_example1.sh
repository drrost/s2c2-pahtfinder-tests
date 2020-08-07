#!/bin/bash

source ../../../lib/asserts.sh

EXP="$(cat -e example1_exp)"
RES="$(./$1 example1 | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

OUT_DIR="t00_out"
mkdir -p $OUT_DIR
echo "$EXP" > $OUT_DIR/exp_2
echo "$RES" > $OUT_DIR/res_2

run_leaks_check $1 example1

exit $TEST_FAILED
