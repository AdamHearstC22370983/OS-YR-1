#!/bin/bash

#create variables before main body



select option in "List Files" "Show free disk space" "Show system path" "Display command history" "Backup Files" "Exit"
do

    case $option in
        "List Files")
            echo -e "Listing all files in current directory";
            ls;;
        "Show free disk space")
            echo -e "Showing free disk space";
            ;;
        "Show system path")
            echo -e "System Path: $PATH";;
        "Display command history")
            echo -e "Displaying command history";
            ;;
        "Backup Files")
            ;;
        "Exit")
            echo -e "Exiting Script";
            break;;
while $option != 6