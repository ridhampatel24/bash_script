#!/bin/bash

#while loop

idx=1

while [ $idx -le 5 ]
do 
    echo "The current number is $idx"
    let "idx++"     #let command used for arithmetic operations.
done