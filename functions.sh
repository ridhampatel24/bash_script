#!/bin/bash

#functions
function name(){
    echo "Namuana"
}

nameoffunction () {
    echo "Hello"
}


function Hello(){
    echo "Hello"
}

function print(){
    echo $1
}

Hello
print Ridham

usage(){
    echo "You need to provide an argument : "
    echo "usage : $0 file_name"
}


is_file_exist() {
    local file="$1"
    [[ -f "$file" ]] && return 0 || return 1
}


[[ $# -eq 0 ]]  && usage

if ( is_file_exist "$1" )
then 
    echo "File found"
else
    echo "File not found"
fi
