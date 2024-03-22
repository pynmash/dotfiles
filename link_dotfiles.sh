#!/bin/bash
#
# Install these packages after system upgrade
sudo pacman -Syu
sudo pacman -S yay
yay -Syu
yay -S spotify nvim lazygit kitty firefox ttf-fira-code tmux
yay -S spotify nvim lazygit kitty firefox ttf-firacode-nerd tmux



# Symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

