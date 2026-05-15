
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
