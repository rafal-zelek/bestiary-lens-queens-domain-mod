local Position = {}
Position.__index = Position

function Position.new(x, y, z)
    return setmetatable({ x = x, y = y, z = z }, Position)
end

function Position:moveBy(distance, direction)
    return Position.new(self.x + direction.x * distance, self.y + direction.y * distance, self.z)
end

return Position
