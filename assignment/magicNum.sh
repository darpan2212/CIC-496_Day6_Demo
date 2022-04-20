#!/bin/bash

start=1;
end=100;

mid=$(( (start+end)/2 ))

selection=0;

while [ $selection -ne 3 ]
do
	echo "1. num > $mid";
	echo "2. num < $mid";
	echo "3. num == $mid";

	read selection;

	case $selection in

		1)
			start=$mid;
		;;

		2)
			end=$mid;
		;;

		3)
			echo "Your number is : $mid";
		;;

		*)
			echo "Invalid input..";
		;;
	esac;

	mid=$(( (start+end)/2 ));

done
