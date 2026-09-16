#!/usr/bin/env bash

# If Bolt crashes on launch or during scene transitions (e.g. teleporting) on
# an NVIDIA system, run ./initialize-nvidia.sh - it fixes GL extension version
# mismatches and enables Resizable BAR.

flatpak install flathub com.adamcake.Bolt

flatpak override --user --show com.adamcake.Bolt

flatpak override --user --reset com.adamcake.Bolt

flatpak override --user --socket=wayland com.adamcake.Bolt
flatpak override --user --socket=x11 com.adamcake.Bolt

flatpak override --user --device=dri com.adamcake.Bolt
flatpak override --user --device=input com.adamcake.Bolt
flatpak override --user --device=kvm com.adamcake.Bolt

flatpak override --user --talk-name=org.freedesktop.Flatpak com.adamcake.Bolt
flatpak override --user --env=DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1=1 com.adamcake.Bolt
flatpak override --user --env=ELECTRON_OZONE_PLATFORM_HINT=auto com.adamcake.Bolt

flatpak override --user --show com.adamcake.Bolt
