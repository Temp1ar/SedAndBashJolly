#!/bin/bash

if [ "$#" -gt 0 ] ; then
string=$1
i=0
len=${#string}
mid=$(($len/2))

while [ $i -lt $mid ]
  do
    if [ "${string:$i:1}" != "${string: -$(($i+1)):1}" ]
      then
      echo "\"$string\" is not a palindrome"
      exit
    fi
    i=$(($i+1))
done
echo "\"$string\" - palindrome"

else 
	echo "Not enough parametres."
fi

# reverse!!!