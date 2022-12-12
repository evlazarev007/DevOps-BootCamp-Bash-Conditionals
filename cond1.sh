#!/bin/bash

IFS=',' read -r -a array <<< "$1"



sum=0

for ((i=0;i<${#array[@]};i++)); do
	a=$((${array[i]}%2))
	if [[ $a -eq 0 ]]; then
		sum=$(($sum+${array[i]}))
	fi
done

echo "$sum"
