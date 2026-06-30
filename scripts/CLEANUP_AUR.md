Everything looks clean. Here's a summary of what was done and the commands you need to run:

---
What was set up:

- packages/aur/<pkg>/ — PKGBUILD + source files for all 9 AUR packages, copied from AUR repos and ready for you to edit/maintain
- packages/<host>/aur — host-specific AUR package lists (shire/rivendell get all 9, mordor gets 3)
- AUR packages removed from shared desktop, programming, gaming files
- install-packages.sh updated to use pacman for official packages and makepkg for AUR (copies to ~/.local/share/aur/<pkg>/ before building, so no build artifacts in dotfiles)

---
Commands to run now:

# Remove paru and yay (and their debug packages)
sudo pacman -Rns paru paru-debug yay yay-debug

# Verify they're gone
pacman -Qm | grep -E 'paru|yay'

---
Workflow for updating an AUR package in the future:

# Edit the PKGBUILD (or fetch updates manually from AUR)
$EDITOR ~/.dotfiles/packages/aur/brave-bin/PKGBUILD

# Rebuild and install
mkdir -p ~/.local/share/aur/brave-bin
cp -r ~/.dotfiles/packages/aur/brave-bin/. ~/.local/share/aur/brave-bin/
cd ~/.local/share/aur/brave-bin && makepkg -si

One thing to flag: ttf-heavydata-nerd and ttf-liberation-mono-nerd — I left these in the official desktop file but couldn't verify they're in the official repos (they weren't in your pacman -Qm output, so they might just not be installed yet, or they might be AUR). Worth checking with pacman -Si ttf-heavydata-nerd before your next install.
