#!/bin/bash

#while loop

idx=1

while [ $idx -le 3 ]
do 
    echo "The current number is $idx"
    idx=$(( idx+1  )) # increment the value of idx by one
    let "idx++"     #let command used for arithmetic operations.
    sleep 1
    #gnome-terminal & #used to open terminal

done
