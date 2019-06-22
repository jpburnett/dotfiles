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

    echo -e $installMsg "Making projects and dotfile directories"$none
    mkdir Projects
    mkdir dotfiles
    echo "done"

    # the -e means escape characters used, just fyi
    echo -e $installMsg"installing zsh"$none
    sudo apt install zsh

    echo -e $installMsg"installing vim:"$none
    sudo apt install vim

    echo -e $installMsg"installing ssh"$none
    sudo apt install openssh-server

    echo -e $installMsg"installing git"$none
    sudo apt install git

    echo -e $installMsg"installing vim-plug"$none
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo -e $installMsg"installing antigen (zsh)"

	echo "Setup complete"
else
	echo -e $userExit"Setup script cancelled by user"$none
fi



install_antigen () {
    echo "Starting Antigen Process..."
    echo "Navigating to dotfiles directory"
    echo "Making zsh directory"
    mkdir zsh
    echo $installMsg"Installing zsh-antigen..."$none
    curl -L git.io/antigen > antigen.zsh
    echo "Done, returning to home directory"
    cd $HOME 

}
