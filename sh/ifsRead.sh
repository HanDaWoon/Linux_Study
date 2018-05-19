# ~/Documents/sh/ifsRead

echo "123,abd" > tmp

IFS=","
read a b < tmp
echo $b $a
rm tmp
