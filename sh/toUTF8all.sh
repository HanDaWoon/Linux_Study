#!/bin/bash

tmp='tmp.fixed'

for f in *
do
  if iconv -f EUC-KR -t UTF-8 $f > $tmp
  then
    echo "toUTF8: '$f'"
    cat $tmp > "$f"
  else
    echo "Failed to encoding: '$f'"
  fi
done
rm $tmp
