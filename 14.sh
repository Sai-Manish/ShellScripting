# Program Number: 14
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script to print, “Good Morning/Afternoon/Evening based on the current system time. 

# How to run this file -  first do source 14.sh on terminal which displays “Good Morning/Afternoon/Evening based on the current system time accordingly. No input or command line arguments needed in this question 
#!/bin/bash

time=`date +%H`

if [[ $time -lt 12 ]]; then
	echo Good Morning
elif [[ $time -lt 18 ]]; then
	echo Good Afternoon
else
	echo Good Evening
fi



