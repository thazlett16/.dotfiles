#!/bin/bash

HOST=$(hostname)
pkgrootpath=~/.dotfiles/packages
buildrootpath=~/.local/share/managed

for filepath in "$pkgrootpath/$HOST"/*; do
    if [ ! -e "$filepath" ]; then
        continue
    fi

    filename=$(basename "$filepath")

    if [ "$filename" = "managed" ]; then
        echo "--- Installing locally managed packages from $filepath ---"

        while IFS= read -r pkg || [ -n "$pkg" ]; do
            pkgpath="$pkgrootpath"/managed/"$pkg"

            echo "--- Locally managed package: $pkg at location: $pkgpath ---"

            if [ ! -d "$pkgpath" ]; then
                echo "    ERROR: No directory found for $pkg at $pkgpath"
                continue
            elif [ ! -f "$pkgpath/PKGBUILD" ]; then
                echo "    ERROR: No PKGBUILD found for $pkg in $pkgpath"
                continue
            elif [ -f "$pkgpath/get-latest-version.sh" ]; then
                currentversion=$(grep '^pkgver=' "$pkgpath/PKGBUILD" | cut -d'=' -f2 | tr '_' '-')
                latestversion=$(bash "$pkgpath/get-latest-version.sh")

                echo "    $pkg current version: $currentversion"
                echo "    $pkg latest  version: $latestversion"
            fi

            mkdir -p "$buildrootpath"
            cp -r "$pkgpath/." "$buildrootpath/$pkg"
            (cd "$buildrootpath/$pkg" && makepkg -sci --needed --noconfirm)
        done < "$filepath"

        desktop-file-validate ~/.local/share/applications/curseforge.desktop
    else
        echo "--- Installing official packages from $filepath ---"
        sudo pacman -S --needed --noconfirm - < "$filepath"
        sudo pacman -D --asexplicit - < "$filepath"
    fi
done
