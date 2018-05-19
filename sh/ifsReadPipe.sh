# echo "123.abc" | ~/Documents/sh/ifsReadPipe.sh

IFS=","
read a b
echo $b $a
