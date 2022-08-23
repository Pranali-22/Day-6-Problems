#!/bin/bash -x

read -p "Enter Number : " num

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
