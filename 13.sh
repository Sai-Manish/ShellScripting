# Program Number: 13
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script to print a multiplication table of given number upto 10.

# How to run this file -  first do source 13.sh on terminal, after that asks to enter number for which we want multipication table and then prints the ultipication table of the number.

#!/bin/bash

echo Prints Multiplication table of a given number upto 10 
echo enter number :
read num
c=0

echo "Multiplication table of $num :"
while [ $c -le 10 ]; do
	echo "$num x $c = `expr $c \* $num`"
	c=`expr $c + 1`
done
