local Position = {}

---@class (exact) BL.Position
---@field x number
---@field y number
---@field z number
local Methods = {}
local metatable = { __index = Methods }

---@param x number
---@param y number
---@param z number
---@return BL.Position
function Position.new(x, y, z)
    return setmetatable({ x = x, y = y, z = z }, metatable)
end

---@param distance number
---@param direction BL.Direction
---@return BL.Position
function Methods:moveBy(distance, direction)
    return Position.new(self.x + direction.x * distance, self.y + direction.y * distance, self.z)
end

return Position
