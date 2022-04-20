#!/bin/bash

function add() {
	sum=$(($1+$2));
	echo $sum;
}



result=$( add $((RANDOM%10)) $((RANDOM%10)) );

echo $result;
