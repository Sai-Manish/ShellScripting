# Program Number: 12
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script according to the following criteria: 1)If you search for the IIT the output is NIT 2)If you search for NIT the output is IIT 3)If you search any other keyword or not give any input, the output is STDERR should be displayed.

# How to run this file -  first do source 12.sh on terminal, after that asks to enter word to search and then displays the output according to criteria.

#!/bin/bash

echo "Enter word to search : "
read word

if [ "$word" == "IIT" ]; then
	echo NIT
elif [ "$word" == "NIT" ]; then
	echo IIT
else
	echo STDERR
fi

