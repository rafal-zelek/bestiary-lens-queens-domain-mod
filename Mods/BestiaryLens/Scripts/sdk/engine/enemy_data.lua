local Objects = require('sdk.engine.objects')
local valid, attempt = Objects.valid, Objects.attempt
local LOOT_CACHE_SECONDS = 2
local MAX_INHERITANCE_DEPTH = 12
local NATIVE_DROP_SLOTS = 2
local specialDropClasses = {}

local function gi()
    for _, o in ipairs(FindAllOf('FS_GameInstance_C') or {}) do
        ---@cast o UFS_GameInstance_C
        if valid(o) and not o:GetFullName():find('Default__') then
            return o
        end
    end
end
local function unlocked(data)
    if not valid(data) or data.bDoNotAllowInBestiary then
        return false
    end
    local instance = gi()
    if not valid(instance) or not valid(instance.ActiveSaveSlot) then
        return false
    end
    -- Read only. Fail closed on missing data or API errors.
    return attempt(function()
        local counts = instance.ActiveSaveSlot.KilledEnemyCounts
        -- UE4SS returns a parameter wrapper here; upstream TMap:Find declares the raw value.
        return counts:Contains(data) and (counts:Find(data) --[[@as RemoteUnrealParam<number>]]):get() > 0
    end, false)
end
local function cardContent(data, known)
    return known and data.Name or FText('')
end
local dropFields
local function dropSchema()
    if dropFields then
        return dropFields
    end
    local meta = StaticFindObject('/Game/Blueprints/ItemSystem/ItemDrop.ItemDrop') --[[@as UScriptStruct]]
    if not valid(meta) then
        return nil
    end
    local fields = {}
    meta:ForEachProperty(function(p)
        local n = p:GetFName():ToString()
        fields[n:match('^([^_]+)_')] = n
    end)
    if not fields.Chance or not fields.Chance2 then
        return nil
    end
    dropFields = fields
    return fields
end
local function validChance(n)
    return type(n) == 'number' and n == n and n >= 0 and n <= 1
end
local function decodeDrops(record, fields, loadItem)
    if not record or not fields then
        return nil
    end
    for key in pairs(fields) do
        local slot = key:match('^Chance(%d+)$')
        if slot and tonumber(slot) > NATIVE_DROP_SLOTS then
            return nil
        end -- fail visibly on a changed schema
    end
    local drops = {}
    for index = 1, NATIVE_DROP_SLOTS do
        local suffix = index == 1 and '' or '2'
        if not fields['Chance' .. suffix] or not fields['Item' .. suffix] then
            return nil
        end
        local ok, chance = pcall(function()
            return record[fields['Chance' .. suffix]]
        end)
        if not ok then
            return nil
        end
        local item = attempt(function()
            return loadItem(record[fields['Item' .. suffix]])
        end)
        local coins = attempt(function()
            return record[fields['CoinCount' .. suffix]]
        end, -1)
        if type(coins) ~= 'number' or coins ~= coins then
            coins = -1
        end
        local pity = attempt(function()
            return record[fields['PityModifier' .. suffix]]
        end, 0)
        if valid(item) or coins >= 0 or (validChance(chance) and chance > 0) then
            drops[#drops + 1] = {
                item = valid(item) and item or nil,
                chance = validChance(chance) and chance or nil,
                pity = pity,
                coins = coins,
            }
        elseif not validChance(chance) then
            return nil
        end
    end
    return drops
end
local function hasSpecialDrops(actor)
    if not valid(actor) then
        return true
    end
    local class = actor:GetClass()
    local key = class:GetFullName()
    if specialDropClasses[key] ~= nil then
        return specialDropClasses[key]
    end
    local custom = false
    for _ = 1, MAX_INHERITANCE_DEPTH do
        if not valid(class) or class:GetFName():ToString() == 'EnemyBase_C' then
            break
        end
        class:ForEachFunction(function(f)
            if f:GetFName():ToString() == 'DropItem' then
                custom = true
                return true
            end
        end)
        class = class:GetSuperStruct()
    end
    specialDropClasses[key] = custom
    return custom
end
local function dropsFor(data, actor, runtimeAge, cache)
    local key = data:GetFullName() .. ':' .. (valid(actor) and actor:GetFName():ToString() or 'none')
    local cached = cache[key]
    if cached and runtimeAge < cached.expires then
        local usable = true
        for _, entry in ipairs(cached.rows or {}) do
            if entry.item and not valid(entry.item) then
                usable = false
            end
        end
        if usable then
            return cached.rows, cached.special
        end
    end
    -- Canonical getter, not just static EnemyData.Drop: supports actor overrides.
    local record = valid(actor) and attempt(function()
        return actor:GetItemDrop()
    end) or nil
    local fallback = record == nil
    if fallback then
        record = attempt(function()
            return data.Drop
        end)
    end
    local rows = decodeDrops(record, dropSchema(), function(soft)
        local kismet = StaticFindObject('/Script/Engine.Default__KismetSystemLibrary') --[[@as UKismetSystemLibrary]]
        return kismet:LoadAsset_Blocking(soft)
    end)
    local special = fallback or hasSpecialDrops(actor)
    cache[key] = { rows = rows, special = special, expires = runtimeAge + LOOT_CACHE_SECONDS }
    return rows, special
end

return {
    unlocked = unlocked,
    cardContent = cardContent,
    validChance = validChance,
    decodeDrops = decodeDrops,
    dropsFor = dropsFor,
}
