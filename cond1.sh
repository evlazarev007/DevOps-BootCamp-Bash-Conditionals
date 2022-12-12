#!/bin/bash

input="$1"
sum=0

for ((i=0;i<=${#input};i++)); do
	char="${input:$i:1}"
	if [[ $char =~ [0-9] ]]; then
		a=$(($char%2))
		if [[ $a -eq 0 ]]; then
			sum=$(($sum+$char))
		fi
	fi

done

echo "$sum"
