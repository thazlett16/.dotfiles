#!/usr/bin/env bash

flatpak install flathub org.prismlauncher.PrismLauncher

flatpak override --user --show org.prismlauncher.PrismLauncher

flatpak override --user --reset org.prismlauncher.PrismLauncher

flatpak override --user --show org.prismlauncher.PrismLauncher
