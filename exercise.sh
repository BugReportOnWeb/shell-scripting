#!/bin/bash

# Author: Dev
# Exercise script follows from here:

# Performing function of long listing
long_listing() {
    DIR=$1
    ls -l $DIR
}

# Checking for the type of file or the dir
echo "Type the file or a dir path:"
read LOC

if [ -d $LOC ]
then
    echo "It is a directory"
elif [ -f $LOC ]
then
   echo "It is a regular file"
elif [ -e $LOC ]
then
   echo "It is another type of a file" 
else
    echo "Invalid Path"
fi

# Printing the long listing of the specified $PATH
echo "Here is the long listing of the $LOC:"
long_listing $LOC
