#!/bin/bash

input="$1"
output=""
numbers=0
symbols=0
letters=0

for ((i=0;i<=${#input};i++)); do
	char="${input:$i:1}"
	if [[ $char =~ [0-9] ]]; then
		numbers=$(($numbers+1))
	elif [[ $char =~ [A-Za-z] ]]; then
		letters=$(($letters+1))
	elif [[  $char =~ [^A-Za-z0-9\ ] ]]; then
		symbols=$(($symbols+1))
	fi
done

echo "Nubers: $numbers Symbols: $symbols Letters: $letters"
