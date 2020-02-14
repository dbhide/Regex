#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration Problem"

#To validate all details entered by user
function validateUserDetails() {
	userDetails=$1
	validDetails=$2
	if [[ $userDetails =~ $validDetails ]]
	then
		echo $userDetails
	else
		echo "Invalid Entry!!"
	fi
}

read -p "Enter First Name and Last Name : " firstName lastName
validateUserDetails $firstName $nameRule
validateUserDetails $lastName $nameRule

read -p "Enter Email Id : " email
validateUserDetails $email $emailRule

nameRule="^([A-Z]{1}[a-z]*)$"

emailRule="^([a-zA-Z]{3,}|[a-zA-Z0-9]{3,}[._+-]{1}[a-zA-Z0-9]{3,})[@]{1}[a-zA-Z0-9]*[.]{1}[a-z]{2,3}|[.]{1}[a-z]{2,3}$"
