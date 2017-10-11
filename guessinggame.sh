#!/bin/sh

number_files=$(ls | wc -l)

function checknum {
	stop=false
	while [[ $stop = false ]]
	do
		echo "Please guess how many files are in the current directory: "
		read input_variable
		echo "You entered: $input_variable"
		if [ $input_variable -eq $number_files ]
		then
			echo "Your number is correct. Congratulations!"
			stop=true
		elif [ $input_variable -gt $number_files ]
		then
			echo "Your number is too high. Try again."
		elif [ $input_variable -lt $number_files ]
		then
			echo "Your number is too low. Try again."
		else
			echo "Not a number."
		fi
	done
}

checknum

