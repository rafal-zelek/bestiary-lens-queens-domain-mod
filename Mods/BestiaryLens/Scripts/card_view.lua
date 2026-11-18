---@class (exact) BL.CardColor
---@field R number
---@field G number
---@field B number
---@field A number

local StatKind = require('card_model').StatKind
local View = {}
local UNKNOWN_VALUE = '?'
local EMPTY = ''
local PERCENT = 100
local EXCERPT_LIMIT = 104
local palette = {
    neutral = { R = 0.85, G = 0.82, B = 0.73, A = 1 },
    strong = { R = 0.45, G = 0.9, B = 0.45, A = 1 },
    weak = { R = 1, G = 0.4, B = 0.35, A = 1 },
    [StatKind.HP] = { R = 1, G = 0.42, B = 0.36, A = 1 },
    [StatKind.ATTACK] = { R = 1, G = 0.77, B = 0.3, A = 1 },
    [StatKind.XP] = { R = 0.4, G = 0.76, B = 1, A = 1 },
}
local resistance = { strong = 1, weak = 2 }

---@param value number?
---@return string
function View.statValue(value)
    return value ~= nil and string.format('%.0f', value) or UNKNOWN_VALUE
end

---@param kind BL.StatKind?
---@return BL.CardColor
function View.statColor(kind)
    return palette[kind] or palette.neutral
end

---@param value number?
---@return BL.CardColor
function View.resistanceColor(value)
    if value == resistance.strong then
        return palette.strong
    end
    if value == resistance.weak then
        return palette.weak
    end
    return palette.neutral
end

---@param specialDrops boolean?
---@return string
function View.specialDropNotice(specialDrops)
    return specialDrops and UNKNOWN_VALUE or EMPTY
end

---@param drop BL.CardDrop
---@return string
function View.dropRate(drop)
    local chance = drop.chance
    local rate = chance ~= nil and (string.format('%.1f', chance * PERCENT):gsub('%.0$', '') .. '%') or UNKNOWN_VALUE
    local quantity = drop.coins and ('×' .. tostring(drop.coins) .. ' ') or EMPTY
    return quantity .. rate
end

---@param text string
---@return string
function View.excerpt(text)
    text = text:gsub('<[^>]+>', ''):gsub('%s+', ' ')
    local stop = utf8.offset(text, EXCERPT_LIMIT + 1)
    if stop then
        return text:sub(1, stop - 1) .. '…'
    end
    return text
end

return View
