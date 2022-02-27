#!/bin/bash

# Author: Dev
# Exercise script follows from here:

FILE=$1

if [ -f $FILE ]
then
    echo "$FILE is a regular file"
    exit 0
elif [ -d $FILE ]
then
    echo "$FILE is a directory"
    exit 1
else
    echo "$FILE is another type of file"
    exit 2
fi
