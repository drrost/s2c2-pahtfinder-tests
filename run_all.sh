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

function run_test_suit() {
  echo "Running a test suit: \""$1"\""
}

function run_test_run() {
    if [ "$#" -ne 1 ]; then
      echo "usage: run_test_run [test run full path]"
    fi

  echo "TEST RUN:" $(basename $1)
  print_delim
}

TEST_RUNS=$(ls -d $PWD/tests/tr*/)
print_title "Run all the tests"
for RUN in $TEST_RUNS; do
  run_test_run $RUN
done

exit

TEST_FOLDERS=$(ls -d tests/ts_*/)

# Run all the tests
for FOLDER in $TEST_FOLDERS; do
  run_test_suit $FOLDER
done

# ================================== CLEAN ====================================

rm -f $BIN_NAME $LIB_INC_NAME
