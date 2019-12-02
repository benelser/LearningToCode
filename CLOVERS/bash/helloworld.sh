#!/bin/bash
NAME="Benjamin"
AGE=20

# Must have spaces on both sides of expression [ ]
if [ "$AGE" -lt 21 ];
then
    echo "Hello there $NAME. You are $AGE years old"
fi

# Loops start here

# Creating untyped dynamic array
NUMBERS=(1 2 3 4 5 6)

# Classic C for loop dynamicaly setting condition to the length of NUMBERS array
for((i=0;i<${#NUMBERS[@]};i++));
do
    echo "${NUMBERS[$i]}"
done

# Foreach loop
for NUM in "${NUMBERS[@]}"
do
    echo "The value of num is: $NUM"
done

# Classic while with expression at the top using [ ] same as if expression
COUNTER=0
while [ "$COUNTER" -lt 10 ] 
do
    echo "Counter is less than 10"
    COUNTER=$((COUNTER+=2))
done