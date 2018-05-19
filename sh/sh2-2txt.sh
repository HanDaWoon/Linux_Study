mkdir test;
cd test
touch a b c d e f

for file in *;
	do mv $file $file.txt;
done
