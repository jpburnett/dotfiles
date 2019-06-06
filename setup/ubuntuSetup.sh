#!/bin/bash

# Start by having a prompt to make sure I want to run this
echo "This is intended to run at the beginning to set up a system"
echo "That being said, would you like to conitnue? (y/n)"
read resp
if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
	sudo apt update && apt upgrade
    sudo apt install zsh
    
	echo "Setup complete"
else
	echo "Setup script cancelled by user"
	return 1
fi
