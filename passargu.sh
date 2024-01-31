#!/bin/bash

#Pass Arguments to Bash Script
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} 
echo $@   #array of arguments passed
echo $#   #print the number of arguments passed

# -e with echo will interpret the / outervise it will print it as normal