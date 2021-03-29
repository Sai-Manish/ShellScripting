# Program Number: 6
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell program which will give 4 choices to the user 1. ls   2. pwd  3. who 4. exit and execute the command as per the users choice.

# How to run this file -  first do source 6.sh on terminal, after that asks to enter the choice which is displayed on the screen which is to be executed after entering the choice. 

#!/bin/bash

echo "Enter the options between 1 to 4\n 1 - ls\n 2 - pwd\n 3 - who\n 4 - exit"
read ans
case "$ans" in
	1) ls;;
	2) pwd;;
	3) who;;
	4) exit;;
esac

