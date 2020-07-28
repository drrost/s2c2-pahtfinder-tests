#!/bin/bash

function echo_n() {
  if [ "$#" -ne 2 ]; then
    echo "usage: ./echo_n [symbol] [count]"
    return 1
  fi
  for ((i = 0; i < $2; i++)); do
    printf $1
  done
}

function print_delim() {
  echo_n '-' 80
  printf '\n'
}

function print_title() {
  # Check parameters
  if [ "$#" -ne 1 ]; then
    echo "usage: ./print_title [title]"
    return 1
  fi

  # Calculate lengths
  s_len=${#1}
  width=80
  delim_len=$(( ($width - $s_len) / 2 - 1 ))

  # Print title
  delim_s='='
  echo_n $delim_s $delim_len
  printf " $1 "
  echo_n $delim_s $delim_len
  if [ $(( $s_len % 2 )) -eq 1 ]; then
    printf $delim_s
  fi
  printf '\n'
}