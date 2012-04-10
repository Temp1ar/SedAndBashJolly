#!/bin/bash

if [ "$#" -lt 2 ]; then
	echo "Not enough parameters, please pass 2 arguments: n, m for 
	      proper work. Usage ./name n m."
else
	n=$1
	m=$2
	str="cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${m} | head -n ${n}"
	echo $str
	#echo `${str}`
fi
