# Program Number: 5
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell program uses find to look for a file and echo a suitable message if the file is not found.

# How to run this file -  first do source 5.sh on terminal, after that asks to enter the file that is to be search. If file found displays the path if not pops error message.



#!/bin/bash

echo "Enter Filename : "

read filename
if [[ $(find /home/"$USER"/ -name "$filename" -type f | wc -l) != 0 ]]; then
	echo "File found, Path for the link : "
	find /home/"$USER"/ -name "$filename" -type f
else
	echo "File not found"
fi

