---@class BL.LensTarget
---@field id string

---@class BL.LensPort
---@field ensureCard fun(): boolean
---@field isGameplayActive fun(): boolean
---@field selectTarget fun(): BL.LensTarget?
---@field isLive fun(target: BL.LensTarget): boolean
---@field setTarget fun(target: BL.LensTarget?)
---@field readTarget fun(target: BL.LensTarget): BL.CardEntry
---@field render fun(model: BL.CardModel)
---@field hide fun()

---@class (exact) BL.LensController
---@field toggle fun()
---@field update fun(dt: number)

local Model = require('card_model')
local Targeting = require('sdk.domain.targeting')

local Lens = {}
local NO_TARGET = 'none'

---@param runtime BL.LensPort
---@param config BL.LensConfig
---@param log fun(message: string)
---@return BL.LensController
function Lens.new(runtime, config, log)
    local shown = true
    -- Preserve immediate acquisition when the first HUD update already has a target.
    local refreshAge = math.max(config.timing.refreshInterval, config.targeting.acquireDelay)
    ---@type BL.HoverState
    local hover = {}
    ---@type table<string, BL.LensTarget>
    local remembered = {}
    local lastState

    local function clear()
        hover, remembered = {}, {}
        runtime.setTarget(nil)
        runtime.hide()
    end

    ---@param elapsed number
    ---@return BL.LensTarget?
    local function currentTarget(elapsed)
        local detected = runtime.selectTarget()
        if detected then
            remembered[detected.id] = detected
        end
        local selected = Targeting.stepHover(hover, detected and detected.id, elapsed, config.targeting)
        local target = selected and remembered[selected] or nil
        if target and not runtime.isLive(target) then
            hover, target = {}, nil
        end
        for id in pairs(remembered) do
            if id ~= hover.displayed and id ~= hover.pending then
                remembered[id] = nil
            end
        end
        return target
    end

    local lens = {}

    function lens.toggle()
        shown = not shown
    end

    ---@param dt number
    function lens.update(dt)
        refreshAge = refreshAge + dt
        if refreshAge < config.timing.refreshInterval then
            return
        end
        local elapsed = refreshAge
        refreshAge = 0
        if not runtime.ensureCard() then
            return
        end
        if not runtime.isGameplayActive() or not shown then
            clear()
            return
        end
        local target = currentTarget(elapsed)
        runtime.setTarget(target)
        local state = NO_TARGET
        if target then
            local entry = runtime.readTarget(target)
            local card = Model.fromEntry(entry)
            runtime.render(card)
            state = target.id .. ':' .. tostring(card.known)
        else
            runtime.hide()
        end
        if state ~= lastState then
            log('card ' .. state)
            lastState = state
        end
    end

    return lens
end

return Lens
