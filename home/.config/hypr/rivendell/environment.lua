hl.env("MESA_LOADER_DRIVER_OVERRIDE", "zink")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "mesa")
hl.env("GALLIUM_DRIVER", "zink")
hl.env("LIBGL_KOPPER_DRI2", "1")
hl.env("__NV_PRIME_RENDER_OFFLOAD", "0")

hl.env("ZINK_DESCRIPTORS", "lazy")
hl.env("ZINK_DEBUG", "compact,flushsync")
hl.env("MESA_VK_WSI_PRESENT_MODE", "fifo")
hl.env("mesa_glthread", "false")

-- env = MESA_LOADER_DRIVER_OVERRIDE,zink
-- env = __GLX_VENDOR_LIBRARY_NAME,mesa
-- env = GALLIUM_DRIVER,zink
-- env = LIBGL_KOPPER_DRI2,1
-- env = __NV_PRIME_RENDER_OFFLOAD,0

-- env = ZINK_DESCRIPTORS,lazy
-- env = ZINK_DEBUG,compact,flushsync
-- env = MESA_VK_WSI_PRESENT_MODE,fifo
-- env = mesa_glthread,false
