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


is_file_exist() {
    local file="$1"
    [[ -f "$file" ]] && return 0 || return 1
}

