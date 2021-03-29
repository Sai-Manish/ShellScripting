# Program Number: 7
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement an interactive file-handling shell program that offers the user choice of copying, removing, rename. Once the user has made a choice, the program ask user for the necessary information.

# How to run this file -  first do source 7.sh on terminal, after that asks to enter the choice which is displayed on the screen and then asks to enter necessary information which is required, which is executed after entering the information. 


#!/bin/bash

echo "Enter your choice 1 - copy, 2 -  remove, 3 - rename"
read ans
case "$ans" in
	1)
		echo "Enter src path"
		read csrcpath
		echo "Enter dest path"
		read cdestpath
		cp "$csrcpath" "$cdestpath"
		;;
	2)
		echo "Enter file name"
		read fname
		rm "$fname"
		;;
	3)
		echo "Enter current file name"
		read name
		echo "Enter new file name"
		read newname
		mv "$name" "$newname"
		;;
esac


