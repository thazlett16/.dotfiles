#!/bin/bash

if [[ ! -d ~/.config/tmux ]]; then
    mkdir ~/.config/tmux
fi

if [[ ! -d ~/.config/tmux/plugins ]]; then
    mkdir ~/.config/tmux/plugins
fi

if [[ ! -d ~/.config/tmux/plugins/tpm ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi
