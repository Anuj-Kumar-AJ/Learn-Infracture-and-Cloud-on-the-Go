#!/usr/bin/bash

read -p "write first number " num1
read -p "write second number " num2

if [ $num1 -eq $num2 ]
then
echo "first number $num1 is equal to second number $num2"

elif [ $num1 -gt $num2 ]
then
echo "first number $num1 is greater to second number $num2"

elif [ $num1 -le $num2 ]
then
echo "first number $num1 is less to second number $num2"

fi
