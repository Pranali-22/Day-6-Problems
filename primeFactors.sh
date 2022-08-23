#!/bin/bash 

read -p "Enter number : " num

while [ $(($num%2)) -eq 0 ]
do
	echo 2
	num=$(($num/2))
	
done

for (( i=3; i<=$num;  ))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		echo "number : "$i
		num=$(($num/$i))
	fi
	i=$(($i+2))
done
