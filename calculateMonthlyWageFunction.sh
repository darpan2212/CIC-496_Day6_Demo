#!/bin/bash

EMP_WAGE_PER_HOUR=20;
PRESENT=1;
PART_TIME=2;
WORKING_HOUR=8;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

totalWorkingHour=0;

day=0;

function getWorkingHour() {

	case $1 in

		$PRESENT)
			workingHour=$WORKING_HOUR;
		;;

		$PART_TIME)
			workingHour=$((WORKING_HOUR/2));
		;;

		*)
			workingHour=0;
		;;

	esac;

	echo $workingHour;
}

while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do

	if [ $totalWorkingHour -eq $((MAX_WORKING_HOUR - WORKING_HOUR/2)) ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));
	fi

	empHr=$(getWorkingHour $isPresent);

	totalWorkingHour=$((totalWorkingHour + empHr));
	((day++));
done

totalSalary=$((totalWorkingHour * EMP_WAGE_PER_HOUR));

echo "Emp total working hour : $totalWorkingHour Hour";
echo "Employee monthly wage : $"$totalSalary "USD";
echo "Employee total working day : "$day;
