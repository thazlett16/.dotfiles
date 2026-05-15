local M = {}

---@return string
function M.getHostName()
    local handle = io.popen("hostname")
    if handle == nil then
        return "unknown"
    end

    local result = handle:read("*a")
    handle:close()
    if result == nil then
        return "unknown"
    end

    return (result:gsub("%s+", ""))
end

return M
