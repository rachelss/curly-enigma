#Usage: bash 01-run.sh <filename>
#Counts the number of genes in a gff file
#I have nothing else to add

#!/bin/bash

if [ $# -eq 0 ]; then
 echo "Usage: $0 filename"
 exit 1
fi

filename=$1

echo -n "The number of genes in $filename is "

cat $filename |
 grep -v '^#' |
 cut -f3 |
 grep gene |
 wc -l
