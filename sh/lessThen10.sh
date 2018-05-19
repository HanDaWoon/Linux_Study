# ~/Documents/sh/lessThen10.sh

for f in *
do
  wc $f > tmp
  read lines words bytes < tmp
  if [ $lines -le 10 ]
  then
    echo $f
  fi
done
rm tmp
