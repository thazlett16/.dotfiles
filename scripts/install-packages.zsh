#!/bin/zsh

export HOST=$(hostname)

for file in ~/.dotfiles/packages/$HOST/*; do
    echo "installing $file"
    paru -S --needed - < "$file"
    sudo pacman -D --asexplicit - < "$file"
done
