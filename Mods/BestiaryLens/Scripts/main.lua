local Config = require('config')
local Game = require('sdk.domain.game')
local SmokeTest = require('f8_smoke')

local TAG = '[BestiaryLens] '
local VERSION = '0.1.0'
local RUNTIME_MARKER = 'F8-SCRIPT-20261118-08'

---@param message string
local function log(message)
    print(TAG .. tostring(message) .. '\n')
end

Game.startLens(Config, log, RUNTIME_MARKER, SmokeTest)
log('BestiaryLens ' .. VERSION .. ' loaded; runtime=' .. RUNTIME_MARKER .. '; waiting for gameplay HUD')
