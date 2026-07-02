#!/bin/bash

if [[ ! -d ~/aurProjects ]]; then
    mkdir ~/aurProjects
fi

if [[ ! -d ~/aurProjects/curseforge ]]; then
    git clone https://aur.archlinux.org/curseforge.git ~/aurProjects/curseforge
#    (cd ~/aurProjects/curseforge && makepkg -c --needed --noconfirm)
fi

if [[ ! -d ~/aurProjects/brave-bin ]]; then
    git clone https://aur.archlinux.org/brave-bin.git ~/aurProjects/brave-bin
fi

if [[ ! -d ~/aurProjects/bruno-bin ]]; then
    git clone https://aur.archlinux.org/bruno-bin.git ~/aurProjects/bruno-bin
fi

if [[ ! -d ~/aurProjects/google-chrome ]]; then
    git clone https://aur.archlinux.org/google-chrome.git ~/aurProjects/google-chrome
fi

if [[ ! -d ~/aurProjects/jetbrains-toolbox ]]; then
    git clone https://aur.archlinux.org/jetbrains-toolbox.git ~/aurProjects/jetbrains-toolbox
fi

if [[ ! -d ~/aurProjects/microsoft-edge-stable-bin ]]; then
    git clone https://aur.archlinux.org/microsoft-edge-stable-bin.git ~/aurProjects/microsoft-edge-stable-bin
fi

if [[ ! -d ~/aurProjects/minecraft-launcher ]]; then
    git clone https://aur.archlinux.org/minecraft-launcher.git ~/aurProjects/minecraft-launcher
fi

if [[ ! -d ~/aurProjects/spotify ]]; then
    git clone https://aur.archlinux.org/spotify.git ~/aurProjects/spotify
fi

if [[ ! -d ~/aurProjects/paru ]]; then
    git clone https://aur.archlinux.org/paru.git ~/aurProjects/paru
fi

if [[ ! -d ~/aurProjects/paru-debug ]]; then
    git clone https://aur.archlinux.org/paru-debug.git ~/aurProjects/paru-debug
fi

if [[ ! -d ~/aurProjects/yay ]]; then
    git clone https://aur.archlinux.org/yay.git ~/aurProjects/yay
fi

if [[ ! -d ~/aurProjects/yay-debug ]]; then
    git clone https://aur.archlinux.org/yay-debug.git ~/aurProjects/yay-debug
fi

if [[ ! -d ~/codingProjects ]]; then
    mkdir ~/codingProjects
fi

if [[ ! -d ~/codingProjects/workProjects ]]; then
    mkdir ~/codingProjects/workProjects
fi

if [[ ! -d ~/codingProjects/personalProjects ]]; then
    mkdir ~/codingProjects/personalProjects
fi

if [[ ! -d ~/codingProjects/personalProjects/thaz-claude-container ]]; then
    git clone https://github.com/thazlett16/thaz-claude-container.git ~/codingProjects/personalProjects/thaz-claude-container
fi

if [[ ! -d ~/codingProjects/personalProjects/thazstack-boilerplate ]]; then
    git clone https://github.com/thazlett16/thazstack-boilerplate.git ~/codingProjects/personalProjects/thazstack-boilerplate
fi

if [[ ! -d ~/codingProjects/personalProjects/thaz-utils ]]; then
    git clone https://github.com/thazlett16/thaz-utils.git ~/codingProjects/personalProjects/thaz-utils
fi

if [[ ! -d ~/codingProjects/personalProjects/scratchpad ]]; then
    git clone https://github.com/thazlett16/scratchpad.git ~/codingProjects/personalProjects/scratchpad
fi

if [[ ! -d ~/codingProjects/personalProjects/i18n-product ]]; then
    git clone https://github.com/thazlett16/i18n-product.git ~/codingProjects/personalProjects/i18n-product
fi

if [[ ! -d ~/codingProjects/personalProjects/rust-tutorial ]]; then
    git clone https://github.com/thazlett16/rust-tutorial.git ~/codingProjects/personalProjects/rust-tutorial
fi

if [[ ! -d ~/codingProjects/personalProjects/rust-playground ]]; then
    git clone https://github.com/thazlett16/rust-playground.git ~/codingProjects/personalProjects/rust-playground
fi

if [[ ! -d ~/codingProjects/material ]]; then
    mkdir ~/codingProjects/material
fi

if [[ ! -d ~/codingProjects/material/material-ui ]]; then
    git clone https://github.com/mui/material-ui.git ~/codingProjects/material/material-ui
fi

if [[ ! -d ~/codingProjects/material/mui-x ]]; then
    git clone https://github.com/mui/mui-x.git ~/codingProjects/material/mui-x
fi

if [[ ! -d ~/codingProjects/material/base-ui ]]; then
    git clone https://github.com/mui/base-ui.git ~/codingProjects/material/base-ui
fi

if [[ ! -d ~/codingProjects/opensource ]]; then
    mkdir ~/codingProjects/opensource
fi

if [[ ! -d ~/codingProjects/opensource/tanstarter-plus ]]; then
    git clone https://github.com/mugnavo/tanstarter-plus.git ~/codingProjects/opensource/tanstarter-plus
fi

if [[ ! -d ~/codingProjects/opensource/tsu-stack ]]; then
    git clone https://github.com/tsu-moe/tsu-stack.git ~/codingProjects/opensource/tsu-stack
fi

if [[ ! -d ~/codingProjects/opensource/adobe-react-spectrum ]]; then
    git clone https://github.com/adobe/react-spectrum.git ~/codingProjects/opensource/adobe-react-spectrum
fi

if [[ ! -d ~/codingProjects/opensource/valibot ]]; then
    git clone https://github.com/open-circle/valibot.git ~/codingProjects/opensource/valibot
fi

if [[ ! -d ~/codingProjects/opensource/ts-rest ]]; then
    git clone https://github.com/ts-rest/ts-rest.git ~/codingProjects/opensource/ts-rest
fi

if [[ ! -d ~/codingProjects/opensource/heroui ]]; then
    git clone https://github.com/heroui-inc/heroui.git ~/codingProjects/opensource/heroui
fi

if [[ ! -d ~/codingProjects/opensource/jolly-ui ]]; then
    git clone https://github.com/jolbol1/jolly-ui.git ~/codingProjects/opensource/jolly-ui
fi

if [[ ! -d ~/codingProjects/opensource/flowbite ]]; then
    git clone https://github.com/themesberg/flowbite.git ~/codingProjects/opensource/flowbite
fi

if [[ ! -d ~/codingProjects/opensource/skeleton ]]; then
    git clone https://github.com/skeletonlabs/skeleton.git ~/codingProjects/opensource/skeleton
fi

if [[ ! -d ~/codingProjects/tanStack ]]; then
    mkdir ~/codingProjects/tanStack
fi

if [[ ! -d ~/codingProjects/tanStack/tanstack-com ]]; then
    git clone https://github.com/TanStack/tanstack.com.git ~/codingProjects/tanStack/tanstack-com
fi

if [[ ! -d ~/codingProjects/tanStack/query ]]; then
    git clone https://github.com/TanStack/query.git ~/codingProjects/tanStack/query
fi

if [[ ! -d ~/codingProjects/tanStack/router ]]; then
    git clone https://github.com/TanStack/router.git ~/codingProjects/tanStack/router
fi

if [[ ! -d ~/codingProjects/tanStack/store ]]; then
    git clone https://github.com/TanStack/store.git ~/codingProjects/tanStack/store
fi

if [[ ! -d ~/codingProjects/tanStack/form ]]; then
    git clone https://github.com/TanStack/form.git ~/codingProjects/tanStack/form
fi

if [[ ! -d ~/codingProjects/tanStack/config ]]; then
    git clone https://github.com/TanStack/config.git ~/codingProjects/tanStack/config
fi

if [[ ! -d ~/codingProjects/tanStack/time ]]; then
    git clone https://github.com/TanStack/time.git ~/codingProjects/tanStack/time
fi

if [[ ! -d ~/codingProjects/tanStack/pacer ]]; then
    git clone https://github.com/TanStack/pacer.git ~/codingProjects/tanStack/pacer
fi

if [[ ! -d ~/codingProjects/tanStack/db ]]; then
    git clone https://github.com/TanStack/db.git ~/codingProjects/tanStack/db
fi

if [[ ! -d ~/codingProjects/tanStack/table ]]; then
    git clone https://github.com/TanStack/table.git ~/codingProjects/tanStack/table
fi

if [[ ! -d ~/codingProjects/tanStack/virtual ]]; then
    git clone https://github.com/TanStack/virtual.git ~/codingProjects/tanStack/virtual
fi

if [[ ! -d ~/codingProjects/tanStack/select ]]; then
    git clone https://github.com/TanStack/select.git ~/codingProjects/tanStack/select
fi

if [[ ! -d ~/codingProjects/minecraftServers ]]; then
    mkdir ~/codingProjects/minecraftServers
fi

if [[ ! -d ~/codingProjects/minecraftServers/pumpkin ]]; then
    git clone https://github.com/Pumpkin-MC/Pumpkin.git ~/codingProjects/minecraftServers/pumpkin
fi

if [[ ! -d ~/codingProjects/minecraftServers/hyperion ]]; then
    git clone https://github.com/hyperion-mc/hyperion.git ~/codingProjects/minecraftServers/hyperion
fi

if [[ ! -d ~/codingProjects/minecraftServers/oxide ]]; then
    git clone https://github.com/T-x-T/oxide.git ~/codingProjects/minecraftServers/oxide
fi
