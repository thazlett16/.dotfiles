#!/usr/bin/env sh

# Mojang's launcher has no XDG_CONFIG_HOME/XDG_CACHE_HOME support and writes
# everything (game assets, saves, its own auto-updated UI, and cache) into a
# single "work dir" that defaults to $HOME/.minecraft. Redirect that to
# XDG_DATA_HOME instead, since --workDir is the closest thing it offers to
# XDG compliance.
work_dir="${XDG_DATA_HOME}/minecraft-launcher"

# This is a workaround for [1] as suggested by [2]:
# [1]: https://report.bugs.mojang.com/servicedesk/customer/portal/7/MCL-25003 and https://bugs.kde.org/show_bug.cgi?id=501866
# [2]: https://aur.archlinux.org/packages/minecraft-launcher#comment-1020377
cef_version_file="${work_dir}/webcache2/CEF_VERSION"
if [ -e "$cef_version_file" ]; then
    rm "$cef_version_file"
fi

exec minecraft-launcher --workDir "$work_dir"
