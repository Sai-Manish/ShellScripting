# Program Number: 10
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021

# Description: This program will implement a shell script to backup a given directory to a given file name  in your home directory. Both, the directory name and the backup file are passed as input.

# How to run this file -  first do source 10.sh on terminal, after that asks to enter directory name which is to be backedup, then enter the backup file name with which it is to be backed up and then it is compressed and moved to home directory. 

#!/bin/bash

echo Enter Directory name : 
read dir

echo Enter Backup file name :
read backupfile

tar cvf backup.tar "$(find /home/"$USER"/ -name "$dir" -type d)"
gzip backup.tar
mv backup.tar.gz /home/"$USER"/"$backupfile".tar.gz
