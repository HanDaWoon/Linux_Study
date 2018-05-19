# ~/Documents/sh/cpFiles.sh

mkdir newDir

for f in *
do
  if [ -f $f ]
  then
    cp $f newDir
  fi
done
