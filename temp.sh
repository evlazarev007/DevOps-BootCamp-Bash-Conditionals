#!/bin/bash

input="$1"
output=0
len=${#input}

	char="${input:$len-1:1}"
	if [[ $char = "C" ]]; then
		t=${input/C/}
		output=$(($t+273))K
	elif [[ $char = "K" ]]; then
		t=${input/K/}
		output=$(($t-273))C
	fi


echo "$output"
