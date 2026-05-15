local hostNameUtil = require("util.host-name")

local hostName = hostNameUtil.getHostName()

if hostName == "rivendell" then
    require("rivendell.monitors")
elseif hostName == "shire" then
    require("shire.monitors")
else
    print("Unknown Host For Monitors")
end
