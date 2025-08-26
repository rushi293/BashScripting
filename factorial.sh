#!/bin/bash

read -p "Enter The number which You want to factorial : " num

fact=1

for(( i=1; i<=num; i++))
do
   fact=$((fact * i))
done

echo "Factorial of $num is $fact"
