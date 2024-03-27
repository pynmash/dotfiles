#!/bin/bash
#
# Install these packages after system upgrade
sudo pacman -Syu
sudo pacman -S yay git
yay -Syu
yay -S spotify nvim lazygit kitty firefox ttf-firacode-nerd tmux ripgrep dmenu zsh eza fzf bat stow


# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Switch shells
chsh -s /usr/bin/zsh

