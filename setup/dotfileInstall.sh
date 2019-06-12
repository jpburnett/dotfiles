#!/bin/sh

############################
# ubuntuSetup.sh
# Used for either setting up ubuntu from scratch or updating dotfiles I guess
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

#### Variables ####

dir=~/dotfiles		# directory where dotfiles will live
olddir=~/old_dotfiles	# Where all the old dotfiles are banished to

# all of the files or folders that will be symlinked to the home directory
dotfiles="zshrc vimrc functions aliases asciiart"

# Folders that will go to ./config/
# configFiles=""

#### Just in case ####

# create dotfiles_old
echo "Creating $olddir to backup any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

#### Getting Down to Business ####
start_setup () {
	echo "This utility will symlink the files in this repo to the home directory"
	echo "Conitnue? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		for file in $dotfiles ; do
			echo "Moving existing dotfiles from ~.file to $olddir"
			mv ~/.$file $olddir
			echo "Creating symlink to $file in $HOME"
			ln -s "$dir/$file" "~/.$file"
		done
		echo "Symlinking complete"
	else
		echo "Symlinking cancelled by user"
		return 1
	fi
}

start_setup
