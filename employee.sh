#!/bin/bash -x

empRatePerHour=20;
isFullTime=1;
isPartTime=2;
randomCheck=$((RANDOM%3))

if [ $randomCheck -eq $isFullTime ]
then	
	empHrs=8;
elif [ $randomCheck -eq $isPartTime ]
then
	empHrs=4;
else
	empHrs=0;
fi

salary=$(($empHrs*$empRatePerHour));

