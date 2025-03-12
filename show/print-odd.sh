count=1
while [ $count -lt 40 ]; do
	if test $((count % 2)) -eq 1; then
		echo $count
	fi
	count=$((count + 1))
done
