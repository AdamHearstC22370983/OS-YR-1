#!/bin/bash
#exports the bash script so that it can be executed from any directory

set -o history
#creating a bash script to allow the user to execute multiple commands
while true
do
    #here is our menu for the user
    echo " " #gives space between the menus that are created while in the loop
    echo "----------Bash Script----------"
    echo "1. List all files in current directory"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup Files"
    echo "6. Exit"
    echo "--------------------------------"
    read -p "Please choose from the following options, 1-6: " option #this will take in user input for our option variable

    case $option in
        1)
            echo -e "Listing all files in current directory"
            ls;; #lists all files in the current directory
        2)
            echo -e "Showing free disk space"
            df -h;; #shows all used and unused disk space
        3)
            echo -e "System Path: $PATH";; #shows the full current system path
        4)
            echo -e "Displaying command history: "
            history;; #shows the command history
        5)
           read -p "Enter directory name to backup: " directory
           mkdir BackupFolder
           cp -r $directory BackupFolder
           ls BackupFolder;; #backs up a directory including all of its files
        6)
            echo -e "Exiting Script";
            break;; #exits the script, ends the program
        *)
            echo "Invalid entry, please pick an option from the menu provided";;
    esac
done