#!/bin/sh

#This script updates the Git on this directory


###First check if use supplied the commit message as an argument to this script###
if [[ $# -eq 0 ]] ; then
    echo 'No commit description supplied. Exiting script!'
    exit 1
fi
############################


#######Update the files from their source#######

#####VS Code Settings files#####
cp -r ~/Library/Application\ Support/Code/User/ ~/Projects/Tools/Configuration\ files\ -\ Git/VSCode/User



#####Run the Git upload command#####
git add *
git commit -m "$1" 
git push origin master
