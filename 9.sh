# Program Number: 9
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script that accepts a file name starting and ending line numbers as arguments and displays all the lines between the given line numbers including the given line numbers. 

# How to run this file -  first do source 9.sh on terminal, after that asks to enter filename, then enter start line number and then end line number. after that it displays the lines between the given line numbers which includes the line numbers. 


#!/bin/bash

echo "Enter filename"
read filename
echo "Start line number"
read s
echo "End line number"
read e

sed -n $s,$e\p $filename | cat > newline
cat newline
