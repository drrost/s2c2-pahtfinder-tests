#!/bin/bash

source ./scripts/helpers.sh

## Check mandatory files/folders exist
#MANDATORY_FILES="src/ inc/ inc/libmx.h Makefile"
#PATH_TO_SRC='../src/'
#./scripts/check_files_exist.sh $PATH_TO_SRC "$MANDATORY_FILES"
#
## Check if only available files/folders are in the project
#
## Check there are no unavailable functions used
#AVAILABLE_FUNCTIONS=(open write)

# ================================== BUILD ====================================
source ./scripts/build.sh
#build

# ================================== TEST =====================================

function run_test_suite() {
  echo "Test suite "$(basename $1)":"

  if [ -f "$1/t*" ]; then
    TEST_CASES=$(ls -d -f $1/t*)
    for CASE in $TEST_CASES; do
      echo "    "$(basename $CASE)
    done
  else
    echo "  There is no tests here"
  fi

  echo
}

function run_test_run() {
  if [ "$#" -ne 1 ]; then
    echo "usage: run_test_run [test run full path]"
  fi

  print_delim "="

  echo "TEST RUN:" $(basename $1)
  print_delim "-"
  echo

  TEST_SUITES=$(ls -d $1/ts*)
  for SUITE in $TEST_SUITES; do
    run_test_suite $SUITE
  done
  print_delim "="
  echo
}

TEST_RUNS=$(ls -d $PWD/tests/tr*)
print_title "Run all the tests"
echo

for RUN in $TEST_RUNS; do
  run_test_run $RUN
done

exit

# ================================== CLEAN ====================================

rm -f $BIN_NAME $LIB_INC_NAME
