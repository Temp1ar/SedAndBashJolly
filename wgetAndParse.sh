#!/bin/bash

TEMP=temp
URL='http://logic.pdmi.ras.ru/sewiki/index.php/%D0%9C%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D1%8B_%D0%BA%D1%83%D1%80%D1%81%D0%B0_%22Unix_%D0%B8_%D0%A1%D0%BA%D1%80%D0%B8%D0%BF%D1%82%D0%BE%D0%B2%D1%8B%D0%B5_%D1%8F%D0%B7%D1%8B%D0%BA%D0%B8%22'

wget -qO $TEMP $URL
cat $TEMP | grep -P -o '(?<=\>)[\d]{2}\.[\d]{2}\.[\d]{4}(?=($|\<|[\s]+))'
rm $TEMP

