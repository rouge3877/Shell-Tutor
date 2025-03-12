sum=0

for i in $(seq 1 100); do
	sum=$(($sum + $(bash ./rand.sh | awk '{print $4}')))
done

echo "Average: $(($sum / 100)) ns"
