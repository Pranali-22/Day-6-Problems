#!/bin/bash -x

read -p "Enter number :" num

factorial=1
for (( i=$num; i>=1; i-- ))
do
	factorial=$(($factorial*$i))
done
echo "Factorial = " $factorial
