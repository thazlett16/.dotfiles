#!/bin/zsh

if [[ ! -d ~/.software ]]; then
    mkdir ~/.software
fi

if [[ ! -d ~/.software/yay ]]; then
    git clone https://aur.archlinux.org/yay.git ~/.software/yay
    cd ~/.software/yay
    makepkg -si
fi
