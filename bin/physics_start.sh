#!/bin/bash -x

echo 22 > /sys/class/gpio/export
echo 23 > /sys/class/gpio/export

echo in > /sys/class/gpio/gpio22/direction
echo out > /sys/class/gpio/gpio23/direction

echo 1 > /sys/class/gpio/gpio23/value

echo 24 > /sys/class/gpio/export
echo 25 > /sys/class/gpio/export

echo in > /sys/class/gpio/gpio24/direction
echo out > /sys/class/gpio/gpio25/direction

echo 1 > /sys/class/gpio/gpio25/value
