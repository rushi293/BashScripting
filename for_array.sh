#!/bin/bash

myArray=( 1 2 3 4 Heloo )

length=${#myArray[*]}

for(( i=0;i<$length;i++ ))
do
	echo "Array $i value is ${myArray[$i]}"
	sleep 4s
done

	
