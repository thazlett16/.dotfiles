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
