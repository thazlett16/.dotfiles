#!/bin/bash

if [[ ! -d ~/gamingProjects ]]; then
    mkdir ~/gamingProjects
fi

if [[ ! -d ~/gamingProjects/minecraft-hosting ]]; then
    git clone https://github.com/thazlett16/minecraft-hosting.git ~/gamingProjects/minecraft-hosting
fi
