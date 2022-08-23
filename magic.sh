#!/bin/bash -x

read -p "Enter Magic Number : " num
check=$((RANDOM%100+1))

while [[ $check != $(($num/2)) ]]
do
	check=$((RANDOM%100+1))
done
if [ $check -le $(($num/2)) ]
then
     echo "User input : $num and magic number : $check"
     echo "Magic number reached..."
fi


