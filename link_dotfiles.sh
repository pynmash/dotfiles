#!/bin/bash
#
# Install these packages after system upgrade
sudo pacman -Syu
sudo pacman -S yay
yay -Syu
yay -S spotify nvim lazygit kitty firefox ttf-fira-code



# Symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc

