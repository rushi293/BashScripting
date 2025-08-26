#!/bin/bash

FU=$(df -H | egrep -v "Filesystem|tmpfs|udev" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]]
then 
	echo "Warning,disk space is low"
else
	echo "All Good"
fi

