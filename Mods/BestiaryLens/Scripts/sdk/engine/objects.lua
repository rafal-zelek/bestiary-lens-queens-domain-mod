local function valid(o)
    if o == nil then
        return false
    end
    local ok, v = pcall(function()
        return o:IsValid()
    end)
    return ok and v == true
end
local function attempt(fn, fallback)
    local ok, v = pcall(fn)
    if ok and v ~= nil then
        return v
    end
    return fallback
end

return { valid = valid, attempt = attempt }
