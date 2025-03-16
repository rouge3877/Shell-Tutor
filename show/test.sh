count=0

while true; do
    $1 > /dev/null 2>&1
    if [[ $? -eq 0 ]]; then
        count=$((count + 1))
        continue
    else
        break
    fi
done

echo "Count is: $count"
