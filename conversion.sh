#!/bin/bash

read -p "Enter conversion selection 1-convert to Fahrenheit  2-convert to Celcius: " choice

function CelciusToFahrenheit()
{
	fans1=$(($(($value1*1.8))+32))
	fans2=$(($(($value2*1.8))+32))
}

function FahrenheitToCelcius()
{
        cans1=$(($value1-32*0.55))
        cans2=$(($value2-32*0.55))
}

case $choice in
	1 )
		read -p "Enter freezing point in Celcius : " cvalue1
		read -p "Enter boiling point in Celcius : " cvalue2
		if (( $cvalue1==0 && $cvalue2==100 ))
		then
			CelciusToFahrenheit $cvalue1 $cvalue2
			echo "Freezing point in Fahrenheit : $fans1"
			echo "Boiling point in Fahrenheit : $fans2"
		else
			echo "Please enter valid value"
		fi
	;;
	2 )
		read -p "Enter freezing point in Fahrenheit : " fvalue1
                read -p "Enter boiling point in Fahrenheit : " fvalue2
                if (( $fvalue1==32 && $fvalue2==212 ))
                then
                        FahrenheitToCelcius $fvalue1 $fvalue2
                        echo "Freezing point in Celcius : $cans1"
                        echo "Boiling point in Celcius : $cans2"
                else
                        echo "Please enter valid value"
                fi
	;;
esac
