#!/bin/bash

#until loop exe until the condition is false
n=1
until [ $n -gt 10 ]
do 
    echo $n
    n=$((n+1)) # arithmetic expansion
done 