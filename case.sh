#!/bin/bash

name="Ridham"

echo -e "Enter the Character: \c"
read value

case $value in
    [a-z]  )
        echo "User enter $value a to z" ;;
    [A-Z]  )
        echo "User enter $value A to Z"  ;;
    [0-9]  )
        echo "User enter $value 0 to 9" ;;
    ?   )
        echo "User enter $value a special character" ;;
    *   )
        echo "Unknown" ;;
esac

 
case $name in
    "Ridham" )
        echo "DevOps" ;;
    "Nilay" )
        echo ".Net" ;;
    "Manav" )
        echo "GoLang" ;;
esac

