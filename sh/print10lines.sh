#!/bin/bash

for f in $1*
do
  wc $f > tmp
  read lines words bytes < tmp
  if [ $lines -eq 10 ]
  then
    echo `basename $f`
  fi
done
rm tmp
