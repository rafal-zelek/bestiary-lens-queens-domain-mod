---@class (exact) BL.TargetingSettings
---@field acquireDelay number Seconds.
---@field releaseDelay number Seconds.
---@field maxDistance number World units.
---@field aimPadding number World units.
---@field scanInterval number Seconds.

---@class (exact) BL.LensTiming
---@field refreshInterval number Seconds.
---@field hookRetryMs integer
---@field journalPollMs integer
---@field captureEvery integer

---@class (exact) BL.CardPlacement
---@field width number
---@field anchorX? number
---@field anchorY? number
---@field alignX? number
---@field alignY? number
---@field x? number
---@field y? number
---@field scale? number

---@class (exact) BL.LensConfig
---@field targeting BL.TargetingSettings
---@field timing BL.LensTiming
---@field placement BL.CardPlacement

local RIGHT_EDGE, BOTTOM_EDGE = 1, 1
local RIGHT_MARGIN, BOTTOM_MARGIN = 24, 24
local CARD_WIDTH = 320

---@type BL.LensConfig
local config = {
    targeting = {
        acquireDelay = 0.30,
        releaseDelay = 0.60,
        maxDistance = 3000,
        aimPadding = 12, -- world units around visible mesh bounds
        scanInterval = 0.50,
    },
    timing = {
        refreshInterval = 0.10,
        hookRetryMs = 500,
        journalPollMs = 100,
        captureEvery = 5, -- number of journal polls between native text scans
    },
    placement = {
        width = CARD_WIDTH,
        anchorX = RIGHT_EDGE,
        anchorY = BOTTOM_EDGE,
        x = -RIGHT_MARGIN,
        y = -BOTTOM_MARGIN,
    },
}

return config
