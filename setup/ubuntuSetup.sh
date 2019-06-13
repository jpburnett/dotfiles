#!/bin/bash


## Coloring Variables
installMsg=$(tput setab 4; tput setaf 2;)

# if a user exits, black backgroud w/ red text
userExit=$(tput setab 0; tput setaf 1;)
# resets things
none=$(tput sgr0)

### Start the real scripting

# Start by having a prompt to make sure I want to run this
echo "This is intended to run at the beginning to set up a system"
echo "That being said, would you like to conitnue? (y/n)"
read resp
if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
	sudo apt update && apt upgrade
    
    # the -e means escape characters used, just fyi
    echo -e $installMsg"installing zsh"$none
    sudo apt install zsh

    echo -e $installMsg"installing vim:"$none
    sudo apt install vim

    echo -e $installMsg"installing ssh"$none
    sudo apt install openssh-server

    echo -e $installMsg"git"$none
    sudo apt install git

	echo "Setup complete"
else
	echo -e $userExit"Setup script cancelled by user"$none
fi
