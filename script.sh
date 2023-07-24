#!/bin/bash
  
# remove current files
rm -rf ~/Desktop/dotfiles/.zshrc
rm -rf ~/Desktop/dotfiles/.config/tmux
rm -rf ~/Desktop/dotfiles/.config/alacritty
rm -rf ~/Desktop/dotfiles/.oh-my-zsh
rm -rf ~/Desktop/dotfiles/.config/nvim/lua/custom

# copy files to this directory
cp ~/.zshrc ~/Desktop/dotfiles/.zshrc
cp -r  ~/.config/tmux/ ~/Desktop/dotfiles/.config/tmux
cp -r ~/.config/alacritty/ ~/Desktop/dotfiles/.config/alacritty
cp -r ~/.oh-my-zsh/ ~/Desktop/dotfiles/.oh-my-zsh
cp -r ~/.config/nvim/lua/custom/ ~/Desktop/dotfiles/.config/nvim/

# remove git directories nested
rm -rf ~/Desktop/dotfiles/.config/tmux/.git
rm -rf ~/Desktop/dotfiles/.config/alacritty/.git
rm -rf ~/Desktop/dotfiles/.oh-my-zsh/.git
rm -rf ~/Desktop/dotfiles/.config/tmux/plugins/tmux-mem-cpu-load/.git
rm -rf ~/Desktop/dotfiles/.config/tmux/plugins/tmux-mem-cpu-load/.github/

