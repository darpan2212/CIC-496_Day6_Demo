#!/bin/bash

cnt=1;

until [ $cnt -gt 10 ]
do
	echo $cnt;
	((cnt++));
done
