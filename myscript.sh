#!/bin/bash

# lab 8
# Akshay Gokani 040990942
# 20F_CST8102 323
# myscript.sh
# 11/25/2020

# This script presents the user with a Menu which allows the user to create and
# delete users it also allows the user to change the supplementary and
# intial groups the login shell and the expiration date of the user account 
# The menu is persistent and will repeat till the user press the Q key
# after a choice is made the program sleeps for 4 seconds before returning you to the menu


# while $choice does not equal Q print the menu and go through the choices
choice=""
while [[ "$choice" != "Q"  &&  "$choice" != "q" ]];
	do clear	
	echo "Choose one of the following options: "
	echo " A Create a user account "
	echo " B Delete a user account " 
	echo " C Change supplementary group for a user account "
	echo " D Change intial group for a user account "
	echo " E Change default login shell for a user account "
	echo " F Change account expiration date for a user account "
	echo " Q Quit "
	echo " What would you like to do?: "

	read choice

	echo " You enter $choice "

	if [[ "$choice" == "A" || "$choice" == "a" ]]
	then
		echo " You chose to create a new user."
	# create user with the parameter user entered 
       		echo -n  "Please enter the username you wish to create: "
       		read username
       		echo -n " Enter the absolute path for the users home directory: "
       		read directory
       		echo -n " Enter the absolute path of the default login shell: "
       		read shell
      		 useradd -s $shell -d $directory -m $username
                sleep 4
	elif [[ "$choice" = "B" || "$choice" = "b" ]]
	then
		echo " You chose to delete a user "
	# delete user and home directory
		echo -n " Please enter the username you wish to delete "
       		read username 
		userdel -r $username 
		sleep 4
	elif [[ "$choice" == "C" || "$choice" == "c" ]]
	then
		echo " you chose to change the supp group of the user."
	# usermod to change supplemntary group
		echo -n " Please enter the user who's group you would like to alter: "
		read username
		echo -n " Please enter the group name that will be added as a supplementary group to the account: "
		read group
		usermod -G $group $username
		sleep 4
	elif [[ "$choice" == "D" || "$choice" == "d" ]]
	then 
		echo " You chose to change intial group " 
	# usermod to change intial group 
		echo -n " Please enter the username of the account: "
		read username
		echo -n " Please enter the intial group of account: "
		read intialGroup
		usermod -g $intialGroup $username
		sleep 4
	elif [[ "$choice" == "E" || "$choice" == "e" ]]
	then
		echo " You chose to change the shell " 
	#change shell of user 
		echo -n " Please enter the username of the account: "
		read username
		echo -n " Please enter the shell you wish to use: "
		read shell
		usermod -s $shell $username
		sleep 4
	# change expiration date of user	
	elif [[ "$choice" == "F" || "$choice" == "f" ]]
	then
		echo " you chosose to change the expiration date "
		echo -n " please enter the username: "
		read username 
		echo -n " Please enter the expiration date (YYY-MM-DD): "
		read expDate
		echo -n " Please enter the new expiration date(YYYY-MM-DD): "
		read newExpDate
		chage -E $newExpDate $username
		sleep 4
 # this last one is not done yet come bak to it and see if it works 
	fi
done
