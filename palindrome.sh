#!/bin/bash
read -p "Enter number : " num

function palindrome
{
	n=$num
	reverse=0
	while [ $num -gt 0 ]
	do
		x=$(($num%10))
		num=$(($num/10))
		reverse=$(($reverse*10+$x))
	done
	echo $reverse
	if [ $n -eq $reverse ]
	then
    		echo "Number is palindrome"
	else
    		echo "Number is not palindrome"
	fi
}

palindrome $num
