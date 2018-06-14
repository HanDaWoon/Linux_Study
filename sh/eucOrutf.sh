#!/bin/bash

mkdir utf euc

for f in input/*
do
  if [ "`file -bi $f`" = "text/plain; charset=iso-8859-1" ]
  then
    mv $f euc/
  elif [ "`file -bi $f`" = "text/plain; charset=utf-8" ]
  then
    mv $f utf/
  else
    echo "error: $f"
  fi
done

echo "complete"
