# Program Number: 3
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021
# Description: This program will implement shell program will accept a variable number of command line arguments. This shell program will create a new file associated with each command line argument and echo a message that notifies the user as each file is created. 
# How to run this file - do source 3.sh command line arguments(enter them) in terminal. This takes the command line arguments will create a new file associated with each command line argument echo a message that notifies the user as each file is created.

#!/bin/bash

for name in "$@"; do
	touch "$name"
	echo "Created the file with name '"$name"'!"
done

