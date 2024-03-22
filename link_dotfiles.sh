#!/bin/bash
#
# Install these packages after system upgrade
sudo pacman -Syu
sudo pacman -S yay
yay -Syu
yay -S spotify nvim lazygit kitty firefox ttf-firacode-nerd tmux ripgrep


# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
