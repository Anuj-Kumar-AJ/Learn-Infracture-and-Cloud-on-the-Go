#!/usr/bin/bash

# read the user input and store it in variable

read -p "write your first name" firstName 
read -p "write your last name" lastName 

# storing full name in vatiable
fullName=$firstName" "$lastName 

# printing the full name in terminal
echo $fullName


