#!/bin/bash

if [ "$#" -gt 1 ] ; then 
	find $1 -type f -mtime $2
else 
	echo "Not enough parametres."
fi
