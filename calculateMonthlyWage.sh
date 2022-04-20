#!/bin/bash

EMP_WAGE_PER_HOUR=20;
PRESENT=1;
PART_TIME=2;
WORKING_HOUR=8;
MAX_WORKING_DAY=20;

totalSalary=0;

for ((day-0;day<$MAX_WORKING_DAY;day++))
do
	isPresent=$((RANDOM%3));

	case $isPresent in

		$PRESENT)
			dailyWage=$((WORKING_HOUR * EMP_WAGE_PER_HOUR));
		;;

		$PART_TIME)
			dailyWage=$((WORKING_HOUR/2 * EMP_WAGE_PER_HOUR));
		;;

		*)
			dailyWage=0;
		;;

	esac;

	totalSalary=$((totalSalary + dailyWage));
done


echo "Employee monthly wage : $"$totalSalary "USD";
