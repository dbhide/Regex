#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration Problem"

read -p "Enter First Name : " firstName

firstNameRule="^([A-Z]{1}[a-z]*)$"

if [[ $firstName =~ $firstNameRule ]]
then
	echo "First Name: " $firstName
else
	echo "Invalid entry..Enter valid Name"
fi
