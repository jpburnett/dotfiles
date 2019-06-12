#!/bin/bash


## Coloring Variables
installMsg=$(tput setab 4; tput setaf 2;)
none=$(tput sgr0)

# Start by having a prompt to make sure I want to run this
echo "This is intended to run at the beginning to set up a system"
echo "That being said, would you like to conitnue? (y/n)"
read resp
if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
	sudo apt update && apt upgrade
    
    # the -e means escape characters used, just fyi
    echo -e $installMsg"installing zsh"$none
    sudo apt install zsh

    echo "installing vim:"
    sudo apt install vim  
	echo "Setup complete"
else
	echo "Setup script cancelled by user"
	return 1
fi
