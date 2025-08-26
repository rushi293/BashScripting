#!/bin/bash
#$Revision:001$
#$Tue Aug 26 06:21:01 AM EDT 2025$

#VAriables
BASE=/home/kali/BashShellScripting
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or Not 

if [[ ! -d $BASE ]]
then 
	echo "Please create a directory $BASE"
	exit 1
fi

if [[ ! -d $BASE/archive ]]
then  
	mkdir $BASE/archive
fi

#Find the list of files largest then 20MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do 
	if [[ $RUN -eq 0 ]]
	then 
		echo "[$(date)] archiving $i ==> $BASE/archive"
		gzip $i || exit 1 
		mv $i.gz $BASE/archive || exit 1
	fi
done
