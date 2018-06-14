IFS=","
sum_all=0
sum_stud=0
avg=0
while read name score
do
  ((sum_all = sum_all + score))
  ((sum_stud = sum_stud + 1))
  if [ $score -ge 90 ]; then
    ((score_A = score_A + 1))
  elif [ $score -ge 80 ]; then
    ((score_B = score_B + 1))
  elif [ $score -ge 70 ]; then
    ((score_C = score_C + 1))
  elif [ $score -ge 60 ]; then
    ((score_D = score_D + 1))
  fi
done < $1

((avg = sum_all / sum_stud))
echo "학생수: $sum_stud명, 평균점수: $avg"
echo "A: $score_A명, B: $score_B명, C: $score_C명, D: $score_D명"
