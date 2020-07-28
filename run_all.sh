#!/bin/bash

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

# Run the Makefile
ROOT_DIR=$(echo $PWD)
BIN_NAME="pathfinder"

cd ../src/
make
mv ./$BIN_NAME $ROOT_DIR/
make clean
cd $ROOT_DIR

# ================================== TEST =====================================
source ./scripts/helpers.sh

function run_test_suit() {
  echo "Running test suit: \""$1"\""
}

TEST_RUNS=$(ls -d tests/tr*/)
print_title "Run all the tests"
for RUN in $TEST_RUNS; do
  echo "TEST RUN:" $(basename $RUN)
  print_delim
done

exit

TEST_FOLDERS=$(ls -d tests/ts_*/)

# Run all the tests
for FOLDER in $TEST_FOLDERS; do
  run_test_suit $FOLDER
done

# ================================== CLEAN ====================================

rm -f $BIN_NAME $LIB_INC_NAME
