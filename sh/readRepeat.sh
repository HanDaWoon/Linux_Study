# ~/Documents/sh/readRepeat.sh tFile

IFS=","
while read div dep name natid ksid
do
  echo "$name $ksid" >> outFile
done < $1
#
# if [ $# -ne 2 ]
# then
#   echo "Usage: $0 old_file_suffix new_file_shuffix"
#   exit 1
# fi
# for file in *.$1
# do
#   mv `basename $file $1`$2
# done
