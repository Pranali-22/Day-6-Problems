#!/bin/bash -x

read -p "Enter num : " num

res=0
i=0
while [[ $res -lt 256 && $i -le $num ]]
do
	res=$((2**$i))
	i=$(($i+1)) 
        echo $res
done

