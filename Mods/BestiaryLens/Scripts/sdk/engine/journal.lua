local valid = require('sdk.engine.objects').valid
local EnemyData = require('sdk.engine.enemy_data')
local MAX_ATTEMPTS = 30
local ENTRY_SEARCH_ATTEMPTS = 15
local Journal = {}

function Journal.new(log)
    local journal = {}
    local pendingJournal, pendingAttempts

    function journal.open(lastHud, currentTarget)
        if pendingJournal then
            return
        end
        if not valid(lastHud) then
            log('journal: gameplay HUD not ready')
            return
        end
        local pawn = lastHud:GetOwningPlayerPawn()
        if not valid(pawn) or pawn.IsDead then
            return
        end
        if pawn.IsInGameplayModal then
            log('journal: close the current menu first')
            return
        end
        local enemy = currentTarget
        if not valid(enemy) or not valid(enemy.Data) then
            log('journal: no hovered enemy')
            return
        end
        local data = enemy.Data
        if not EnemyData.unlocked(data) then
            log('journal: entry locked or absent')
            return
        end
        if data.bDoNotAllowInBestiary then
            log('journal: this enemy has no bestiary entry')
            return
        end
        pendingJournal, pendingAttempts = data, 0
        local ok, err = pcall(function()
            pawn:OpenPauseMenu(true)
        end)
        if not ok then
            pendingJournal = nil
            log('journal open failed: ' .. tostring(err))
            return
        end
        log('journal: opening bestiary for ' .. data:GetFullName())
    end

    function journal.poll()
        if not pendingJournal then
            return
        end
        pendingAttempts = pendingAttempts + 1
        if not valid(pendingJournal) or pendingAttempts > MAX_ATTEMPTS then
            log('journal: journal timeout')
            pendingJournal = nil
            return
        end
        for _, j in ipairs(FindAllOf('JournalMenu_C') or {}) do
            if valid(j) and j:IsInViewport() then
                local data = pendingJournal
                local ok, done = pcall(function()
                    local list = j.EntryList
                    if not valid(list) then
                        return false
                    end
                    local chosen
                    for i = 0, list:GetChildrenCount() - 1 do
                        local entry = list:GetChildAt(i)
                        if
                            valid(entry)
                            and valid(entry.EntryData)
                            and entry.EntryData:GetAddress() == data:GetAddress()
                        then
                            chosen = entry
                            break
                        end
                    end
                    if not valid(chosen) then
                        if pendingAttempts >= ENTRY_SEARCH_ATTEMPTS then
                            log('journal: entry absent from journal list; blocked')
                            return true
                        end
                        return false
                    end
                    local button = chosen.FS_Button
                    if not valid(button) then
                        return false
                    end
                    -- Synchronize list bookkeeping, visual selection, details and Slate focus.
                    j.LastSelectedIndex = chosen.Index
                    j:ItemEntrySelected(chosen)
                    for i = 0, list:GetChildrenCount() - 1 do
                        local entry = list:GetChildAt(i)
                        if valid(entry) and valid(entry.FS_Button) then
                            entry.FS_Button:SetIsSelected(entry:GetAddress() == chosen:GetAddress(), false)
                        end
                    end
                    button:SetUserFocus(j:GetOwningPlayer())
                    j.EntryScrollbox:ScrollWidgetIntoView(chosen, false, 0, 0)
                    -- Same journal action as pressing A/clicking the selected entry.
                    j:itemEntryClicked(chosen)
                    log('journal: activated entry via itemEntryClicked')
                    log(
                        'journal: selected index='
                            .. tostring(chosen.Index)
                            .. ' data='
                            .. data:GetFName():ToString()
                            .. ' selected='
                            .. tostring(button:GetSelected())
                            .. ' userFocus='
                            .. tostring(button:HasUserFocus(j:GetOwningPlayer()))
                    )
                    return true
                end)
                if not ok then
                    log('journal selection failed: ' .. tostring(done))
                    pendingJournal = nil
                elseif done then
                    pendingJournal = nil
                end
                break
            end
        end
    end

    return journal
end

return Journal
