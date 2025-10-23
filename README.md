# How to setup a new environment

## Arch Installer

1. Setup installer with ISO on drive
2. Boot into drive
3. Execute the following:

```shell
pacman -Sy archlinux-keyring
pacman -Sy archinstall
archinstall --config-url https://raw.githubusercontent.com/thazlett16/.dotfiles/refs/heads/master/cfg.json
```

4. Then set:
    - disk config (currently using ext4 with separate partition and no lvm/encryption. Might check out btrfs here eventually)
    - hostname (These are documented in private gist)
    - user account (Only set user, no root)
    - profile/graphics

5. Run installer
6. Reboot
7. Then login to github:

```shell
gh auth login
```

8. Then begin executing the relevant scripts in order:

```shell
git clone https://github.com/thazlett16/.dotfiles.git

~/.dotfiles/scripts/initialize-projects.sh
~/.dotfiles/scripts/initialize-obsidian.sh
~/.dotfiles/scripts/initialize-rust.sh
~/.dotfiles/scripts/initialize-paru.sh
~/.dotfiles/scripts/initialize-yay.sh
~/.dotfiles/scripts/install-packages.sh
~/.dotfiles/scripts/initialize-home.sh
~/.dotfiles/scripts/initialize-zsh.sh
~/.dotfiles/scripts/initialize-tmux.sh
~/.dotfiles/scripts/initialize-gaming.sh
```
9. Reboot

## All Done! Other config can be documented here as needed per my needs
