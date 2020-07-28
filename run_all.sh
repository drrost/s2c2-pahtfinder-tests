#!/bin/bash
#
# Created by Rostyslav Druzhchenko on 28.07.2020.
#
# NAME
#     run_all -- Runs all the available test runs.
#
# SYNOPSIS
#     ./run_all.sh [trXX]
#
# DESCRIPTION
#    Runs all available test runs recursively.
#
#    trXX - a specific test run. If this there is no this option there, runs
#           all the available test runs.
#

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
source ./scripts/test_runners.sh

TEST_RUNS=$(ls -d $PWD/tests/tr*)
print_title "Run all the tests"
echo

for RUN in $TEST_RUNS; do
  if [[ $(basename $RUN) == $1* ]]; then
    run_test_run $RUN
  fi
done

exit

# ================================== CLEAN ====================================

rm -f $BIN_NAME $LIB_INC_NAME
