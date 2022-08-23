#!/bin/bash -x

read -p "Enter num : " num

for (( i=0; i<=$num; i++ ))
do
	echo $((2**$i))
done

