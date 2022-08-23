#!/bin/bash 

read -p "Enter number : " num

function prime
{
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
	else
        	echo $num "is not prime number"
	fi
}

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
        #echo $reverse
        if [ $n -eq $reverse ]
        then
                echo $n "is palindrome number"
		isPalindrome=0
        else
                echo $n "is not palindrome number"
        	isPalindrome=1
	fi
}

prime $num
palindrome $num
if [ $isPrime -eq $isPalindrome ]
then
	echo "Number is prime number as well as palindrome number"
else
	echo "The number doesn't belong to both categories"
fi
