#!/bin/bash
<<heloo
echo "ENter numbers separated by space:"
read -a arr

echo "You Entered:"
for val in "${arr[@]}"
do 
    echo "$val"
done
heloo

myArray=( 1 2 Heloo "Heloo Rishi")

echo "Lenght of the array ${#myArray[*]}"


#echo "${myArray[*]:1}"
#echo "${myArray[*]:2:3}"

myArray+=(New 5 6 7)

echo "${myArray[*]}"
