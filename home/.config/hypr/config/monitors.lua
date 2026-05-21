-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
local hostNameUtil = require("util.host-name")

local hostName = hostNameUtil.getHostName()

if hostName == "rivendell" then
    require("config.devices.rivendell.monitors")
elseif hostName == "shire" then
    require("config.devices.shire.monitors")
else
    print("Unknown Host For Monitors")
end
