#!/bin/bash

function sayHello()
{
    # Setting up local vars from args
    local NAME="$1" AGE="$2"

    # Must have spaes on both sides of expression
    if [ "$AGE" -lt 21 ];
    then
        echo "Hello there $NAME. You are $AGE years old. You cannot drink."
    else
        echo "Enjoy your DRANK young fella!!!"
    fi
        
}

function getAge()
{
    local BIRTHDATE="$1"
    # Commands that return data need to be wrapped in "$(command)" format
    CURRENTDATE="$(date | awk -F ' ' '{print $6}')"

    # Arithmetic in POSIX shells is done with $ and double parentheses (( )):
    returnAGE="$(($CURRENTDATE-$BIRTHDATE))"
    
}

getAge 1987
sayHello "Benjmin" $returnAGE
getAge 2010
sayHello "Bob" $returnAGE
getAge 2005
sayHello "Andrew" $returnAGE