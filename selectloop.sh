#!/bin/bash

select name in mark john tom ben
do
    case $name in
    mark)
    echo "$name is a good boy.";;
    john)
    echo "$name is a good boy.";;
    tom)
    echo "$name is a good boy.";;
    ben)
    echo "$name is a good boy.";;
    *)
    echo "Error is a good boy.";;
    esac

done