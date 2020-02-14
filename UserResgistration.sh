#!/bin/bash -x 
shopt -s extglob

echo "Welcome to User Registration Problem"
nameRule="^[A-Z]{1}[a-z]{2,}$"
emailRule="^([a-zA-Z]{3,}|[a-zA-Z0-9]{3,}[._+-]{1}[a-zA-Z0-9]{3,})[@]{1}[a-zA-Z0-9]*[.]{1}[a-z]{2,3}|[.]{1}[a-z]{2,3}$"
mobileNumberRule="^([0-9]{2}\s{1}[0-9]{10})$"
passwordRule="^[a-zA-Z]{8,}$"

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

read -p "Enter Mobile Number : " mobileNumber
validateUserDetails "$mobileNumber" $mobileNumberRule

read -p  "Enter Password : " password
validateUserDetails $password $passwordRule
