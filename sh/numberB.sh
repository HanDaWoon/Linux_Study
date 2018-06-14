tmp=0
IFS=","
while read name score
do
  if [ $score -ge 80 ] && [ $score -le 89 ]
  then
    echo "$name : $score"
    ((tmp = tmp + 1))
done < $1

echo "B 학점 총 학생수는 $tmp 명 입니다."
