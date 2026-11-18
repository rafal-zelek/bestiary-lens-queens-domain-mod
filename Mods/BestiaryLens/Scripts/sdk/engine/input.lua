local Input = {}

---@param name BL.KeyName
---@param callback fun()
function Input.bind(name, callback)
    local key = assert(Key[name], 'unknown key: ' .. name)
    RegisterKeyBind(key, function()
        ExecuteInGameThread(callback)
    end)
end

return Input
