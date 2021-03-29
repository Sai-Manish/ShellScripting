# Program Number: 8
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script that takes a login name and reports when that person last logged in.

# How to run this file -  first do source 8.sh on terminal, after that asks to enter login ID then displays the last logged in details. 


#!/bin/bash

echo "Enter login ID"
read logid
last -1 "$logid" 

