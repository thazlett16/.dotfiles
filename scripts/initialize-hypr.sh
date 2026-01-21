#!/bin/bash

# if [[ -f ~/.config/hypr/hyprland.conf ]]; then
#     sudo rm ~/.config/hypr/hyprland.conf
# fi

if [[ ! -f ~/.config/hypr/hyprland.conf ]]; then
    case "$(hostname)" in
        rivendell)
            ln -s ~/.config/hypr/hyprland-rivendell.conf ~/.config/hypr/hyprland.conf
        ;;
        shire)
            ln -s ~/.config/hypr/hyprland-shire.conf ~/.config/hypr/hyprland.conf
        ;;
        *)
            echo "UNHANDLED HOSTNAME"
        ;;
    esac
fi
