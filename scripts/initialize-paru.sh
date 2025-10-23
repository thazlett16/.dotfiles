#!/bin/bash

if [[ ! -d ~/.software ]]; then
    mkdir ~/.software
fi

if [[ ! -d ~/.software/paru ]]; then
    git clone https://aur.archlinux.org/paru.git ~/.software/paru
    cd ~/.software/paru
    makepkg -si
fi
