#!/bin/bash -x

isFullTime=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isFullTime ]
then
	empRatePerHour=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHour));
else
	salary=0;
fi

