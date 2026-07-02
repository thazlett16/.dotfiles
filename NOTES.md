# Paths for my local managed packages to track

- /usr/bin/
- /usr/share/licenses/
- /usr/share/applications/
- /home/maethron/.local/share/applications/
- /opt/CurseForge/
- /home/maethron/.local/share/managed/curseforge/
- /opt/google/chrome/
- /home/maethron/.local/share/managed/google-chrome/
- /opt/brave.com/brave/
- /home/maethron/.local/share/managed/brave/
- /opt/microsoft/msedge/
- /home/maethron/.local/share/managed/microsoft-edge/

Initial Prompt:
```text
Sweet just committed all changes now for chrome. Lets continue this exercise with brave browser. Take the same patterns that we have done with the last 2 commits and now work on brave.

I have the old makepkg checked out here: @~/aurProjects/brave-bin/PKGBUILD

Don't just copy that one but lets do some research and follow the same pattern locally
```


# Original
Exec=env __GL_THREADED_OPTIMIZATIONS=0 mesa_glthread=false MESA_SHADER_CACHE_MAX_SIZE=512MB __GLX_VENDOR_LIBRARY_NAME=mesa MESA_LOADER_DRIVER_OVERRIDE=zink GALLIUM_DRIVER=zink ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact bolt
Exec=env MESA_LOADER_DRIVER_OVERRIDE=zink ZINK_DEBUG=flushsync __GLX_VENDOR_LIBRARY_NAME=mesa GALLIUM_DRIVER=zink LIBGL_KOPPER_DRI2=1 flatpak run com.adamcake.Bolt

# Stripped Down
Exec=env __GL_THREADED_OPTIMIZATIONS=0 mesa_glthread=false MESA_SHADER_CACHE_MAX_SIZE=512MB    ZINK_DESCRIPTORS=lazy  bolt
Exec=env LIBGL_KOPPER_DRI2=1 flatpak run com.adamcake.Bolt



Exec=env MESA_LOADER_DRIVER_OVERRIDE=zink __GLX_VENDOR_LIBRARY_NAME=mesa GALLIUM_DRIVER=zink ZINK_DEBUG=compact



flatpak override --user --show com.jagex.RuneScape
[Environment]
MESA_LOADER_DRIVER_OVERRIDE=zink
__GLX_VENDOR_LIBRARY_NAME=nvidia
__NV_PRIME_RENDER_OFFLOAD=1

flatpak override --user --show com.adamcake.Bolt
[Environment]
MESA_LOADER_DRIVER_OVERRIDE=zink
__GLX_VENDOR_LIBRARY_NAME=mesa
GALLIUM_DRIVER=zink
__NV_PRIME_RENDER_OFFLOAD=1


flatpak override --user --show com.adamcake.Bolt
[Environment]
__EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/10_nvidia.json
MESA_LOADER_DRIVER_OVERRIDE=
__GLX_VENDOR_LIBRARY_NAME=nvidia
GALLIUM_DRIVER=
__GL_SHADER_DISK_CACHE=1
__GL_THREADED_OPTIMIZATIONS=0
