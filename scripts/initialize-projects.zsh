#!/bin/zsh

if [[ ! -d ~/codingProjects ]]; then
    mkdir ~/codingProjects
fi

if [[ ! -d ~/codingProjects/workProjects ]]; then
    mkdir ~/codingProjects/workProjects
fi

if [[ ! -d ~/codingProjects/personalProjects ]]; then
    mkdir ~/codingProjects/personalProjects
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
