#!/bin/bash

directory=$PWD
ALLOK=1
for file in $directory/*.c
do
filename=$(basename "$file")
ext=${filename##*.}
prefix=${filename%.${ext}}
	if [ ! -f ${prefix}.h ] ; then
		echo "Not found header for ${filename}!!!"
		ALLOK=0
	fi
done

if [ "$ALLOK" -eq 0 ] ; then
	echo "All good"
else 
	echo "Very sad"
fi
