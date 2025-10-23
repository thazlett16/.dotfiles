#/bin/bash

rm ~/.bashrc
rm ~/.bash-logout
rm ~/.bash-profile

chsh -s $(which zsh)
