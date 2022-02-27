#!/bin/bash

# Author: Dev
# Exercise script follows from here:

# Performing function of long listing
long_listing() {
    DIR=$1
    ls -l $DIR
}

# Taking path input as a infinitly multiple argument
FILES=$@

# Chekcing for the file type
for LOC in $FILES
do
    echo "-------------------------------------------------------"
    
    if [ -d $LOC ]
    then
        echo "*** $LOC is a directory ***"
    elif [ -f $LOC ]
    then
        echo "$LOC is a regular file"
    elif [ -e $LOC ]
    then
        echo "$LOC is another type of a file" 
    else
        echo "Invalid Path"
    fi

    # Printing the long listing of the specified $PATH
    echo "Long listing of the $LOC:"
    long_listing $LOC    
done


