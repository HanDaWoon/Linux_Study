#!/bin/bash

tmp='tmp.fixed'

for f in *
do
  if iconv -f UTF-8 $f -t EUC-KR > $tmp
  then
    echo "toUTF8: '$file'"
    cat $tmp > "$file"
  else
    echo "Failed to encoding: '$file'"
  fi
done
rm $tmp
