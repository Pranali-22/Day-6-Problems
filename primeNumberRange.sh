#!/bin/bash -x

read -p "Enter start point : " num1
read -p "Enter end point : " num2

for (( num=$num1; num<=$num2; num++ ))
do
	isPrime=0
	for(( i=2; i<=$num/2; i++ ))
	do
  		ans=$(( $num%$i ))
  		if [ $ans -eq 0 ]
  	then
    	isPrime=1
  	fi
	done

	if [ $isPrime -eq 0 ]
	then
        	echo $num "is prime number"
	fi
done
