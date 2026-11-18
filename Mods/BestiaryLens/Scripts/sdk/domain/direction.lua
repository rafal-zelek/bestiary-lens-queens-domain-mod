---@class (exact) BL.Direction
---@field x number
---@field y number

-- World directions in Queen's Domain. East follows the positive Y axis.
local Direction = {
    ---@type BL.Direction
    EAST = { x = 0, y = 1 },
    ---@type BL.Direction
    WEST = { x = 0, y = -1 },
}

return Direction
