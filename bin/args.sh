#!/bin/sh

echo "arg count: $#"

i=0

for a; do
  i=$((i+1))
  printf '%5d: "%s"\n' $i "$a"
done

