#!/bin/bash
# Naglo @naideno@ v google

     
if [ "$#" -gt 0 ]; then 
MINIDX=2       
Fibonacci ()
{
  idx=$1   
  if [ "$idx" -lt "$MINIDX" ]
  then
    echo "$idx" 
  else
    (( --idx )) 
    term1=$( Fibonacci $idx ) 

    (( --idx )) 
    term2=$( Fibonacci $idx ) 

    echo $(( term1 + term2 ))
  fi
}

FIBO=$(Fibonacci $1)
echo "$FIBO"

else 
	echo "Ne peredali N"
fi
