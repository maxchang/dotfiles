#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dev/dotfiles          # dotfiles directory
files="bashrc vimrc vim gvimrc"    # list of files/folders to symlink in homedir

##########

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -fs $dir/$file ~/.$file
done
