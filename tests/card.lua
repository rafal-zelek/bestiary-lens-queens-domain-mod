-- Loaded after main.lua in BESTIARY_LENS_TEST_MODE; no Unreal runtime required.
local function obj(t)
    t = t or {}
    t.IsValid = function()
        return true
    end
    return t
end
local count, contains = 1, true
local data = obj({ bDoNotAllowInBestiary = false })
local map = {
    Contains = function()
        return contains
    end,
    Find = function()
        return {
            get = function()
                return count
            end,
        }
    end,
}
local instance = obj({
    ActiveSaveSlot = obj({ KilledEnemyCounts = map }),
    GetFullName = function()
        return 'FS_GameInstance_C Live'
    end,
})
---@type fun(className: string): any[]
FindAllOf = function()
    return { instance }
end
assert(api.unlocked(data) == true, 'known entry')
count = 0
assert(api.unlocked(data) == false, 'zero kills')
count = 1
contains = false
assert(api.unlocked(data) == false, 'missing key')
contains = true
data.bDoNotAllowInBestiary = true
assert(api.unlocked(data) == false, 'excluded entry')
data.bDoNotAllowInBestiary = false
map.Contains = function()
    error('unavailable save')
end
assert(api.unlocked(data) == false, 'API failure must fail closed')
---@type fun(className: string): any[]
FindAllOf = function()
    return {}
end
assert(api.unlocked(data) == false, 'no save')
assert(api.unlocked(nil) == false, 'invalid asset')
local dot, d = api.score(100, 0, 0, 1, 0, 0)
assert(dot == 1 and d == 100, 'front target')
assert(api.score(4000, 0, 0, 1, 0, 0) == nil, 'out of range')
assert(api.score(0, 0, 0, 1, 0, 0) == nil, 'zero distance')
assert(api.score(-100, 0, 0, 1, 0, 0) == -1, 'behind camera')
assert(api.excerpt('<b>Test</b>  text') == 'Test text', 'strip markup')
local long = string.rep('ą', 120)
assert(utf8.len(api.excerpt(long)) == 105, 'UTF-8 safe truncation plus ellipsis')
print('13 card/gate/geometry checks passed')
local origin = { X = 0, Y = 0, Z = 0 }
local forward = { X = 1, Y = 0, Z = 0 }
local ceilingSpider = { X = 900, Y = 0, Z = 600 }
local extents = { X = 90, Y = 80, Z = 146 }
assert(
    api.rayBox(origin, forward, ceilingSpider, extents, 12, 3000) == nil,
    'floor aim must not select displaced ceiling spider'
)
local length = math.sqrt(900 * 900 + 600 * 600)
assert(
    api.rayBox(origin, { X = 900 / length, Y = 0, Z = 600 / length }, ceilingSpider, extents, 12, 3000),
    'aim at visible ceiling mesh'
)
assert(api.rayBox(origin, forward, { X = -900, Y = 0, Z = 0 }, extents, 12, 3000) == nil, 'mesh behind camera')
assert(api.rayBox(origin, forward, { X = 4000, Y = 0, Z = 0 }, extents, 12, 3000) == nil, 'mesh outside range')
local hover = {}
assert(api.stepHover(hover, 'spider', 0.1) == nil, 'debounce first sample')
assert(api.stepHover(hover, 'spider', 0.1) == nil, 'debounce second sample')
assert(api.stepHover(hover, 'spider', 0.1) == 'spider', 'debounce show after 300ms')
assert(api.stepHover(hover, nil, 0.5) == 'spider', 'retain for 500ms after loss')
assert(api.stepHover(hover, nil, 0.1) == nil, 'hide after 600ms loss')
hover = {}
api.stepHover(hover, 'a', 0.2)
assert(api.stepHover(hover, 'b', 0.2) == nil, 'switch resets acquisition')
assert(api.stepHover(hover, 'b', 0.1) == 'b', 'new target acquisition')
print('11 geometry/debounce regression checks passed')
local schema = {
    Chance = 'Chance',
    Item = 'Item',
    CoinCount = 'Coins',
    PityModifier = 'Pity',
    Chance2 = 'Chance2',
    Item2 = 'Item2',
    CoinCount2 = 'Coins2',
    PityModifier2 = 'Pity2',
}
local item = obj()
local function loadItem(x)
    return x
end
local record =
    { Chance = 0.09, Item = item, Coins = -1, Pity = 0, Chance2 = 0.09, Item2 = item, Coins2 = -1, Pity2 = 0 }
local drops = api.decodeDrops(record, schema, loadItem)
assert(
    #drops == 2 and drops[1].chance == 0.09 and drops[2].chance == 0.09,
    'two rolls with duplicate item must stay separate'
)
record.Coins2 = 3
assert(api.decodeDrops(record, schema, loadItem)[2].coins == 3, 'coin quantity preserved')
record.Chance = 0
assert(
    api.decodeDrops(record, schema, loadItem)[1].chance == 0,
    'zero base chance with configured item remains visible'
)
record.Chance = 2
assert(
    api.decodeDrops(record, schema, loadItem)[1].chance == nil,
    'invalid percentage becomes unknown, not 200 percent'
)
record.Chance = 0 / 0
assert(api.decodeDrops(record, schema, loadItem)[1].chance == nil, 'NaN rate becomes unknown')
record.Chance = 0.09
record.Item = nil
assert(api.decodeDrops(record, schema, loadItem)[1].item == nil, 'missing icon/item does not hide a nonzero drop')
assert(api.decodeDrops(nil, schema, loadItem) == nil, 'missing record is not no-loot')
assert(api.decodeDrops(record, nil, loadItem) == nil, 'missing schema is not no-loot')
schema.Chance3 = 'Chance3'
assert(api.decodeDrops(record, schema, loadItem) == nil, 'unsupported third slot cannot be silently truncated')
schema.Chance3 = nil
local empty = { Chance = 0, Coins = -1, Chance2 = 0, Coins2 = -1 }
assert(#api.decodeDrops(empty, schema, loadItem) == 0, 'empty drop table')
assert(api.validChance(math.huge) == false, 'infinite chance rejected')
assert(api.validChance('9') == false, 'non-numeric chance rejected')
print('12 drop edge-case checks passed')

FText = function(s)
    return { empty = s == '' }
end
local spiderName, ratName = {}, {}
assert(api.cardContent({ Name = spiderName }, true) == spiderName, 'native FText identity preserved')
assert(api.cardContent({ Name = ratName }, true) == ratName, 'name changes with target data')
assert(api.cardContent({ Name = spiderName }, false).empty, 'locked entry hides native name')
print('3 native FText/target regression checks passed')
local a = api.widgetName('BestiaryLens_StatRow1', 'HorizontalBox', 'UIArea_1')
local b = api.widgetName('BestiaryLens_StatRow1', 'VerticalBox', 'UIArea_1')
local c = api.widgetName('BestiaryLens_StatRow1', 'VerticalBox', 'UIArea_2')
assert(a ~= b, 'different widget classes cannot reuse a UObject name')
assert(b ~= c, 'reload generation cannot reuse previous widget objects')
print('2 UObject naming regression checks passed')
