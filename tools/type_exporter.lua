-- Development-only bridge. Reads two fixed commands; never evaluates received code.
local source = debug.getinfo(1, 'S').source:gsub('^@', '')
local scripts = assert(source:match('^(.*[/\\])'), 'Cannot locate type exporter')
local root = scripts .. '../../../'
local requestPath = root .. 'BestiaryLens-types-request.txt'
local statusPath = root .. 'BestiaryLens-types-status.json'
-- Ignore requests left on disk by an earlier game process.
local lastRequest
do
    local file = io.open(requestPath, 'r')
    if file then
        lastRequest = file:read(128)
        file:close()
    end
end

local function jsonString(value)
    return '"'
        .. tostring(value):gsub('[%z\1-\31\\"]', function(c)
            if c == '"' then
                return '\\"'
            end
            if c == '\\' then
                return '\\\\'
            end
            return string.format('\\u%04x', string.byte(c))
        end)
        .. '"'
end

local function status(id, state, detail)
    local file = assert(io.open(statusPath .. '.tmp', 'w'))
    file:write(
        '{"protocol":1,"request_id":'
            .. jsonString(id)
            .. ',"state":'
            .. jsonString(state)
            .. ',"detail":'
            .. jsonString(detail or '')
            .. '}\n'
    )
    file:close()
    os.remove(statusPath)
    assert(os.rename(statusPath .. '.tmp', statusPath))
end

LoopInGameThreadWithDelay(500, function()
    local file = io.open(requestPath, 'r')
    if not file then
        return
    end
    local line = file:read(128)
    file:close()
    if not line or line == lastRequest then
        return
    end
    local command, id = line:match('^(%l+) ([0-9a-f]+)\n?$')
    if not id or #id ~= 32 or (command ~= 'probe' and command ~= 'export') then
        return
    end
    lastRequest = line
    local ok, why = pcall(function()
        if type(GenerateLuaTypes) ~= 'function' then
            status(id, 'error', 'GenerateLuaTypes is unavailable in this UE4SS build')
        elseif command == 'probe' then
            status(id, 'ready')
        else
            status(id, 'running')
            GenerateLuaTypes()
            status(id, 'done')
        end
    end)
    if not ok then
        pcall(status, id, 'error', tostring(why))
        print('[BestiaryLensTypeExport] export failed: ' .. tostring(why) .. '\n')
    end
end)
print('[BestiaryLensTypeExport] protocol 1 ready; no export until requested\n')
