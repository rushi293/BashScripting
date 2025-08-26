#!/bin/bash

#How to store key value pair 

declare -A myArray 
myArray=( [name]=Rish [age]=20 [city]=Chonga )

echo "${myArray[name]}"
