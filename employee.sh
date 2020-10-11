#!/bin/bash -x

IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_RATE_PER_HOUR=20;
NUM_OF_WORKING_DAYS=20;
MAX_HOURS_IN_MONTH=40;

totalEmpHours=0;
totalWorkingDays=0;

function getWorkingHours(){
	case $1 in 
		$IS_FULL_TIME )
			empHrs=8
			;;
		$IS_PART_TIME )
			empHrs=4
			;;
		* )
			empHrs=0
			;;
	esac
	echo $empHrs
}

function getEmpWage(){
	empHours=$1
	echo $(($empHours*$EMP_RATE_PER_HOUR))
}

while [[ $totalEmpHours -lt $MAX_HOURS_IN_MONTH &&  $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empHours=$( getWorkingHours $((RANDOM%3)) )	
	totalEmpHours=$(($totalEmpHours+$empHours))
	dailyWage[$totalWorkingDays]=$( getEmpWage $empHours )
done

totalSalary=$(($totalEmpHours*$EMP_RATE_PER_HOUR));
echo "Daily Wages : " ${dailyWage[@]}
