#!/bin/bash

read name  #take input and store in name variable
read -p 'username: ' user_val  #p flag is used to take input in same line 
read -sp 'password: ' pass_val #s flag is used to take hidden input
echo
echo "Username is: $user_val"
echo "Password is: $pass_val"

read name1 name2 name3
echo $name2


read -a namesarray  #Store in a array
echo "Names: ${namesarray[0]} ${namesarray[1]} " #Accessing the elements of an array by index

read   #If you write read without variable the it goes to built in variable REPLY




