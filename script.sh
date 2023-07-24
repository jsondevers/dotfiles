#!/bin/bash
  
# copy files to this directory
cp ~/.zshrc ~/Desktop/dotfiles/.zshrc
cp ~/.config/tmux/tmux.conf ~/Desktop/dotfiles/.config/tmux/tmux.conf
cp -r ~/.config/nvim/lua/custom/ ~/Desktop/dotfiles/.config/nvim/
cp ~/.config/alacritty/alacritty.toml ~/Desktop/dotfiles/.config/alacritty/alacritty.toml 
# remove git directories nested
rm -rf ~/Desktop/dotfiles/.config/tmux/.git
rm -rf ~/Desktop/dotfiles/.config/alacritty/.git
rm -rf ~/Desktop/dotfiles/.oh-my-zsh/.git
