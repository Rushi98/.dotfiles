#!/bin/bash
# author	      Rushikesh JOGDAND
read -e -p "Output File: " o
cmd="gs -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$o "
echo "Input Files (enter ctrl+d to finish)"

i=1
while read -e -p "$i " name
do
	i=$(($i + 1))
	cmd+=" $name"
done
echo $cmd
`$cmd`
