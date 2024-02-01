#!/bin/bash

var=24
readonly var

hello(){
    echo "Hello World"
}

readonly -f hello #will make function readble