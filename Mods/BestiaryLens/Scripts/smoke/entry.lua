local Bootstrap = require('bootstrap')
local Smoke = require('sdk.domain.smoke')
local TestConfig = require('smoke.config')

local RUNTIME_MARKER = 'SMOKE-SCRIPT-20261118-10'
-- The deployment helper installs this entry alongside the dotted filename.
local source = debug.getinfo(1, 'S').source:gsub('^@', '')
local scripts = assert(source:match('^(.*[/\\])'), 'Cannot locate smoke test')
local runScenario = assert(loadfile(scripts .. 'smoke.test.lua'))() --[[@as BL.Scenario]]
local runtime = Bootstrap.start()
Smoke.bind({
    log = Bootstrap.log,
    marker = RUNTIME_MARKER,
    readLensTarget = runtime.readLensTarget,
}, TestConfig.runKey, runScenario)
