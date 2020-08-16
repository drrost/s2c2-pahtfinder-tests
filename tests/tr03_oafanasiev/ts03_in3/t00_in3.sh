#!/bin/bash

source ../../../lib/asserts.sh

IN=in3.txt
OUT=out3.txt

EXP="$(cat -e $OUT)"
RES="$(./$1 $IN | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

OUT_DIR="out_t00"
mkdir -p $OUT_DIR
echo "$EXP" > $OUT_DIR/exp_2
echo "$RES" > $OUT_DIR/res_2

run_leaks_check $1 $IN

exit $TEST_FAILED
