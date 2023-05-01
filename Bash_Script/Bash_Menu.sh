#!/bin/bash

#creating a bash script to allow the user to execute multiple commands
#create variables before main body




do
    select option in "List Files" "Show free disk space" "Show system path" "Display command history" "Backup Files" "Exit"

    case $option in
        "List Files")
            echo -e "Listing all files in current directory";
            ls;;
        "Show free disk space")
            echo -e "Showing free disk space";
            df -h;;
        "Show system path")
            echo -e "System Path: $PATH";;
        "Display command history")
            echo -e "Displaying command history";
            cat ~/.bash_history;;
        "Backup Files")
           read -p "Enter directory name to backup: " directory
           mkdir BackUp
           cp -r $directory BackUp
           ls BackUp;;
        "Exit")
            echo -e "Exiting Script";
            break;;
    esac
done