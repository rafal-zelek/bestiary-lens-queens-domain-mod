local Config = require('config')
local Game = require('sdk.domain.game')

local TAG = '[BestiaryLens] '
local VERSION = '0.1.0'

---@param message string
local function log(message)
    print(TAG .. tostring(message) .. '\n')
end

local Bootstrap = { config = Config, log = log }

---@return BL.LensSession
function Bootstrap.start()
    local runtime = Game.startLens(Config, log)
    log('BestiaryLens ' .. VERSION .. ' loaded; waiting for gameplay HUD')
    return runtime
end

return Bootstrap
