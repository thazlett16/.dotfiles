#!/usr/bin/env bash

set -e

# NVIDIA host fixes needed for Flatpak games (e.g. RuneScape 3 via Bolt) to
# run without crashing on Hyprland. Found while diagnosing a crash-on-launch
# and a crash-on-teleport on an RTX 3080 Ti.
#
# 1. Flatpak's NVIDIA GL extension version must match the host driver
#    version, or GPU-accelerated Flatpak apps crash almost immediately on
#    launch. `flatpak update` only refreshes extensions already installed -
#    if the host driver has moved to a version with no matching extension
#    installed yet, it must be installed explicitly (handled below).
#
# 2. Resizable BAR (ReBAR) must be enabled, or apps using zink (OpenGL-over-
#    Vulkan) can crash during scene-heavy transitions with
#    "MESA: error: zink: couldn't allocate memory: heap=3" followed by
#    vkMapMemory failing, because NVIDIA's default (non-ReBAR) BAR1 is only
#    256MB. This needs BOTH:
#      a. Above 4G Decoding + Resizable BAR Support enabled in BIOS/UEFI
#         (requires disabling CSM - confirm the system boots UEFI first via
#         `ls /sys/firmware/efi`), which this script cannot do for you.
#      b. The NVIDIA driver module option set below.

# Make sure the Flatpak NVIDIA GL extension matches the host driver version.
# If flatpak update can't find a newer extension because disk space is low,
# remove unused runtimes first (e.g. a stale nvidia-* GL extension) and retry.
driver_version="$(nvidia-smi --query-gpu=driver_version --format=csv,noheader)"
driver_version="${driver_version//./-}"
nvidia_ext="org.freedesktop.Platform.GL.nvidia-${driver_version}"

if ! flatpak list --runtime | grep -q "$nvidia_ext"; then
	echo "Installing matching NVIDIA GL extension: $nvidia_ext"
	flatpak install --user -y flathub "$nvidia_ext"
fi

flatpak update -y

# Ensure Resizable BAR is enabled on the NVIDIA driver side. BIOS-side
# Above 4G Decoding / Resizable BAR Support must already be enabled manually.
rebar_conf=/etc/modprobe.d/nvidia-rebar.conf
if [ "$(cat /sys/module/nvidia/parameters/NVreg_EnableResizableBar 2>/dev/null)" != "1" ]; then
	echo "Enabling NVreg_EnableResizableBar in $rebar_conf (requires sudo)"
	echo 'options nvidia NVreg_EnableResizableBar=1' | sudo tee "$rebar_conf" >/dev/null
	sudo mkinitcpio -P
	echo "Reboot required for ReBAR to take effect."
fi
