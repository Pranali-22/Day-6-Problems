#!/bin/bash 

initialMoney=100

win=1
bets=0
check=$((RANDOM%2))
noOfWins=0
noOfBets=0
while [[ $initialMoney -gt 0 && $initialMoney -lt 200 ]]
do
	check=$((RANDOM%2))
	case $check in
		$win )
			initialMoney=$(($initialMoney+1))
			noOfWins=$(($noOfWins+1))
		;;
		$bets )
			initialMoney=$(($initialMoney-1))
			noOfBets=$(($noOfBets+1))
                ;;
	esac
	#echo $initialMoney
done
echo "Number of wins : $noOfWins"
echo "Number of Bets : $noOfBets"

