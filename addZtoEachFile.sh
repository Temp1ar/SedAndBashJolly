directory=$PWD
for file in $directory/*
do
filename=$(basename "$file")
ext=${filename##*.}
prefix=${file%.${ext}}
mv $file ${prefix}z.$ext
done
