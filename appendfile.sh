#!/bin/bash

echo -e "Enter the name of the file: \c"
read filename

if [ -f $filename ]
then 
    if [ -w $filename ]
    then
        echo "Enter the text"
        cat >> $filename
    else
       echo "No write permission"
    fi
else
    echo "File does not exist"
fi