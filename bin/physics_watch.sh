#!/bin/bash 

ppath="/opt/dasher/bin"

if [ `ls /sys/class/gpio | grep 22 | wc -l` -eq 0 ]
then
	${ppath}/physics_start.sh
fi

while physics=100
do

if [ `cat /sys/class/gpio/gpio22/value` -eq 1 ]
then
	if [ `cat /tmp/red` -eq 0 ]
	then
		${ppath}/physics_curl.sh red 
		echo 1 > /tmp/red
	fi
else
	echo 0 > /tmp/red
fi
if [ `cat /sys/class/gpio/gpio24/value` -eq 1 ]
then
	if [ `cat /tmp/white` -eq 0 ]
	then
		${ppath}/physics_curl.sh white 
		echo 1 > /tmp/white
	fi
else
	echo 0 > /tmp/white
fi
sleepenh 0.2 >/dev/null 

done

