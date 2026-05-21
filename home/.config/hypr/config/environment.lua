hl.env("XCURSOR_SIZE",    "24")
hl.env("HYPRCURSOR_SIZE", "24")

local hostNameUtil = require("util.host-name")

local hostName = hostNameUtil.getHostName()

if hostName == "rivendell" then
    require('config.devices.rivendell.environment')
elseif hostName == "shire" then
    require('config.devices.shire.environment')
else
    print("Unknown Host For Environment")
end
