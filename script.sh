#!/bin/bash

# copy files to this directory
cp -r ~/.config/ ~/Desktop/dotfiles/.config
cp ~/.bash_profile ~/Desktop/dotfiles

# remove git subfolders
rm -rf ./.config/nvim/.git ./.config/nvim/.github ./.config/nvim/.gitignore

