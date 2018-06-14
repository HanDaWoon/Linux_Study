# ~/Documents/sh/readRepeat.sh tFile

IFS=","
while read div dep name natid ksid
do
  echo "$name $ksid" >> outFile
done < $1
