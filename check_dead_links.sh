#!/bin/bash

find . -name \*.md -exec markdown-link-check {} \; 2>/dev/null | egrep "[x]" > broken.txt

num_broken=`wc broken.txt --lines | cut -f 1 -d " "`

if [[ $num_broken > 0 ]]; then
  echo "Number of broken files: "$num_broken
  cat broken.txt
  rm broken.txt
  exit $num_broken
fi
rm broken.txt
