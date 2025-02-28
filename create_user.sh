#!/bin/bash

<<help 

this is scripts for new user creation

help

echo "============ Creation of User Started ========="

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo password "$username"

echo "============ creation of user completed ========="

sudo userdel $username

echo "============ deletion of user completed ========="

if [ $(cat /etc/password | grep $username | wc | awk '{print $1}') == 0 ];
then
	
     echo "as wc is 0 the user is deleted"
else
     echo "the user was not deleted" 
fi     
