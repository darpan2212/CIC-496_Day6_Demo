#!/bin/bash

function factorial() {
	num=$1;
	fact=1;
	for ((i=1;i<=$num;i++))
	do
		fact=$((fact*i));
	done
	echo $fact;
}

fact5=$(factorial 5);
echo "5!=$fact5";

fact7=$(factorial 7);
echo "7!=$fact7";
