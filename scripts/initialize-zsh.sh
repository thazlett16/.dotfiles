#!/usr/bin/env bash

rm ~/.bash

chsh -l
chsh -s $(which zsh)
