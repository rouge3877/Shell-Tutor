#!/usr/bin/bash

EXECUTABLE=$1

count=0
while true; do
    bash $EXECUTABLE 2>> ./error.log 1>> ./output.log
    if [ $? -eq 0 ]; then
	count=$((count+1))
    else
        echo "Error count: $count"
        break
    fi
done

