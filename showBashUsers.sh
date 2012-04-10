#!/bin/bash

if [ "$1" != -b ]; then
	while read line
	do
		echo ${line%%:*}
	done < "/etc/passwd"
elif [ "$1" == -b ]; then
	while read line
	do
		if [ "${line##*:}" == /bin/bash ] 
		then
			echo ${line%%:*}
		fi
	done < "/etc/passwd"
fi
