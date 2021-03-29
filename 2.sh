# Program Number: 2
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021
# Description: This program will implement shell program that checks the number of command line arguments and echoes an error message if there are not exactly three arguments or echoes the arguments themselves if there are three. 
# How to run this file -  source 2.sh command line arguments. This takes the command line arguments and echoes an error message if there are not exactly three arguments or echoes the arguments themselves if there are three.

#!/bin/bash
if [[ "$#" -ne 3 ]]; then
	echo "you have not entered exactly 3 arguments. Please retry."
else
	echo "No of arguments given is 3, following are the arguments"
	for f in "$@"; do
		echo "$f"
	done
fi

