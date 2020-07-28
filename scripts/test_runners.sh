#!/bin/bash
#
# Created by Rostyslav Druzhchenko on 28.07.2020.
#

function run_test_suite() {
  echo "Test suite "$(basename $1)":"

  if [ -f "$1/t*" ]; then
    TEST_CASES=$(ls -d -f $1/t*)
    for CASE in $TEST_CASES; do
      echo "    "$(basename $CASE)
    done
  else
    echo "  There are no tests here"
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
