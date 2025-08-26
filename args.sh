#!/bin/bash

set -x

if [[ $# -eq 0 ]]
then 
	echo "Pleasse Provide Atleast one argument"
	exit 1
fi

echo "First Argument is $1"
echo "Second Argument is $2"

echo "All the argument are - $@"
echo "Number of Argument is $#"
