# Program Number: 15
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script to perform the following (for the input file given) : 1) For a given file, find all the lines containing our search pattern, 2) List the lines not containing the search string, 3) Matching lines starting with a given pattern and ending in a second pattern, 4) Print a file starting from a certain line until to the end of file, 5) Search a given pattern in a file and replace with a new pattern and display the file, 6) Insert a given string at the beginning of each line of the file, 7) Insert a given string at the end of each line of the file

# How to run this file -  first do source 15.sh on terminal which displays Select menu for question 15 with its sub questions. Then enter corresponding number to execute that subquestion in select menu and then start entering the necessary information as asked for the subquestion to execute it.

#!/bin/bash

menu() {
	clear
	echo "---------------------------------------------------------"
	echo "Select menu for question 15"
	echo "----------------------------"
	echo "1 - q15-1 - Finds all lines containing search pattern"
	echo "2 - q15-2 - Lists lines not comtaining the search string"
	echo "3 - q15-3 - Match lines starting with pattern1 and ending in a second patern"
	echo "4 - q15-4 - Prints a file from the given input until the end of file"
	echo "5 - q15-5 - Pattern search and replace with a new pattern"
	echo "6 - q15-6 - Inserting a given at the beginning of each line of the file" 
	echo "7 - q15-7 - Inserting a given at the ending of each line of the file"
	echo "---------------------------------------------------------"
	echo "Enter your choice : "
}

read_option() {
	read opt
	case "$opt" in
		1)
			echo "Finds all the lines containing search pattern"
			echo "enter search pattern : "
			read srch
			echo "enter file name : "
			read fname
			sed -n "/$srch/p" "$(find /home/"$USER"/ -name "$fname" -type f)";;		
		2) 
			echo "List the lines not containing the search string1"
			echo "enter search pattern"
			read srch2
			echo "enter file name : "
			read fname2
			sed -n "/$srch2/d" "$(find /home/"$USER"/ -name "$fname2" -type f)"
			;;
		3) 
			echo "Match lines starting with a given pattern and ending in a second patern"
			echo "enter search pattern 1"
			read search1
			echo "enter search pattern 2"
			read search2
			echo "enter file name : "
			read fname
			sed -n "/$search1/,/$search2/p" "$(find /home/"$USER"/ -name "$fname" -type f)"
			;;
			
		4)
			echo "Printing the file starting from a certain line until the end of the file"
			echo "Enter start line number : "
		   	read li
		   	echo "Enter file name : "
		   	read fname
		   	sed -n "$li,\$p" "$(find /home/"$USER"/ -name "$fname" -type f)"
		   	;;
		5) 	echo "Pattern search and replace with a new pattern"
		   	echo "Enter search pattern : "
		   	read srch
		   	echo "Enter replace pattern : "
		   	read rplc
		   	echo "Enter file name : "
		   	read fname
		   	sed -i "s/$srch/$rplc/g" "$(find /home/"$USER"/ -name "$fname" -type f)"
			cat "$(find /home/"$USER"/ -name "$fname" -type f)"
			;;
		6) 	echo "Inserting a given at the beginning of each line of the file"
		   	echo "Enter string: "
		   	read srch
		   	echo "Enter file name : "
		   	read fname
		   	sed -i "1s/^/$srch/" "$(find /home/"$USER"/ -name "$fname" -type f)"
			;;		
		7) 
			echo "Inserting a given at the ending of each line of the file"
			echo "Enter string: "
		   	read str
		   	echo "Enter file name : "
		   	read fname
		   	sed -i "s/$/$str/" "$(find /home/"$USER"/ -name "$fname" -type f)"
			;;
	esac
}

menu
read_option
