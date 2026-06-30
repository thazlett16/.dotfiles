#!/bin/bash

export HOST=$(hostname)

AUR_BUILD_DIR="$HOME/.local/share/aur"
AUR_PKG_DIR="$HOME/.dotfiles/packages/aur"

install_aur_package() {
    local pkg="$1"
    local src_dir="$AUR_PKG_DIR/$pkg"
    local build_dir="$AUR_BUILD_DIR/$pkg"

    if [ ! -d "$src_dir" ]; then
        echo "ERROR: No PKGBUILD found for $pkg in $src_dir"
        return 1
    fi

    echo "Building AUR package: $pkg"
    mkdir -p "$build_dir"
    cp -r "$src_dir"/. "$build_dir/"
    (cd "$build_dir" && makepkg -si --noconfirm --needed)
}

for file in ~/.dotfiles/packages/$HOST/*; do
    filename=$(basename "$file")

    if [ "$filename" = "aur" ]; then
        echo "--- Installing AUR packages from $file ---"
        while IFS= read -r pkg || [ -n "$pkg" ]; do
            [ -z "$pkg" ] && continue
            install_aur_package "$pkg"
        done < "$file"
    else
        echo "--- Installing official packages from $file ---"
        sudo pacman -S --needed --noconfirm - < "$file"
        sudo pacman -D --asexplicit - < "$file"
    fi
done
