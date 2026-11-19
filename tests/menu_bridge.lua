local Bridge = require('sdk.engine.menu_bridge')

local function valid(value)
    return {
        IsValid = function()
            return value
        end,
    }
end

ExecuteWithDelay = function(_, fn)
    fn()
end
ExecuteInGameThread = function(fn)
    fn()
end
local screen = { InSaveMenu = true, IntroDone = true }
local selected
local confirmed
function screen:SaveSlotSelected(index, backup, backupIndex)
    selected = { index, backup, backupIndex }
end
function screen:ModalDialogueConfirmCallback()
    confirmed = { focused = self.FocusedSaveSlot, context = self.CurrentSlotContext }
end
local function save(level, area, playerLevel, playTime)
    return {
        SaveLevel = level,
        CurrentAreaName = area,
        SavedPlayerLevel = playerLevel,
        GamePlayTime_Seconds = playTime,
        IsValid = function()
            return true
        end,
    }
end
local slots = {}
local indices = { 2, 4, 1, 0, 3 }
for i = 0, 4 do
    local index = indices[i + 1]
    slots[i + 1] = {
        Index = index,
        BackupIndex = 0,
        Backup = false,
        ['Is Suspend Save'] = false,
        ['My Save'] = index < 2 and save('Ruins_Level_00', 'Ruins', 2, 180) or valid(false),
        IsValid = function()
            return true
        end,
    }
    screen['SaveSlotWidget_' .. i] = slots[i + 1]
end
screen.IsValid = function()
    return true
end
screen.IsInViewport = function()
    return true
end
FindAllOf = function()
    return { screen }
end

assert(Bridge.execute('slots') == 'slots-2-other-4-other-1-world1-0-other-3-other')
local chosen = Bridge.execute('select-test')
assert(chosen == 'selected-index-1', chosen)
assert(selected[1] == 1 and selected[2] == false and selected[3] == 0)
assert(confirmed.focused == 1 and confirmed.context == 1)
selected = nil

-- World1 is disposable and may be byte-identical to World0; explicit slot
-- index 1, not a content fingerprint, identifies the test save.
slots[3]['My Save'] = save('Ruins_Level_00', 'Ruins', 2, 180)
slots[5]['Is Suspend Save'] = true -- explicit slot index 3, not World1
assert(Bridge.execute('slots') == 'slots-2-other-4-other-1-world1-0-other-3-other')
assert(Bridge.execute('select-test') == 'selected-index-1')
local identicalSelection = selected
assert(
    identicalSelection and identicalSelection[1] == 1 and identicalSelection[2] == false and identicalSelection[3] == 0
)
slots[4]['Is Suspend Save'] = true -- unrelated slot may carry suspend state
assert(Bridge.execute('select-test') == 'selected-index-1')
slots[3]['Is Suspend Save'] = true -- this widget maps to explicit World1/index 1
assert(Bridge.execute('select-test') == 'selected-index-1')
slots[3]['My Save'] = valid(false) -- file existence/index, not parsed save metadata, identifies World1
assert(Bridge.execute('select-test') == 'selected-index-1')
slots[3]['My Save'] = save('Ruins_Level_00', 'Ruins', 2, 180)
slots[5]['Is Suspend Save'] = false
slots[4]['Is Suspend Save'] = false
slots[3]['Is Suspend Save'] = false

selected = nil
slots[3].Backup = true
assert(Bridge.execute('slots') == 'blocked')
assert(Bridge.execute('select-test') == 'blocked' and not selected)
slots[3].Backup = false
slots[3]['My Save'] = valid(false)
assert(Bridge.execute('slots') == 'slots-2-other-4-other-1-world1-0-other-3-other')
assert(Bridge.execute('select-test') == 'selected-index-1')
selected = nil
slots[4].Index = 1
assert(Bridge.execute('slots') == 'blocked')
assert(Bridge.execute('select-test') == 'blocked' and not selected)
for i, index in ipairs(indices) do
    slots[i].Index = index
end
local system = {
    SelectedSaveSlot = 1,
    IsValid = function()
        return true
    end,
}
local activeIndex = 1
local gi = {
    ActiveSystemSave = system,
    ActiveSaveSlot = save('Wrong_Level', 'Wrong', 2, 180),
    GetActiveSaveSlotIndex = function()
        return activeIndex
    end,
    IsValid = function()
        return true
    end,
    GetFullName = function()
        return 'GameInstance'
    end,
}
local pawn = {
    IsDead = false,
    IsInGameplayModal = false,
    IsValid = function()
        return true
    end,
}
local hud = {
    IsValid = function()
        return true
    end,
    IsInViewport = function()
        return true
    end,
    GetOwningPlayerPawn = function()
        return pawn
    end,
}
FindAllOf = function(class)
    if class == 'TitleScreenUI_C' then
        return { screen }
    end
    if class == 'FS_GameInstance_C' then
        return { gi }
    end
    if class == 'FS_PlayerHUD_C' then
        return { hud }
    end
    return {}
end
screen.InSaveMenu = true
assert(Bridge.execute('observe') == 'files')
local currentSlots = Bridge.execute('slots')
assert(currentSlots ~= 'blocked', currentSlots)
local selectedResult = Bridge.execute('select-test')
assert(selectedResult == 'selected-index-1', selectedResult)
FindAllOf = function(class)
    if class == 'FS_GameInstance_C' then
        return { gi }
    end
    if class == 'FS_PlayerHUD_C' then
        return { hud }
    end
    return {}
end
gi.ActiveSaveSlot = save('Ruins_Level_00', 'Ruins', 2, 180)
local loadedState = Bridge.execute('gameplay')
assert(loadedState == 'slot-1-playable', loadedState)
gi.ActiveSaveSlot = valid(true)
assert(Bridge.execute('gameplay') == 'slot-1-playable')
gi.ActiveSaveSlot = valid(false)
assert(Bridge.execute('gameplay') == 'slot-1-playable')
gi.ActiveSaveSlot = save('Ruins_Level_00', 'Ruins', 2, 180)
local runs = 0
assert(Bridge.execute('run-smoke', function()
    runs = runs + 1
end) == 'accepted')
assert(runs == 1)
activeIndex = 0
system.SelectedSaveSlot = 1
assert(Bridge.execute('gameplay') == 'blocked-identity')
assert(Bridge.execute('run-smoke', function()
    runs = runs + 1
end) == 'blocked')
assert(runs == 1)
print('Runtime bridge slot guards passed')
