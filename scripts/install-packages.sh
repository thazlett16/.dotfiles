#!/bin/bash

export HOST=$(hostname)

for file in ~/.dotfiles/packages/$HOST/*; do
    echo "installing $file"
    paru -S --needed --noconfirm - < "$file"
    sudo pacman -D --asexplicit - < "$file"
done
