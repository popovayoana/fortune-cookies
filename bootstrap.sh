#!/bin/sh
PATH=`fortune -f 2>&1 | head -1 | cut -d' ' -f2`
echo $PATH
#files=ls -1 | egrep -v '\.sh|makefile'
for file in $files
do
echo $file
done
