#!/bin/bash

if [ "$#" -gt 0 ]; then
	N=$1
	i=1
	last=1
	prelast=0
	answer=1
	while [ "$i" -lt "$N" ] 
	do
		let answer=last+prelast
		numbers[i+1]="$answer"
		let prelast=last
		let last=answer
		let i=i+1
	done

	echo "$answer"
	#echo "The 8th fibonacci number is ${numbers[8]} (from array)"
else
	echo "Please enter the N"
	
fi
