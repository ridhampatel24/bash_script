#!/bin/bash

os=('Ubantu' 'Windows' 'Kali Linux')

os[3]="MacOS"
os[0]="Linux Mint" #will replace ubantu
#unset os[2]  #will delete kali linux

echo "${os[@]}"   #print all elements
echo ${os[2]}
echo ${!os[@]}
#${os[@]:1:3}  #get element from index 1 to 3

for i in "${!os[@]}"; do
    echo "Element at index $i is ${os[$i]}"
done

echo "${#os[@]}" #print the length of array

