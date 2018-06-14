IFS=","

while read name score
do
  ((sum_all = sum_all + score))
  ((sum_stud = sum_stud + 1))
  case $score in
    100|9?)
      ((score_A = score_A + 1))
      ;;
    8?)
      ((score_B = score_B + 1))
      ;;
    7?)
      ((score_C = score_C + 1))
      ;;
    6?)
      ((score_D = score_D + 1))
      ;;
  esac
done < $1

((avg = sum_all / sum_stud))
echo "학생수: $sum_stud명, 평균점수: $avg"
echo "A: $score_A명, B: $score_B명, C: $score_C명, D: $score_D명"
