#!/bin/bash

HOST=$(hostname)
pkgrootpath=~/.dotfiles-aur-dependence-adjustments/packages

for filepath in "$pkgrootpath/$HOST"/*; do
    if [ ! -e "$filepath" ]; then
        continue
    fi

    filename=$(basename "$filepath")

    if [ "$filename" = "aur" ]; then
        echo "--- Installing AUR packages from $filepath ---"
        while IFS= read -r pkg || [ -n "$pkg" ]; do
            pkgpath="$pkgrootpath"/aur/"$pkg"

            if [ ! -d "$pkgpath" ]; then
                echo "ERROR: No directory found for $pkg at $pkgpath"
                continue
            elif [ ! -f "$pkgpath/PKGBUILD" ]; then
                echo "ERROR: No PKGBUILD found for $pkg in $pkgpath"
                continue
            elif [ ! -f "$pkgpath/get-latest-version.sh" ]; then
                echo "ERROR: No latest-version script found for $pkg in $pkgpath"
                continue
            else
                currentversion=$(grep '^pkgver=' "$pkgpath/PKGBUILD" | cut -d'=' -f2 | tr '_' '-')
                latestversion=$(bash "$pkgpath/get-latest-version.sh")

                if [ "$currentversion" = "$latestversion" ]; then
                    echo "--- Local AUR package: $pkg at location: $pkgpath up to date ---"
                    echo "--- $pkg version: $currentversion ---"
                else
                    echo "--- Local AUR package: $pkg at location: $pkgpath needs updating ---"
                    echo "--- $pkg current version: $currentversion ---"
                    echo "--- $pkg latest  version: $latestversion ---"
                fi
            fi
        done < "$filepath"
    else
        echo "--- Installing official packages from $filepath ---"
#        sudo pacman -S --needed --noconfirm - < "$filepath"
#        sudo pacman -D --asexplicit - < "$filepath"
    fi
done
