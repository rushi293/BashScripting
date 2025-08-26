#!/bin/bash

echo "Script Name is ${0}"
read -p "Which Site You want to check? " site

ping -c 1 $site &> /dev/null



if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $site"
else
	echo "Unable to connect $site"
fi

