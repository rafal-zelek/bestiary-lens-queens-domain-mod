local Bridge = {}

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

---@param action string
---@return string
local function execute(action)
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
    return 'blocked'
end

---@param scripts string
function Bridge.start(scripts)
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
        if action ~= 'observe' and action ~= 'open-files' and action ~= 'back' then
            return
        end
        local ok, state = pcall(execute, action)
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
