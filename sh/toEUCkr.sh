tmp='tmp.fixed'

for file in *
do
	if iconv -f UTF-8 -t EUC-KR "$file" > $tmp
	then
		echo "toEUC-KR: '$file'"
		cat $tmp > "$file"
	else
		echo "Failed to encoding: '$file'"
	fi
done

rm $tmp

echo "toEUC-KR complete"
