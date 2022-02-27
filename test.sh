#!/bin/fish

# Author: Dev
# Copyright (c) { Not yet :( }
# Script follows here:

# Asking if they know there \$PS1 and if not telling it to them
next_step() {
    echo "Do you know your \$PS1? (Y/n)"
    read ANS
    
    if [ $ANS == 'n' ] || [ $ANS == 'N' ]
    then
        set -o verbose
        PS1='~ >'
        echo -e "Well here is your \$PS1: \e[0;36m$PS1 \e[0;37m" | tr -d '\n'
    elif [ $ANS == 'y' ] || [ $ANS == 'Y' ]
    then
        echo "Woh! That's cool! :)"
    else
        echo "Invalid choice!"
        another_trial        
    fi
}

# Function to call only when user input wrong info in the Y/n input
another_trial() {
    echo "Wanna try again? (Y/n)"
    read ANOTHER
    if [ $ANOTHER == 'Y' ] || [ $ANOTHER == 'y' ]
    then
        next_step
    elif [ $ANOTHER == 'N' ] || [ $ANOTHER == 'n' ]
    then
        echo "Cool! Thanks for joining :)"
    else
        echo "Invalid Choice! Please enter from Y/y for 'Yes' or N/n for 'No'"
        another_trial
    fi
}

# Checking if the user name is 'Dev'
checking_user() {
    if [ $NAME == 'Dev' ]
    then
        echo 'Welcome Dev!'
        next_step
    else
        echo "You aren't Dev, are you?"
        return
    fi
}

echo "What's your name?"
read NAME
checking_user

