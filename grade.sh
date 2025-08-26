#!/bin/bash

read -p "Enter marks in Subject 1: " m1
read -p "Enter marks in Subject 2: " m2
read -p "Enter marks in Subject 3: " m3

total=$((m1+m2+m3))
percentage=$((total/3))

if ((percentage >=90)); then
   grade="A"
elif ((percentage >= 75)); then
   grade="B"
elif ((percentage >= 50)); then 
   grade="C"
else 
   grade="Fail"
fi

echo "Percentage : $percentage%"
echo "Grade : $grade"
