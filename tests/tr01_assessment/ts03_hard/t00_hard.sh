#!/bin/bash

source ../../../lib/asserts.sh

NAME=hard

EXP="$(cat -e $NAME"_exp")"
RES="$(./$1 $NAME | cat -e)"
ASSERT_EQUAL "$EXP" "$RES"

OUT_DIR="out_t00"
mkdir -p $OUT_DIR
echo "$EXP" > $OUT_DIR/exp_2
echo "$RES" > $OUT_DIR/res_2

run_leaks_check $1 $NAME

exit $TEST_FAILED
