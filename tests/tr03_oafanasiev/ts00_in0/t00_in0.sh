#!/bin/bash

source ../../../lib/asserts.sh

EXP="$(cat -e out0.txt)"
RES="$(./$1 in0.txt | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

OUT_DIR="out_t00"
mkdir -p $OUT_DIR
echo "$EXP" > $OUT_DIR/exp_2
echo "$RES" > $OUT_DIR/res_2

run_leaks_check $1 in0.txt

exit $TEST_FAILED
