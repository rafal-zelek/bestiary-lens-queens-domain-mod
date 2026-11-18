---@class (exact) BL.AimVector
---@field X number
---@field Y number
---@field Z number

---@class (exact) BL.HoverState
---@field displayed? string
---@field pending? string
---@field pendingAge? number
---@field missingAge? number

local Targeting = {}
local AXES = { 'X', 'Y', 'Z' }
local MIN_DISTANCE = 1
local EPSILON = 0.000001

---@param x number
---@param y number
---@param z number
---@param fx number
---@param fy number
---@param fz number
---@param maxDistance number
---@return number? alignment
---@return number? distance
function Targeting.score(x, y, z, fx, fy, fz, maxDistance)
    local d = math.sqrt(x * x + y * y + z * z)
    if d < MIN_DISTANCE or d > maxDistance then
        return nil
    end
    return (x * fx + y * fy + z * fz) / d, d
end
-- Positive ray/AABB intersection of the visible mesh, not the displaced actor root.
---@param origin BL.AimVector
---@param dir BL.AimVector
---@param center BL.AimVector
---@param extent BL.AimVector
---@param padding number
---@param maxDistance number
---@return number?
function Targeting.rayBox(origin, dir, center, extent, padding, maxDistance)
    local tmin, tmax = 0, maxDistance
    for _, axis in ipairs(AXES) do
        local d = dir[axis]
        local low, high = center[axis] - extent[axis] - padding, center[axis] + extent[axis] + padding
        if math.abs(d) < EPSILON then
            if origin[axis] < low or origin[axis] > high then
                return nil
            end
        else
            local a, b = (low - origin[axis]) / d, (high - origin[axis]) / d
            if a > b then
                a, b = b, a
            end
            tmin, tmax = math.max(tmin, a), math.min(tmax, b)
            if tmin > tmax then
                return nil
            end
        end
    end
    return tmin
end
---@param state BL.HoverState
---@param id string?
---@param dt number
---@param timing BL.TargetingSettings
---@return string?
function Targeting.stepHover(state, id, dt, timing)
    state.pendingAge = state.pendingAge or 0
    state.missingAge = state.missingAge or 0
    if id and id == state.displayed then
        state.pending = nil
        state.pendingAge = 0
        state.missingAge = 0
        return state.displayed
    end
    if id then
        if id ~= state.pending then
            state.pending = id
            state.pendingAge = 0
        end
        state.pendingAge = state.pendingAge + dt
        if state.pendingAge + EPSILON >= timing.acquireDelay then
            state.displayed = id
            state.pending = nil
            state.pendingAge = 0
            state.missingAge = 0
            return id
        end
    else
        state.pending = nil
        state.pendingAge = 0
    end
    state.missingAge = state.missingAge + dt
    if state.missingAge + EPSILON >= timing.releaseDelay then
        state.displayed = nil
    end
    return state.displayed
end

return Targeting
