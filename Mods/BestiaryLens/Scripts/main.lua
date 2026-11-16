-- BestiaryLens: contextual bestiary card. All UE access stays on game thread.
local TAG = '[BestiaryLens] '
local Config = require('config')
local Model = require('card_model')
local CardView = require('card_view')
local HUD_TICK = '/Game/UI/HUD/FS_PlayerHUD.FS_PlayerHUD_C:Tick'
local shown, errors = true, 0
local lastHud, pendingJournal, pendingAttempts, currentTarget
local candidates, scanAge, refreshAge = {}, 999, 999
local hover = { pendingAge = 0, missingAge = 0 }
-- Runtime UObject values remain opaque until version-matched UE4SS definitions are added.
---@type table<string, any>
local hoverActors = {}
local nativeLabels, cardHud, nativeCard
local gameplayView, viewStyle
local nativeTextsReady = false
local runtimeAge = 0
local specialDropClasses, lootItems = {}, {}
local traceErrors = 0
local function valid(o)
    if o == nil then
        return false
    end
    local ok, v = pcall(function()
        return o:IsValid()
    end)
    return ok and v == true
end
local function log(s)
    print(TAG .. tostring(s) .. '\n')
end
local function attempt(fn, fallback)
    local ok, v = pcall(fn)
    if ok and v ~= nil then
        return v
    end
    return fallback
end
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
local function living(e)
    return valid(e)
        and attempt(function()
            return e.HP > 0 and not e:GetFullName():find('Default__')
        end, false)
end
local function geometricScore(x, y, z, fx, fy, fz)
    local d = math.sqrt(x * x + y * y + z * z)
    if d < 1 or d > 3000 then
        return nil
    end
    return (x * fx + y * fy + z * fz) / d, d
end
-- Positive ray/AABB intersection of the visible mesh, not the displaced actor root.
local function rayBox(origin, dir, center, extent, padding, maxDistance)
    local tmin, tmax = 0, maxDistance
    for _, axis in ipairs({ 'X', 'Y', 'Z' }) do
        local d = dir[axis]
        local low, high = center[axis] - extent[axis] - padding, center[axis] + extent[axis] + padding
        if math.abs(d) < 0.000001 then
            if origin[axis] < low or origin[axis] > high then
                return nil
            end
        else
            local a, b = (low - origin[axis]) / d, (high - origin[axis]) / d
            if a > b then
                a, b = b, a
            end
            tmin, tmax = math.max(tmin, a), math.min(tmax, b)
            if tmin > tmax then
                return nil
            end
        end
    end
    return tmin
end
local function stepHover(state, id, dt)
    state.pendingAge = state.pendingAge or 0
    state.missingAge = state.missingAge or 0
    if id and id == state.displayed then
        state.pending = nil
        state.pendingAge = 0
        state.missingAge = 0
        return state.displayed
    end
    if id then
        if id ~= state.pending then
            state.pending = id
            state.pendingAge = 0
        end
        state.pendingAge = state.pendingAge + dt
        if state.pendingAge + 0.000001 >= Config.acquireDelay then
            state.displayed = id
            state.pending = nil
            state.pendingAge = 0
            state.missingAge = 0
            return id
        end
    else
        state.pending = nil
        state.pendingAge = 0
    end
    state.missingAge = state.missingAge + dt
    if state.missingAge + 0.000001 >= Config.releaseDelay then
        state.displayed = nil
    end
    return state.displayed
end
local function trace(ksl, pc, pawn, start, finish)
    local out = {}
    local hit = ksl:LineTraceSingle(
        pc,
        start,
        finish,
        0,
        false,
        { pawn },
        0,
        out,
        true,
        { R = 0, G = 0, B = 0, A = 0 },
        { R = 0, G = 0, B = 0, A = 0 },
        0
    )
    return hit, out
end
---@return any
local function selectEnemy(hud)
    local pc = hud:GetOwningPlayer()
    if not valid(pc) or not valid(pc.PlayerCameraManager) then
        return nil
    end
    local pawn = hud:GetOwningPlayerPawn()
    local cam = pc.PlayerCameraManager
    local loc, rot = cam:GetCameraLocation(), cam:GetCameraRotation()
    local p, y = math.rad(rot.Pitch), math.rad(rot.Yaw)
    local dir = { X = math.cos(p) * math.cos(y), Y = math.cos(p) * math.sin(y), Z = math.sin(p) }
    if scanAge >= 0.5 then
        candidates = FindAllOf('EnemyBase_C') or {}
        scanAge = 0
    end
    local ksl = StaticFindObject('/Script/Engine.Default__KismetSystemLibrary') --[[@as UKismetSystemLibrary]]
    local best, bestDepth = nil, Config.maxDistance
    for _, e in ipairs(candidates) do
        if living(e) and valid(e.Mesh) then
            local ok, depth = pcall(function()
                local center, extent, radius = {}, {}, {}
                -- Reflected float out-parameters use tables in the UE4SS Lua bridge.
                ---@diagnostic disable-next-line: param-type-mismatch
                ksl:GetComponentBounds(e.Mesh, center, extent, radius)
                local entry = rayBox(loc, dir, center, extent, Config.aimPadding, Config.maxDistance)
                if not entry or entry >= bestDepth then
                    return nil
                end
                -- Check the model's actual world location, including ceiling offsets.
                local hit, result = trace(ksl, pc, pawn, loc, center)
                if hit then
                    local actor = attempt(function()
                        return result.Actor:Get()
                    end)
                    if not valid(actor) or actor:GetAddress() ~= e:GetAddress() then
                        return nil
                    end
                end
                return entry
            end)
            if ok and depth then
                best, bestDepth = e, depth
            elseif not ok and traceErrors < 2 then
                traceErrors = traceErrors + 1
                log('target geometry: ' .. tostring(depth))
            end
        end
    end
    return best
end
local constructionGeneration = 'initial'
local function widgetName(name, class, generation)
    return name .. '_' .. class .. '_' .. generation
end
---@overload fun(class: 'SizeBox', tree: UObject, name: string): USizeBox
---@overload fun(class: 'VerticalBox', tree: UObject, name: string): UVerticalBox
---@overload fun(class: 'TextBlock', tree: UObject, name: string): UTextBlock
---@param class string
---@param tree UObject
---@param name string
---@return UWidget
local function create(class, tree, name)
    local widget = StaticConstructObject(
        StaticFindObject('/Script/UMG.' .. class) --[[@as UClass]],
        tree,
        FName(widgetName(name, class, constructionGeneration))
    )
    ---@cast widget UWidget
    return widget
end
local function removeOld(root)
    for i = root:GetChildrenCount() - 1, 0, -1 do
        local w = root:GetChildAt(i)
        if valid(w) then
            local n = w:GetFName():ToString()
            if
                n == 'BestiaryLens_Label'
                or n == 'BestiaryLens_BestiaryCard'
                or n == 'BestiaryLens_CardSize'
                or n:find('^BestiaryLens_LootTemplateHolder')
                or n:find('^BestiaryLens_NativeTextHolder_')
                or n:find('^BestiaryLens_CardSize_')
                or n == 'BestiaryLens_NativeTextHolder'
            then
                w:RemoveFromParent()
            end
        end
    end
end
local function buildCard(hud)
    if gameplayView and valid(gameplayView.root) and valid(cardHud) and cardHud:GetAddress() == hud:GetAddress() then
        return
    end
    local tree, root = hud.WidgetTree, hud.WidgetTree.RootWidget
    local source = hud.EnemyStatusZone.EnemyHealthBar_base.EnemyName
    viewStyle = {
        font = source.Font,
        color = source.ColorAndOpacity,
        shadowOffset = source.ShadowOffset,
        shadowColor = source.ShadowColorAndOpacity,
        panelClass = StaticFindObject('/Game/UI/UI_Style/UIArea.UIArea_C'),
        itemClass = hud.ConsumableHUD:GetClass(),
        itemFont = hud.ConsumableHUD.ItemName.Font,
        itemFrame = hud.ConsumableHUD.ItemFrame.Brush,
    }
    removeOld(root)
    gameplayView = CardView.create(
        hud,
        viewStyle,
        { width = 320, anchorX = 1, anchorY = 1, x = -Config.rightMargin, y = -Config.bottomMargin }
    )
    constructionGeneration = gameplayView.generation
    nativeCard = gameplayView.panel
    nativeLabels = {}
    nativeTextsReady = false
    local holder = create('SizeBox', tree, 'BestiaryLens_NativeTextHolder')
    holder:SetVisibility(1)
    local stack = create('VerticalBox', tree, 'BestiaryLens_NativeLabels')
    holder:SetContent(stack)
    root:AddChildToCanvas(holder)
    for _, name in ipairs({
        'HPLabel',
        'StrLabel',
        'xplabel',
        'SlashResistanceLabel',
        'PierceResistanceLabel',
        'ImpactResistanceLabel',
        'DropsHeader',
        'Title',
        'MissingEnemyModeltext',
    }) do
        local t = create('TextBlock', tree, 'BestiaryLens_Native_' .. name)
        t:SetText(FText(''))
        stack:AddChildToVerticalBox(t)
        nativeLabels[name] = t
    end
    cardHud = hud
    log('parameterized card created generation=' .. constructionGeneration)
end
local failedConstructionHud
local function ensureCard(hud)
    if failedConstructionHud == hud:GetAddress() then
        return false
    end
    local ok, why = pcall(buildCard, hud)
    if not ok then
        failedConstructionHud = hud:GetAddress()
        log('card construction stopped until reload: ' .. tostring(why))
        return false
    end
    return true
end
local nativeCaptureLogged = false
local function captureNativeTexts()
    if nativeTextsReady or not nativeLabels or not valid(nativeLabels.Title) then
        return
    end
    local function copy(w, depth)
        if not valid(w) or depth > 40 then
            return
        end
        local target = nativeLabels[w:GetFName():ToString()]
        if valid(target) then
            local value = attempt(function()
                return w:GetText()
            end)
            if value and value:ToString() ~= '' then
                target:SetText(value)
            end
        end
        local count = attempt(function()
            return w:GetChildrenCount()
        end, 0)
        for i = 0, count - 1 do
            copy(w:GetChildAt(i), depth + 1)
        end
        local tree = attempt(function()
            return w.WidgetTree
        end)
        if valid(tree) then
            copy(tree.RootWidget, depth + 1)
        end
    end
    -- Asset template widgets already contain localized FTexts before a menu opens.
    -- Reading their WidgetTree does not construct a menu or execute its Blueprint.
    local descriptions = FindAllOf('EnemyDescriptionBox_C') or {}
    for _, w in ipairs(descriptions) do
        copy(w, 0)
        local template = attempt(function()
            return (w:GetClass() --[[@as UWidgetBlueprintGeneratedClass]]).WidgetTree
        end)
        if valid(template) then
            copy(template.RootWidget, 0)
        end
        if not nativeCaptureLogged then
            log('native template ' .. w:GetFullName() .. ' classTree=' .. tostring(valid(template)))
        end
    end
    for _, j in ipairs(FindAllOf('JournalMenu_C') or {}) do
        if valid(j) then
            copy(
                attempt(function()
                    return j.EnemyDescriptionBox
                end),
                0
            )
            local tree = attempt(function()
                return j.WidgetTree
            end)
            if valid(tree) then
                copy(tree.RootWidget, 0)
            end
            local template = attempt(function()
                return (j:GetClass() --[[@as UWidgetBlueprintGeneratedClass]]).WidgetTree
            end)
            if valid(template) then
                copy(template.RootWidget, 0)
            end
        end
    end
    nativeTextsReady = true
    for _, key in ipairs({
        'HPLabel',
        'StrLabel',
        'xplabel',
        'SlashResistanceLabel',
        'PierceResistanceLabel',
        'ImpactResistanceLabel',
        'DropsHeader',
        'Title',
        'MissingEnemyModeltext',
    }) do
        if nativeLabels[key]:GetText():ToString() == '' then
            nativeTextsReady = false
        end
    end
    if not nativeCaptureLogged then
        log('native text templates=' .. #descriptions .. ' HP=' .. nativeLabels.HPLabel:GetText():ToString())
        nativeCaptureLogged = true
    end
end
local function excerpt(text)
    text = text:gsub('<[^>]+>', ''):gsub('%s+', ' ')
    local stop = utf8.offset(text, 105)
    if stop then
        return text:sub(1, stop - 1) .. '…'
    end
    return text
end
local function resistanceStyle(value)
    if value == 1 then
        return '+', { R = 0.45, G = 0.9, B = 0.45, A = 1 }
    end
    if value == 2 then
        return '-', { R = 1, G = 0.4, B = 0.35, A = 1 }
    end
    if value == 0 then
        return '=', { R = 0.85, G = 0.82, B = 0.73, A = 1 }
    end
    return '?', { R = 0.6, G = 0.6, B = 0.6, A = 1 }
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
        if slot and tonumber(slot) > 2 then
            return nil
        end -- fail visibly on a changed schema
    end
    local drops = {}
    for index = 1, 2 do
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
    for depth = 1, 12 do
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
local function dropsFor(data, actor)
    local key = data:GetFullName() .. ':' .. (valid(actor) and actor:GetFName():ToString() or 'none')
    local cached = lootItems[key]
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
    lootItems[key] = { rows = rows, special = special, expires = runtimeAge + 2 }
    return rows, special
end
local function label(name)
    return nativeLabels[name]:GetText()
end
local function presentationFor(data, actor, known)
    if not known then
        return Model.build({ known = false })
    end
    local drops, special = dropsFor(data, actor)
    local rows = {}
    for i, drop in ipairs(drops or {}) do
        rows[i] = {
            item = drop.item,
            name = valid(drop.item) and drop.item.Name or nil,
            chance = drop.chance,
            coins = drop.coins,
        }
    end
    return Model.build({
        known = true,
        name = data.Name,
        stats = {
            { kind = 'hp', caption = label('HPLabel'), value = data.HP },
            { kind = 'attack', caption = label('StrLabel'), value = data.BaseDamage },
            { kind = 'xp', caption = label('xplabel'), value = data.XPReward },
        },
        resists = {
            { caption = label('SlashResistanceLabel'), value = data.SlashResistance },
            { caption = label('PierceResistanceLabel'), value = data.PierceResistance },
            { caption = label('ImpactResistanceLabel'), value = data.BluntResistance },
        },
        drops = rows,
        lootCaption = label('DropsHeader'),
        unknownCaption = label('MissingEnemyModeltext'),
        hintCaption = label('Title'),
        showHint = true,
        specialDrops = special,
    })
end
local lastState
local function update(context, delta)
    local hud = context:get()
    if not valid(hud) or not valid(hud.WidgetTree) then
        return
    end
    lastHud = hud
    local dt = attempt(function()
        return delta:get()
    end, 1 / 60)
    if type(dt) ~= 'number' then
        dt = 1 / 60
    end
    runtimeAge = runtimeAge + dt
    scanAge, refreshAge = scanAge + dt, refreshAge + dt
    if refreshAge < 0.1 then
        return
    end
    local elapsed = refreshAge
    refreshAge = 0
    if not ensureCard(hud) then
        return
    end
    if label('HPLabel'):ToString() == '' then
        captureNativeTexts()
    end
    local pawn = hud:GetOwningPlayerPawn()
    if not valid(pawn) or pawn.IsDead or pawn.IsInGameplayModal or not shown then
        currentTarget = nil
        hover = { pendingAge = 0, missingAge = 0 }
        hoverActors = {}
        gameplayView:setVisible(false)
        return
    end
    local detected = selectEnemy(hud)
    local id = living(detected) and detected:GetFName():ToString() or nil
    if id then
        hoverActors[id] = detected
    end
    local selected = stepHover(hover, id, elapsed)
    currentTarget = selected and hoverActors[selected] or nil
    if currentTarget and not living(currentTarget) then
        currentTarget = nil
        hover = { pendingAge = 0, missingAge = 0 }
    end
    for key in pairs(hoverActors) do
        if key ~= hover.displayed and key ~= hover.pending then
            hoverActors[key] = nil
        end
    end
    local state = 'none'
    if living(currentTarget) then
        local data = currentTarget.Data
        local known = unlocked(data)
        state = currentTarget:GetFName():ToString() .. ':' .. tostring(known)
        gameplayView:render(presentationFor(data, currentTarget, known))
        gameplayView:setVisible(true)
        hud:ForceLayoutPrepass()
        gameplayView:measure()
    else
        gameplayView:setVisible(false)
    end
    if state ~= lastState then
        log('card ' .. state)
        lastState = state
    end
end
if BestiaryLens_TEST_MODE then
    return {
        unlocked = unlocked,
        score = geometricScore,
        excerpt = excerpt,
        resistanceStyle = resistanceStyle,
        rayBox = rayBox,
        stepHover = stepHover,
        decodeDrops = decodeDrops,
        validChance = validChance,
        cardContent = cardContent,
        widgetName = widgetName,
    }
end
assert(LoopInGameThreadWithDelay, 'Newer UE4SS required')
local hooked = false
local timer
timer = LoopInGameThreadWithDelay(500, function()
    if hooked then
        return
    end
    for _, hud in ipairs(FindAllOf('FS_PlayerHUD_C') or {}) do
        if valid(hud) and valid(hud.WidgetTree) then
            lastHud = hud
            local ok, why = pcall(ensureCard, hud)
            if not ok then
                log('card construction: ' .. tostring(why))
            end
            break
        end
    end
    if not valid(StaticFindObject(HUD_TICK)) then
        return
    end
    local ok, err = pcall(RegisterHook, HUD_TICK, function(context, geometry, delta)
        local good, why = pcall(update, context, delta)
        if not good and errors < 5 then
            errors = errors + 1
            log(why)
        end
    end)
    if ok then
        hooked = true
        log('HUD Tick hook registered')
        if timer then
            CancelDelayedAction(timer)
        end
    else
        log(err)
    end
end)
local function openHoveredBestiary()
    if pendingJournal then
        return
    end
    if not valid(lastHud) then
        log('F10: gameplay HUD not ready')
        return
    end
    local pawn = lastHud:GetOwningPlayerPawn()
    if not valid(pawn) or pawn.IsDead then
        return
    end
    if pawn.IsInGameplayModal then
        log('F10: close the current menu first')
        return
    end
    local enemy = currentTarget
    if not valid(enemy) or not valid(enemy.Data) then
        log('F10: no hovered enemy')
        return
    end
    local data = enemy.Data
    if not unlocked(data) then
        log('F10: entry locked or absent')
        return
    end
    if data.bDoNotAllowInBestiary then
        log('F10: this enemy has no bestiary entry')
        return
    end
    pendingJournal, pendingAttempts = data, 0
    local ok, err = pcall(function()
        pawn:OpenPauseMenu(true)
    end)
    if not ok then
        pendingJournal = nil
        log('F10 open failed: ' .. tostring(err))
        return
    end
    log('F10: opening bestiary for ' .. data:GetFullName())
end
-- Runs even if the pause menu stops the gameplay HUD's Tick.
local captureTicks = 0
LoopInGameThreadWithDelay(100, function()
    captureTicks = captureTicks + 1
    if captureTicks % 5 == 0 then
        captureNativeTexts()
    end
    if not pendingJournal then
        return
    end
    pendingAttempts = pendingAttempts + 1
    if not valid(pendingJournal) or pendingAttempts > 30 then
        log('F10: journal timeout')
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
                    if pendingAttempts >= 15 then
                        log('F10: entry absent from journal list; blocked')
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
                log('F10: activated entry via itemEntryClicked (A)')
                log(
                    'F10: selected index='
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
                log('F10 selection failed: ' .. tostring(done))
                pendingJournal = nil
            elseif done then
                pendingJournal = nil
            end
            break
        end
    end
end)
RegisterKeyBind(Key.F10, function()
    ExecuteInGameThread(function()
        local ok, err = pcall(openHoveredBestiary)
        if not ok then
            log('F10: ' .. tostring(err))
        end
    end)
end)
RegisterKeyBind(Key.F9, function()
    ExecuteInGameThread(function()
        shown = not shown
    end)
end)
log('BestiaryLens 0.1.0 loaded; waiting for gameplay HUD')
