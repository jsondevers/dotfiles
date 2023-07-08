#!/bin/bash

# copy files to this directory
cp -r ~/.config/ ~/Desktop/dotfiles/.config
cp ~/.bash_profile ~/Desktop/dotfiles

# remove annoying files
rm -rf .config/nvim/.**
git rm -rf .config/nvim/.**
