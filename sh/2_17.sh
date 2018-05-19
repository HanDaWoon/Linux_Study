i=10; j=20; [ "$i" -eq "$j" ]; echo $?
[ "$i" -lt "$j" ]; echo $?
str1=boy; str2=girl; [ "$str1" == "$str2" ]; echo $?
[[ "$str1" < "$str2" ]]; echo $?
[ 10 -le 20 -o 20 -le 10 ] ; echo $?
