#!/bin/bash

# Author: Dev
# Exercise script follows from here:

FILE=/home/dev/Development/rickroll
if [ -e $FILE ]
    then
        echo "$FILE passwords are enabled"
        if [ -x $FILE ]
            then
                echo "You have permissions to edit $FILE"
            else
                echo "You do NOT have permissions to edit $FILE"
        fi
    else
        echo "$FILE does not exist"        
fi

