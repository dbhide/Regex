#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration Problem"

read -p "Enter First Name and Last Name : " firstName lastName

nameRule="^([A-Z]{1}[a-z]*)$"

if [[ $firstName =~ $nameRule && $lastName =~ $nameRule ]]
then
	echo "First Name: " $firstName
	echo "Last Name: " $lastName
else
	echo "Invalid entry..Enter valid Name"
fi
