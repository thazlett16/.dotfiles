#/bin/bash

sudo reflector --country "United States" --protocol https --latest 10 --sort age --save /etc/pacman.d/mirrorlist
