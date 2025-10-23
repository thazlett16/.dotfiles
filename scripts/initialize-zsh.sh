#/bin/bash

rm ~/.bashrc
rm ~/.bash-logout
rm ~/.bash-profile

chsh -l
chsh -s $(which zsh)
