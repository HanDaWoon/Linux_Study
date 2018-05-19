# ~/Documents/sh/newFile3.sh a b c

if [ $1 -nt $2 ]
then
  if [ $1 -nt $3 ]
  then
    echo "The newest file is $1"
  else
    echo "The newest file is $3"
  fi
fi

if [ $2 -nt $3 ]
then
  echo "THe newest file is $2"
else
  echo "The newest file is $3"
fi
