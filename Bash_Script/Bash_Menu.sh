#!/bin/bash

#creating a bash script to allow the user to execute multiple commands
while true
do
    echo "1. List all files in current directory"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup Files"
    echo "6. Exit"
    read -p "Please choose from the following options: " option

    case $option in
        1)
            echo -e "Listing all files in current directory"
            ls;;
        2)
            echo -e "Showing free disk space"
            df -h;;
        3)
            echo -e "System Path: $PATH";;
        4)
            echo -e "Displaying command history"
            cat ~/.bash_history;;
        5)
           read -p "Enter directory name to backup: " directory
           mkdir BackUp
           cp -r $directory BackUp
           ls BackUp;;
        6)
            echo -e "Exiting Script";
            break;;
    esac
done