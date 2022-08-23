#!/bin/bash 

countHead=0
countTail=0
isHead=0
isTail=1
while [[ $countHead -lt 11 && $countTail -lt 11 ]]
do
	check=$((RANDOM%2))
	echo $check
	case $check in
		$isHead )
			countHead=$(($countHead+1))
		;;
		$isTail )
			countTail=$(($countTail+1))
		;;
	esac
	echo "Head count : "$countHead
	echo "Tail count : "$countTail
done

if [ $countHead -eq 11 ]
then
	echo "Head count reached 11"
elif [ $countTail -eq 11 ]
then
	echo "Tail count reached 11"
fi
