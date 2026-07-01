#!/bin/bash

sudo pacman -Rns paru \
    paru-debug \
    yay \
    yay-debug \
    brave-bin \
    google-chrome \
    microsoft-edge-stable-bin \
    spotify \
    curseforge \
    minecraft-launcher \
    bruno-bin \
    jetbrains-toolbox;

pacman -Qm
