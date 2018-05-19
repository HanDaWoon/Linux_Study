# ~/Documents/sh/allWords.sh

sum=0
for f in *
do
  wc $f > tmp
  read lines words bytes < tmp
  if [ $lines -lt 10 ]
  then
    sum=`expr $sum + $words`
  fi
done
rm tmp
echo $sum
