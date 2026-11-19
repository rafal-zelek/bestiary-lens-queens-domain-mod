local Bridge = {}
local valid = require('sdk.engine.objects').valid
local expectedSaveIndex

---@return string
local function gameplay()
    local instance
    for _, object in ipairs(FindAllOf('FS_GameInstance_C') or {}) do
        ---@cast object UFS_GameInstance_C
        if valid(object) and not object:GetFullName():find('Default__') then
            if instance then
                return 'blocked'
            end
            instance = object
        end
    end
    if not instance or not valid(instance.ActiveSystemSave) then
        return 'starting'
    end
    local index
    if type(instance.GetActiveSaveSlotIndex) == 'function' then
        local ok, activeIndex = pcall(instance.GetActiveSaveSlotIndex, instance)
        if ok then
            index = math.tointeger(activeIndex)
        end
    end
    if index == nil then
        index = math.tointeger(instance.ActiveSystemSave.SelectedSaveSlot)
    end
    if not index or index < 0 or index > 4 then
        return 'blocked'
    end
    local playable = false
    for _, hud in ipairs(FindAllOf('FS_PlayerHUD_C') or {}) do
        ---@cast hud UFS_PlayerHUD_C
        if valid(hud) and hud:IsInViewport() then
            local pawn = hud:GetOwningPlayerPawn() --[[@as AFS_PlayerChar_C]]
            if valid(pawn) and not pawn.IsDead and not pawn.IsInGameplayModal then
                if playable then
                    return 'blocked'
                end
                playable = true
            end
        end
    end
    if not expectedSaveIndex or index ~= expectedSaveIndex then
        -- The index reads as the default while a load is in flight; only a
        -- playable world on the wrong slot is a real mismatch.
        return playable and 'blocked-identity' or 'starting'
    end
    return 'slot-' .. tostring(index) .. (playable and '-playable' or '-loading')
end

---@return UTitleScreenUI_C?, string
local function observe()
    local screen
    for _, widget in ipairs(FindAllOf('TitleScreenUI_C') or {}) do
        ---@cast widget UTitleScreenUI_C
        if widget:IsValid() and widget:IsInViewport() then
            if screen then
                return nil, 'blocked'
            end
            screen = widget
        end
    end
    if not screen then
        return nil, 'starting'
    end
    if screen.ModalOpen or screen.LoadBackupMenuOpen or screen.InOptions or screen.CreditsOpened then
        return nil, 'blocked'
    end
    if screen['Delete Mode'] or screen.InitialLanguageSelect then
        return nil, 'blocked'
    end
    if screen.laoding or screen.LockedOut or not screen.IntroDone then
        return nil, 'starting'
    end
    if screen.InSaveMenu then
        return screen, 'files'
    end
    local button = screen.LoadGameButton
    if not button:IsValid() or not button:IsVisible() or not button:GetIsEnabled() then
        return nil, 'starting'
    end
    return screen, 'title'
end

---@param screen UTitleScreenUI_C
---@return string?
local function slots(screen)
    local descriptions, seen = {}, {}
    for i = 0, 4 do
        local slot = screen['SaveSlotWidget_' .. i] --[[@as USaveSlotWidget_C]]
        if not slot or not slot:IsValid() then
            return nil
        end
        local index = math.tointeger(slot.Index)
        if not index or index < 0 or index > 4 or seen[index] then
            return nil
        end
        seen[index] = true
        -- Slot indices are authoritative; save metadata/content never gates
        -- the disposable World1 slot.
        if index == 1 and slot.Backup then
            return nil
        end
        descriptions[#descriptions + 1] = tostring(index) .. (index == 1 and '-world1' or '-other')
    end
    return 'slots-' .. table.concat(descriptions, '-')
end

local function testSlot(screen)
    local candidate
    local seen = {}
    for i = 0, 4 do
        local slot = screen['SaveSlotWidget_' .. i] --[[@as USaveSlotWidget_C]]
        if not slot or not slot:IsValid() then
            return nil
        end
        local index = math.tointeger(slot.Index)
        if not index or index < 0 or index > 4 or seen[index] then
            return nil
        end
        seen[index] = true
        if index == 1 then
            if slot.Backup then
                return nil
            end
            candidate = { slot = slot }
        end
    end
    return candidate
end

---@param action string
---@return string
function Bridge.execute(action, runScenario)
    if action == 'gameplay' then
        return gameplay()
    end
    if action == 'run-smoke' then
        if gameplay() ~= 'slot-1-playable' or not runScenario then
            return 'blocked'
        end
        runScenario()
        return 'accepted'
    end
    local screen, state = observe()
    if action == 'observe' then
        return state
    end
    if action == 'open-files' and state == 'title' and screen then
        screen:BndEvt__TitleScreenUI_LoadGameButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(
            screen.LoadGameButton
        )
        return 'accepted'
    end
    if action == 'back' and state == 'files' and screen then
        screen:BackToMainMenu()
        return 'accepted'
    end
    if state == 'files' and screen and (action == 'slots' or action == 'select-test') then
        local description = slots(screen)
        if action == 'slots' then
            return description or 'blocked'
        end
        local target = testSlot(screen)
        if description and target then
            expectedSaveIndex = 1
            -- SaveSlotSelected alone leaves FocusedSaveSlot at 0 and the
            -- confirm step then loads slot 0, so set both before confirming.
            screen.FocusedSaveSlot = 1
            screen.CurrentSlotContext = 1
            screen:SaveSlotSelected(target.slot.Index, false, target.slot.BackupIndex)
            -- The confirm modal needs a moment to exist; confirming in the same
            -- tick does nothing (verified live).
            ExecuteWithDelay(500, function()
                ExecuteInGameThread(function()
                    if screen:IsValid() then
                        screen:ModalDialogueConfirmCallback()
                    end
                end)
            end)
            return 'selected-index-1'
        end
    end
    return 'blocked'
end

---@param scripts string
function Bridge.start(scripts, runScenario)
    local root = scripts .. '../../../'
    local request = root .. 'BestiaryLens-menu-request.txt'
    local result = root .. 'BestiaryLens-menu-result.txt'
    local function readRequest()
        local file = io.open(request, 'r')
        if not file then
            return nil
        end
        local line = file:read(96)
        file:close()
        return line
    end
    local previous = readRequest()
    LoopInGameThreadWithDelay(150, function()
        local line = readRequest()
        if not line or line == previous then
            return
        end
        previous = line
        local nonce, action = line:match('^1 ([0-9a-f]+) ([a-z%-]+)\n$')
        if not nonce or #nonce ~= 32 or not action then
            return
        end
        if
            action ~= 'observe'
            and action ~= 'open-files'
            and action ~= 'back'
            and action ~= 'slots'
            and action ~= 'select-test'
            and action ~= 'gameplay'
            and action ~= 'run-smoke'
        then
            return
        end
        local ok, state = pcall(Bridge.execute, action, runScenario)
        local output = io.open(result .. '.tmp', 'w')
        if output then
            output:write('1 ', nonce, ' ', ok and state or 'error', '\n')
            output:close()
            os.remove(result)
            os.rename(result .. '.tmp', result)
        end
    end)
end

return Bridge
