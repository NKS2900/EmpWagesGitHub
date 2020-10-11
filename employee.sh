#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRatePerHour=20;
numOfWorkingDays=20;
totalSalary=0;

for ((day=1; day<=$numOfWorkingDays; day++))
do
	empCheck=$((RANDOM%3))

	case $empCheck in 
		$isFullTime)
			empHrs=8
			;;
		$isPartTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac

done

salary=$(($empHrs*$empRatePerHour));
totalSalary=$(($totalSalary+$salary))
