#!/bin/bash

if [[ $UID -ne 0 ]]
then 
	echo "Please run with sudo or root."
	exit 1
fi

if [[ $# -eq 0 ]]
then 
	echo "Please Provide argument."
	echo "Usage : ${0} USER_NAME [COMMENT] ... "
	echo "Create a user with name USER_NAME and comments fileld of comment"
	exit 1
fi

USER_NAME="${1}"
echo "user name is $USER_NAME"

shift
COMMENT="${@}"
echo $COMMENT

PASSWORD=$(date +%s%N)
echo $PASSWORD

useradd -c $COMMENT -m $USER_NAME 

if [[ $? -ne 0 ]]
then 
	echo "The Account could not be created."
	exit 1
fi
 # set the password for the user.
passwd $PASSWORD $USER_NAME

#Check if password is successfully set or not
if [[ $? -ne 0 ]]
then
	echo "Password Could not be set"
	exit 1
fi

#Force Password Chanage on First login.
passwd -e $USER_NAME

#Display The username, password and the hostname where it is created.
echo 
echo "Username : $USER_NAME"
echo
echo "Password: $PASSWORD"
echo 
echo $(hostname)


