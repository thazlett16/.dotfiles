local hostNameUtil = require("util.host-name")

local hostName = hostNameUtil.getHostName()

if hostName == "rivendell" then
    require("rivendell.environment")
elseif hostName == "shire" then
    require("shire.environment")
else
    print("Unknown Host For Environment")
end
