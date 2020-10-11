#!/bin/bash -x
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi