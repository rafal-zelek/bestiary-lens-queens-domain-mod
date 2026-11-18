---@alias BL.RuntimeScreen 'starting'|'main-menu'|'file-select'|'loading'|'gameplay'|'modal'|'unknown'
---@alias BL.RuntimeSlotKind 'regular'|'empty'|'backup'|'suspend'|'unknown'

---@class BL.RuntimeFixture
---@field profile string Resolved identity of the dedicated profile.
---@field save string Resolved identity of the dedicated save, independent of the displayed row.
---@field readiness 'playable'

---@class BL.RuntimeSlot
---@field index integer
---@field save? string
---@field kind BL.RuntimeSlotKind

---@class BL.RuntimeObservation
---@field screen BL.RuntimeScreen
---@field profile? string Independently observed profile identity.
---@field interactive? boolean The adapter positively verified active screen and focus.
---@field slots? BL.RuntimeSlot[] Complete list from the active file selector.
---@field loadedSave? string Independently observed active save identity.
---@field playable? boolean The adapter positively verified the live world, player and HUD.

---@class BL.RuntimeDecision
---@field kind 'wait'|'stop'|'open-file-select'|'choose-file'|'ready'
---@field reason? string
---@field index? integer

local Menu = {}

---@param fixture BL.RuntimeFixture
---@param slots BL.RuntimeSlot[]?
---@return BL.RuntimeDecision
local function chooseFile(fixture, slots)
    if not slots then
        return { kind = 'stop', reason = 'unknown-slots' }
    end
    local candidate
    local seen = {}
    for _, slot in ipairs(slots) do
        local index = math.tointeger(slot.index)
        if not index or index < 0 or seen[index] then
            return { kind = 'stop', reason = 'ambiguous-slot' }
        end
        seen[index] = true
        if slot.save == fixture.save then
            if candidate then
                return { kind = 'stop', reason = 'ambiguous-slot' }
            end
            candidate = slot
        end
    end
    if not candidate then
        return { kind = 'stop', reason = 'missing-slot' }
    end
    if candidate.kind ~= 'regular' then
        return { kind = 'stop', reason = 'unsafe-slot' }
    end
    return { kind = 'choose-file', index = candidate.index }
end

---Decide from one fresh observation. The caller owns session authorization,
---deadlines and effect execution, and must observe a transition after each action.
---@param fixture BL.RuntimeFixture
---@param observation BL.RuntimeObservation
---@return BL.RuntimeDecision
function Menu.decide(fixture, observation)
    if fixture.profile == '' or fixture.save == '' or fixture.readiness ~= 'playable' then
        return { kind = 'stop', reason = 'invalid-fixture' }
    end
    local screen = observation.screen
    if screen == 'starting' then
        return { kind = 'wait', reason = 'starting' }
    end
    if observation.profile ~= fixture.profile then
        return { kind = 'stop', reason = 'profile-mismatch' }
    end
    if screen == 'loading' then
        return { kind = 'wait', reason = 'loading' }
    end
    if screen == 'gameplay' then
        if observation.loadedSave ~= fixture.save then
            return { kind = 'stop', reason = 'save-mismatch' }
        end
        if observation.playable ~= true then
            return { kind = 'wait', reason = 'gameplay-not-ready' }
        end
        return { kind = 'ready' }
    end
    if screen ~= 'main-menu' and screen ~= 'file-select' then
        return { kind = 'stop', reason = 'unexpected-screen' }
    end
    if observation.interactive ~= true then
        return { kind = 'wait', reason = 'menu-not-interactive' }
    end
    if screen == 'main-menu' then
        return { kind = 'open-file-select' }
    end
    return chooseFile(fixture, observation.slots)
end

return Menu
