# Program Number: 1
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021
# Description: This program will implement shell script to count the number of block device files in /dev directory. 
# How to run this file -  To run this file do source 1.sh.This will print no:of block devices in \dev directory

#!/bin/bash

echo "No of block device files in /dev directory : "
ls /dev/ -l|grep ^b -c
