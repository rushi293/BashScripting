#!/bin/bash

read -p "Which numebr table do you want to print :" num

mul=1

for(( i=1; i<=10; i++))
do 
     mul=$((num * i))
     echo "$num * $i = $mul"
     mul=1
done  
