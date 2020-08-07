#!/bin/bash

source ../../../lib/asserts.sh

EXP="$(cat -e romb_exp)"
RES="$(./$1 romb | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

OUT_DIR="out_t00"
mkdir -p $OUT_DIR
echo "$EXP" > $OUT_DIR/exp_1
echo "$RES" > $OUT_DIR/res_1

run_leaks_check $1 romb

exit $TEST_FAILED
