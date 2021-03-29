# Program Number: 11
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script to check how much space is used by each directory of a given file system(directory). The name of the directory has to be provided as input.

# How to run this file -  first do source 11.sh on terminal, after that asks to enter directory name then displays the space used by by each subdirectory. 

#!/bin/bash

echo "Enter Directory name"
read fsname
du -h $(find /home -name "$fsname" -type d)
