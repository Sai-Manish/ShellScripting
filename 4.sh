# Program Number: 4
# Student Name: Sai Manish Sasanapuri; Register Number: IMT2018520
# Date:12-01-2021
# Description: This program will implement a shell program that will move all of the files you delete into the .recyclebin directory. This program first checks whether there is a folder with name recyclebin in home directory. If there is no directory called recyclebin in home directory we will create it, else we will move the file which is taken as command line argument and move it to recycle bin.
# How to run this file -  source 4.sh command line argument(filename).The file which is taken as command line argument is moved to recyclebin 

#!/bin/bash

if [ ! -f /home/$USER/recyclebin ]; then
	mkdir -p /home/$USER/recyclebin
fi
mv $1 ~/recyclebin

