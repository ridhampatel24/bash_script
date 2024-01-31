#!/bin/bash

num1=25
num2=12

echo $(( $num1 + $num2 ))
echo $(( $num1 - $num2 ))
echo $(( $num1 * $num2 ))
echo $(( $num1 / $num2 ))
echo $(( $num1 % $num2 ))

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )

#Float point calculation in bash we have to use bc command

echo "20.5+5" | bc
#left side value will be treated as input for the bc command
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5/5" | bc
# scale is for how many decimal input u want
echo "scale=2;20.5/5" | bc
echo "20.5%5" | bc

echo "scale=2;sqrt(24)" | bc -l
# l for using the maths library
echo "scale=2;2^2" | bc 

