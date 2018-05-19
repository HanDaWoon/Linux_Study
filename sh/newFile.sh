# ~/Documents/sh/newFile.sh

tmp=`echo $0`

for f in *
do
  if [ $f -nt $tmp ]
  then
    tmp=$f
  fi
done

echo "The newest file is $tmp"
