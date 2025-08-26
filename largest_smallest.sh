#!/bin/bash

read -p "Enter first number :" a
read -p "Enter first number :" b
read -p "Enter first number :" c
read -p "Enter first number :" d
read -p "Enter first number :" e

largest=$a
smallest=$b

for num in $a $b $c $d $e
do   
     if (( num > largest)); then 
         largest=$num
     fi
     if (( num < smallest)); then 
         smallest=$num
     fi
done

echo "Largest: $largest"
echo "Smallest: $smallest"




