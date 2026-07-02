#!/bin/bash

#rm -rf ~/.config/CurseForge
#rm -rf ~/.cache/curseforge-updater

#rm -rf ~/.config/google-chrome
#rm -rf ~/.cache/google-chrome

#rm -rf ~/.config/BraveSoftware
#rm -rf ~/.cache/BraveSoftware

#rm -rf ~/.config/microsoft-edge
#rm -rf ~/.cache/microsoft-edge

#rm -rf ~/.config/spotify
#rm -rf ~/.cache/spotify

# minecraft-launcher has no separate config/cache dirs -- it dumps everything
# (including saves, screenshots, and login state) into ~/.minecraft, so only
# the actual regenerable/redownloadable pieces are listed here, never the
# whole directory. The new package redirects this to
# $XDG_DATA_HOME/minecraft-launcher via --workDir, so this only applies to
# the old AUR install's leftovers.
#rm -rf ~/.minecraft/assets
#rm -rf ~/.minecraft/libraries
#rm -rf ~/.minecraft/runtime
#rm -rf ~/.minecraft/versions
#rm -rf ~/.minecraft/webcache2
#rm -rf ~/.minecraft/launcher
#rm -rf ~/.minecraft/staging
#rm -rf ~/.minecraft/update_files
#rm -rf ~/.minecraft/bin
#rm -rf ~/.minecraft/downloads
#rm -rf ~/.minecraft/logs
#rm -f ~/.minecraft/bootstrap_log*.txt
#rm -f ~/.minecraft/launcher_log*.txt
