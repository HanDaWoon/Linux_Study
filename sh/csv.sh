IFS=","
temp=0
avertmp=0
tmp=""
cnt=0
while read name korean english math
do
  if [ $cnt -eq 0 ]
  then
    cnt=`expr $cnt + 1`
    continue
  fi
  sum=`expr $korean + $english + $math`
  average=`expr $sum / 3`
  if [ $avertmp -le $average ]
  then
    avertmp=$average
    echo $name","$average > tmp
  fi
  if [ $average -ge 80 ] && [ $average -le 89 ]
  then
    ((temp = temp + 1))
  fi
done < $1
read tname tavg < tmp
echo "가장 높은 평균 점수의 학생은 $tname 이고, 점수는 $tavg 입니다."
echo "B 학점 학생 수는 총 $temp 명 입니다."

rm tmp
