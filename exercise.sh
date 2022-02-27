#!/bin/bash

# Author: Dev
# Exercise script follows from here:

DIR=$1

file_count() {
    local NUMBER=$(ls -l $1 | wc -l)
    echo $NUMBER
}

echo -e "$DIR: " | tr -d '\n'
file_count $DIR

