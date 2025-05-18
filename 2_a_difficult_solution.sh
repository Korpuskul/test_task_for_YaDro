#!/bin/bash
# Использование: ./search.sh config.txt path

file=$1
word=$2

if [[ -z "$file" || -z "$word" ]]; then
  echo "Usage: $0 <filename> <word>"
  exit 1
fi

grep "$word" "$file"
