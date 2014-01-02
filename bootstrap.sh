#!/bin/sh
MYPATH=`fortune -f 2>&1 | head -1 | cut -d' ' -f2`
echo $MYPATH
files=`ls -1 | egrep -v '\.sh|makefile|README'`
for file in $files
do
    cp $file $MYPATH
    echo "Copied file $file to destination"
done
