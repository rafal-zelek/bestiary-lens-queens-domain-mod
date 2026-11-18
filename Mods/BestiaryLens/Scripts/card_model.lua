-- Native text and item icons are opaque values carried intact to the renderer.
---@class BL.CardText

---@class BL.CardIcon

---@class (exact) BL.CardValue
---@field caption? BL.CardText
---@field value? number

---@class (exact) BL.CardStat: BL.CardValue
---@field kind? BL.StatKind

---@class (exact) BL.CardDrop
---@field item? BL.CardIcon
---@field name? BL.CardText
---@field chance? number
---@field coins? number

---@class (exact) BL.CardInput
---@field known? boolean
---@field name? BL.CardText
---@field stats? BL.CardStat[]
---@field resists? BL.CardValue[]
---@field drops? BL.CardDrop[]
---@field lootCaption? BL.CardText
---@field unknownCaption? BL.CardText
---@field hintCaption? BL.CardText
---@field showHint? boolean
---@field specialDrops? boolean

---@class (exact) BL.CardModel: BL.CardInput
---@field known boolean
---@field stats BL.CardStat[]
---@field resists BL.CardValue[]
---@field drops BL.CardDrop[]
---@field showHint boolean

---@class (exact) BL.UnlockedEntry
---@field known true
---@field name BL.CardText
---@field hitPoints BL.CardValue
---@field attack BL.CardValue
---@field experience BL.CardValue
---@field slash BL.CardValue
---@field pierce BL.CardValue
---@field impact BL.CardValue
---@field drops BL.CardDrop[]
---@field lootCaption BL.CardText
---@field unknownCaption BL.CardText
---@field hintCaption BL.CardText
---@field showHint boolean
---@field specialDrops boolean

---@class (exact) BL.LockedEntry
---@field known false

---@alias BL.CardEntry BL.UnlockedEntry | BL.LockedEntry

-- Data-only presentation contract. No Unreal lookups, actors, saves or UI calls.
local M = {}
---@enum BL.StatKind
local StatKind = { HP = 'hp', ATTACK = 'attack', XP = 'xp' }
M.StatKind = StatKind
local MIN_CHANCE, MAX_CHANCE = 0, 1

---@param v number?
---@return boolean
local function finite(v)
    return type(v) == 'number' and v == v and math.abs(v) < math.huge
end
---@param input BL.CardInput?
---@return BL.CardModel
function M.build(input)
    input = input or {}
    if input.known ~= true then
        return { known = false, stats = {}, resists = {}, drops = {}, showHint = false }
    end
    ---@type BL.CardModel
    local out = {
        known = true,
        name = input.name,
        stats = {},
        resists = {},
        drops = {},
        lootCaption = input.lootCaption,
        unknownCaption = input.unknownCaption,
        hintCaption = input.hintCaption,
        showHint = input.showHint == true,
        specialDrops = input.specialDrops == true,
    }
    for i, row in ipairs(input.stats or {}) do
        out.stats[i] = { caption = row.caption, value = finite(row.value) and row.value or nil, kind = row.kind }
    end
    for i, row in ipairs(input.resists or {}) do
        out.resists[i] = { caption = row.caption, value = row.value }
    end
    for i, row in ipairs(input.drops or {}) do
        out.drops[i] = {
            item = row.item,
            name = row.name,
            chance = finite(row.chance) and row.chance >= MIN_CHANCE and row.chance <= MAX_CHANCE and row.chance or nil,
            coins = finite(row.coins) and row.coins >= 0 and row.coins or nil,
        }
    end
    return out
end

---@param kind BL.StatKind
---@param row BL.CardValue
---@return BL.CardStat
local function stat(kind, row)
    return { kind = kind, caption = row.caption, value = row.value }
end

---@param entry BL.CardEntry
---@return BL.CardModel
function M.fromEntry(entry)
    if not entry.known then
        return M.build({ known = false })
    end
    ---@cast entry BL.UnlockedEntry
    return M.build({
        known = true,
        name = entry.name,
        stats = {
            stat(StatKind.HP, entry.hitPoints),
            stat(StatKind.ATTACK, entry.attack),
            stat(StatKind.XP, entry.experience),
        },
        resists = { entry.slash, entry.pierce, entry.impact },
        drops = entry.drops,
        lootCaption = entry.lootCaption,
        unknownCaption = entry.unknownCaption,
        hintCaption = entry.hintCaption,
        showHint = entry.showHint,
        specialDrops = entry.specialDrops,
    })
end

return M
