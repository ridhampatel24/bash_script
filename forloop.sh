#!/bin/bash

for VARIABLE in 1 2 3 4 5
do
    echo $VARIABLE
done

for VARIABLE in {1..10..2} #{START..END..INCREMENT}
do
    echo $VARIABLE
done

for (( i=0; i<=5 ; i++ ))
do
    echo $i
done


for command in ls pwd date 
do
    echo "------------------$command--------------------"
    $command
done

for item in ~/Desktop/*
do
    if [ -d $item ]
    then 
        echo "$item is a directory."
    fi
done
