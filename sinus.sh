#!/bin/bash

if [ "$#" -gt 0 ] ; then
	echo "s($1)" | bc -l
else
	echo "Not enough parametres."
fi
