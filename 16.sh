# Program Number: 16
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a Shell script to (The input file will employee data and the following subquestions are have constarints to them according to the data.) 1) Display a given file. 2) Print the lines which match with a given pattern. 3)Print only a specific field in the file. 4) Format a given file with Name, Designation, Department and Salary headings and at the end of a file print Report Generated. 5) Find the employees, who has id > 200. 6) Find the list of employees in a Technology Department. 7) Print the number of employees in Technology Department.

# How to run this file -  first do source 16.sh on terminal which displays Select menu for question 15 with its sub questions. Then enter corresponding number to execute that subquestion in select menu and then start entering the necessary information as asked for the subquestion to execute it.

#!/bin/bash

menu() {
	clear
	echo "-------------------------------------------------------------"
	echo "Select menu for question 16"
	echo "----------------------------"
	echo "1 - q16-1 - Display the given file"
	echo "2 - q16-2 - Print the lines which match with a given pattern"
	echo "3 - q16-3 - Print specific field in the file" 
	echo "4 - q16-4 - Format a given file"
	echo "5 - q16-5 - Find the employees, who has id > 200"
	echo "6 - q16-6 - Find list of employees in a Technology Department"
	echo "7 - q16-7 - Print the number of employees in Technology Department"
	echo "-------------------------------------------------------------"
	echo "Enter your choice : "
}

read_option() {
	read opt
	case "$opt" in
		1) 	echo "Display the given file"
			echo "Enter filename : "
			read fname
			awk '{print;}' $(find /home/$USER/ -name "$fname" -type f)
			;;
		2) 	
			echo Print the lines which match with a given pattern
			echo "Enter match pattern"
			read pattern
			echo "Enter filename : "
			read fname
			awk "/$pattern/" $(find /home/$USER/ -name "$fname" -type f)
			;;
		3) 	echo Prints specific field in the file already hardcodded.
			echo "Enter filename : "
			read fname
			awk '{print $2,$5;}' $(find /home/$USER/ -name "$fname" -type f)
			;;
		4) 	echo Format a given file with Name, Designation, Department and Salary headings and at the end of a file print report generated
			echo "Enter filename : "
			read fname
			awk 'BEGIN {print "Name\tDesignation\tDepartment\tSalary";} {print $2,"\t",$3,"\t",$4,"\t",$NF,"\t";} END{print "Report Generated!!!!"}' $(find /home/$USER/ -name "$fname" -type f)
			;;
		5) 	echo "Find the employees, who has id > 200"
			echo "Enter filename : "
			read fname
			awk '$1 >200' $(find /home/$USER/ -name "$fname" -type f)
			;;
		6) 	echo Printing list of employees in a Technology Department
			echo "Enter filename : "
			read fname
			awk '$4 ~/Technology/' $(find /home/$USER/ -name "$fname" -type f)	
			;;
		7) 	echo Printing no:of employees in Technology department
			awk 'BEGIN { COUNT=0;}
			$4 ~ /Technology/ { count++; }
			END { print "No:of employees in Technology Dept =",count;}' $(find /home/$USER/ -name "$fname" -type f);;

	esac
}

menu
read_option
