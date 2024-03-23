#!/bin/bash
#
# Install these packages after system upgrade
sudo pacman -Syu
sudo pacman -S yay
yay -Syu
yay -S spotify nvim lazygit kitty firefox ttf-firacode-nerd tmux ripgrep dmenu zsh eza


# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Create needed directories if they don't exist already
DIRS=( ".config" ".config/i3" )

for dir in "${DIRS[@]}"
    do
        if [ ! -d "${HOME}/${dir}" ]; then
            echo "Creating $dir"
            mkdir "$dir"
        fi
    done




# Symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
