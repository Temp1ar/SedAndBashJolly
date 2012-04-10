OPERATION=docToPdf
SUFFIX=pdf
directory=$PWD
for file in $directory/*
do
filename=$(basename "$file")
ext=${filename##*.}
prefix=${filename%.${ext}}
$OPERATION $file > "$prefix.$SUFFIX"
rm -f $file
done
