#!/bin/bash

# lab 9
# Akshay Gokani -040990942
# 323
# 11/30/2020

# this script file has funcitons called add and subtract that add/sub two integers and prints it to the screen
# it allows the user to enter the parameters directly in the command line and do the calculation but only
# if a '+' or '-'  is used as the thrid parameter
# if no param input a menu will appear that will allow user to calulate two numers through a interface 
# 3 different menu appear each uses 'x' to exit 
# if the program runs till completion is sleeps for 3 seconds and then repeats 

# function to add two integers
function add() {
  	echo $(($1 + $2))
}	

# function to sub two integers
function sub() {
	echo $(($1 - $2))
}

	if [[ "$2" = "+" ]];
	then 
		echo The result of adding $1 and $3 is $(add $1 $3)  
	elif [[ "$2" = "-" ]];
 	then 
		echo The result of $1 minus $3 is $(sub $1 $3)
	fi

# while choice does not = X print out the first Menu
while [[ "$choice" != "X" && "$choice" != "x" && "$1" = "" ]];	
do clear
	echo "Menu 1"
	echo
	echo "C) Calculation"
	echo "X) Exit"
	# read users choice 
	read choice

 
	# if x or X is pressed exit the program 
	if [[ "$choice" = "X" || "$choice" = "x" ]];
	then clear
		echo "you are exiting the program."
		exit
	fi
	
	# if choice = C or c display Menu 2
	if [[ "$choice" = "C" || "$choice" = "c" ]];
	then clear
		echo "Menu 2"
		echo

		# read and prompt for first integer
		read -p "Please enter an integer number or X to exit: " integer
		
		# if  X or x is pressed exit and clear screen
		if [[ "$integer" = "X" || "$integer" = "x" ]];
		then
			clear
			echo "you are exiting the program."
		 	exit
		fi

		# if x is not pressed show Menu 3 
		clear
		echo "Menu 3"
		echo
		echo "+) add"
		echo "-) Subtract"
		echo "X) Exit"
		
		# read choice of operation
		read op
		
		# if op = + then add the two numbers
		if [[ "$op" = "+" ]];
		then
			clear
			read -p "Enter the Second Number:  " integerB
			echo -n "The result of adding $integer and $integerB is "
			echo $(add $integer $integerB)
		# if op = - then sub the two numbers 
		elif [[ "$op" = "-" ]];
		then	
			clear
			read -p "Enter the Second Number:  " integerB
			echo -n "The result of subtracting $integer and $integerB is "
			echo $(sub $integer $integerB)
		# if = X or x exit the program
		elif [[ "$op" = "X" || "$op" = "x" ]];
		then
			clear
			echo " you exited the program "
			exit
		fi
	fi
	# sleep for 3 seconds 
	sleep 3
done	
