#!/bin/bash

os=('Ubantu' 'Windows' 'Kali Linux')
echo "${os[@]}"   #print all elements
echo ${os[2]}
echo ${!os[@]}
#${os[@]:1:3}  #get element from index 1 to 3

for i in "${!os[@]}"; do
    echo "Element at index $i is ${os[$i]}"
done

