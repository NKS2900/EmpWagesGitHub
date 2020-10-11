#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRatePerHour=20;
numOfWorkingDays=20;
maxHoursInMonth=40;
totalEmpHours=0;
totalWorkingDays=0;

while [[ $totalEmpHours -lt $maxHoursInMonth &&  $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
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
	totalEmpHours=$(($totalEmpHours+$empHrs))
done

totalSalary=$(($totalEmpHours*$empRatePerHour));
