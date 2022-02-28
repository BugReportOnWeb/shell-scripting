#!/bin/bash

# Author: Dev
# Exercise script follows from here:

DATE=$(date +%F)

# Taking user input for the prefix of the file
prefix_fill() {
    echo -e "Type the prefix for your file (Default YYYY-MM-DD): " | tr -d "\n"
    read PREFIX

    if [[ $PREFIX == "" ]]
    then
        NEWFILE=$DATE-$FILE
        change
    else
        NEWFILE=$PREFIX.$EXT
        change
    fi
}

# Output of the changed prefix and confirming the change to be made
change() {
    echo -e "Old file name: " | tr -d "\n"
    echo "$FILE"
    echo -e "New file name: " | tr -d "\n"
    echo "$NEWFILE"
    
    # Change again function
    change_again() {
        echo -e "Are you satisfied with the change? (Y/n): " | tr -d "\n"
        read CHANGE

        if [[ $CHANGE == "Y" ]] || [[ $CHANGE == "y" ]] || [[ $CHANGE == "" ]]
        then
            mv $FILE "$NEWFILE"
        elif [[ $CHANGE == "N" ]] || [[ $CHANGE == "n" ]]
        then
            prefix_fill
        else
            echo "Invalid input. Please try again"
            change_again
        fi 
    }

    change_again
}

for FILE in $(ls)
do
    EXT=${FILE: -3}
    echo -e "$FILE is a $EXT file. " | tr -d "\n"
    prefix_fill
done

