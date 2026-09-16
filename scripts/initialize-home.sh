#!/usr/bin/env bash

if [[ ! -d ~/.cache ]]; then
	mkdir ~/.cache
fi
if [[ ! -d ~/.config ]]; then
	mkdir ~/.config
fi
if [[ ! -d ~/.local ]]; then
	mkdir ~/.local
fi
if [[ ! -d ~/.local/bin ]]; then
	mkdir ~/.local/bin
fi
if [[ ! -d ~/.local/share ]]; then
	mkdir ~/.local/share
fi
if [[ ! -d ~/.local/share/managed ]]; then
	mkdir ~/.local/share/managed
fi
if [[ ! -d ~/.local/state ]]; then
	mkdir ~/.local/state
fi

stow -R -v -t ~ -d ~/.dotfiles/home .
