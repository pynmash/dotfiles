#!/bin/bash
#
# Install these packages after system upgrade

echo "-----------------------------------------------"
echo "Updating system and installing needed packages"
echo "-----------------------------------------------"
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu
yay -S spotify pulseaudio pavucontrol neovim lazygit kitty firefox ttf-firacode-nerd tmux ripgrep zsh eza fzf bat stow flameshot qtile rofi

echo "---------------------------"
echo "Installing Starship Prompt"
echo "---------------------------"
# Install Starship prompt
# curl -sS https://starship.rs/install.sh | sh

echo "-----------------------"
echo "Swtiching to ZSH shell"
echo "-----------------------"
# Switch shells
chsh -s /usr/bin/zsh

# Set up git
echo "---------------"
echo "Setting up Git"
echo "---------------"

# Set up user name and email
echo "Set user.name:"
read USER_NAME
echo "Set user.email:"
read USER_EMAIL
git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"

# Set default branch name
git config --global init.defaultBranch main

# Enable colourful output
git config --global init.defaultBranch main

# No rebase
git config --global pull.rebase false

# Verify name and email
git config --get user.name
git config --get user.email

# Create SSH key
ssh-keygen -t ed25519 -C "$USER_EMAIL"
SSH_KEY=$(cat ~/.ssh/id_ed25519.pub)
echo "Add the following SSH Key to github.com and press ENTER to authenticate"
echo "SSH Key: $SSH_KEY"
read RETURN
ssh -T git@github.com

# echo "----------------------"
# echo "Setting up GitHub CLI"
# echo "----------------------"
# gh auth login

echo "-----"
echo "Done"
echo "-----"
echo "It is recomended to log out and back in to source everthing correctly"
