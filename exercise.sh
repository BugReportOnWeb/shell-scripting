#!/usr/bin/env bash

# Author: Dev

DATE=$(date +%F)

# Taking user input for the prefix of the file
prefix_fill() {
    echo -e "Type the prefix for your file (Default YYYY-MM-DD): " | tr -d "\n"; read PREFIX

    if [[ $FILE == $PREFIX.$EXT ]]; then
        echo "** $FILE and $PREFIX.$EXT are the same file. **"
       
        # Function to call if the prefix and original file name are the same
        start_again() {
            echo "Press <ENTER> to choose a different prefix or type 'e' to shift to the next file: " | tr -d "\n"; read NEXT
            if [[ $NEXT == "e" ]]; then
                echo "=========================================================================================="
                return
            elif [[ $NEXT == "" ]]; then
                prefix_fill
            else
                echo "Invalid Input! Try again"
                start_again
            fi
        }; start_again
   
    elif [[ $PREFIX == "" ]]; then
        NEWFILE=$DATE-$FILE
        change
    else
        NEWFILE=$PREFIX.$EXT
        change
    fi
}

# Output of the changed prefix and confirming the change to be made
change() {
    echo -e "Old file name: " | tr -d "\n"; echo "$FILE"
    echo -e "New file name: " | tr -d "\n"; echo "$NEWFILE"
    
    # Change again function
    change_again() {
        echo -e "Are you satisfied with the change? (Y/n): " | tr -d "\n"; read CHANGE

        if [[ $CHANGE == "Y" || $CHANGE == "y" || $CHANGE == "" ]]; then
            mv $FILE "$NEWFILE"
            echo "============================================"
        elif [[ $CHANGE == "N" || $CHANGE == "n" ]]; then
            prefix_fill
        else
            echo "Invalid input. Please try again"
            change_again
        fi 
    }; change_again
}

# Main block
for FILE in $(ls)
do
    EXT=$(echo $FILE | cut -d. -f2)
    echo -e "$FILE is a $EXT file. " | tr -d "\n"; prefix_fill
done

