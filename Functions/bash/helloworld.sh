#!/bin/bash
NAME="Benjamin"
AGE=20

# Must have spaes on both sides of expression
if [ "$AGE" -lt 21 ];
then
    echo "Hello there $NAME. You are $AGE years old"
fi

# Loops start here
NUMBERS=(1 2 3 4 5 6)
for((i=0;i<${#NUMBERS[@]};i++));
do
    echo "${NUMBERS[$i]}"
done

for NUM in "${NUMBERS[@]}"
do
    echo "The value of num is: $NUM"
done

COUNTER=0
while [ "$COUNTER" -lt 10 ] 
do
    echo "Counter is less than 10"
    COUNTER=$((COUNTER+=2))
done