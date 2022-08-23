#!/bin/bash -x

read -p "Enter number : " num

harmonium = 0
for (( i=1; i<=$num; i++ ))
do
	harmonium=$(( $harmonium+$((1/$i)) ))
done
echo "Harmonium number = " $harmonium
