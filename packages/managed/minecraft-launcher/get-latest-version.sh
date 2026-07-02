#!/bin/bash

# Mojang doesn't publish a lightweight version manifest for the native Linux
# launcher (the legacy launchermeta.mojang.com/mc/launcher.json endpoint
# reports the old Java/Swing launcher's version, not this one), and the .deb
# itself is served from a static, unversioned URL. So we download it and read
# the version out of its control file.
TMPDIR=$(mktemp -d)
curl -sSf -o "${TMPDIR}/Minecraft.deb" https://launcher.mojang.com/download/Minecraft.deb
ar x --output="${TMPDIR}" "${TMPDIR}/Minecraft.deb" control.tar.xz
tar -xf "${TMPDIR}/control.tar.xz" -C "${TMPDIR}"
VERSION=$(awk '/^Version:/{print $2}' "${TMPDIR}/control")
rm -rf "${TMPDIR}"

echo "$VERSION"