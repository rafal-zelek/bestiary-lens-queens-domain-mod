local LensRuntime = require('sdk.engine.lens_runtime')
local Lens = require('sdk.domain.lens')

---@class (exact) BL.LensSession
---@field readLensTarget fun(): BL.LensTarget?

local Game = {}

---@param config BL.LensConfig
---@param log fun(message: string)
---@return BL.LensSession
function Game.startLens(config, log)
    local runtime = LensRuntime.new(config, log)
    local lens = Lens.new(runtime, config, log)
    runtime.start(lens.update, lens.toggle)
    return { readLensTarget = runtime.readLensTarget }
end

return Game
