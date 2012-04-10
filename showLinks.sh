#!/bin/bash

PWD=$(pwd)

for file in ${PWD}\*
do
  if [ -h $file ]; then
    echo $file
  fi
done
