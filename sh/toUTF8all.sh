#!/bin/bash

tmp='tmp.fixed'

for file in *
do
  if iconv -f EUC-KR "$file" -t UTF-8 > $tmp
  then
    echo "toUTF8: '$file'"
    cat $tmp > "$file"
  else
    echo "Failed to encoding: '$file'"
  fi
done
rm $tmp
