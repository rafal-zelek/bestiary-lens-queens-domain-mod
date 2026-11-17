local Objects = require('sdk.engine.objects')
local CardWidgets = require('sdk.engine.card_widgets')
local EnemyData = require('sdk.engine.enemy_data')
local Journal = require('sdk.engine.journal')
local Targeting = require('sdk.domain.targeting')

local valid, attempt = Objects.valid, Objects.attempt
local HUD_TICK = '/Game/UI/HUD/FS_PlayerHUD.FS_PlayerHUD_C:Tick'
local FALLBACK_DELTA = 1 / 60
local MAX_TRACE_ERRORS = 2
local MAX_TICK_ERRORS = 5
local MAX_WIDGET_DEPTH = 40
local COLLAPSED = 1
local TRACE_CHANNEL, NO_DEBUG_DRAW, NO_DEBUG_DURATION = 0, 0, 0
local TRACE_COMPLEX, IGNORE_SELF = false, true
local CLEAR = { R = 0, G = 0, B = 0, A = 0 }
---@enum BL.NativeLabel
local NativeLabel = {
    HP = 'HPLabel',
    ATTACK = 'StrLabel',
    XP = 'xplabel',
    SLASH = 'SlashResistanceLabel',
    PIERCE = 'PierceResistanceLabel',
    IMPACT = 'ImpactResistanceLabel',
    LOOT = 'DropsHeader',
    JOURNAL = 'Title',
    UNKNOWN = 'MissingEnemyModeltext',
}
local NATIVE_LABELS = {
    NativeLabel.HP,
    NativeLabel.ATTACK,
    NativeLabel.XP,
    NativeLabel.SLASH,
    NativeLabel.PIERCE,
    NativeLabel.IMPACT,
    NativeLabel.LOOT,
    NativeLabel.JOURNAL,
    NativeLabel.UNKNOWN,
}

---@class BL.NativeLensTarget: BL.LensTarget
---@field actor AEnemyBase_C

---@class BL.NativeLensPort: BL.LensPort
---@field readLensTarget fun(): AEnemyBase_C?
---@field start fun(onTick: fun(dt: number), toggle: fun())

local Engine = {}
---@param name string
---@param class string
---@param generation string
---@return string
local function widgetName(name, class, generation)
    return name .. '_' .. class .. '_' .. generation
end

Engine.widgetName = widgetName

---@param config BL.LensConfig
---@param log fun(message: string)
---@return BL.NativeLensPort
function Engine.new(config, log)
    local runtime = {}
    local journal = Journal.new(log)
    local errors, traceErrors = 0, 0
    local lastHud
    ---@type AEnemyBase_C?
    local currentTarget
    local candidates, scanAge = {}, config.targeting.scanInterval
    local nativeLabels, cardHud, gameplayView
    local nativeTextsReady = false
    local runtimeAge = 0
    local lootItems = {}

    local function living(e)
        return valid(e)
            and attempt(function()
                return e.HP > 0 and not e:GetFullName():find('Default__')
            end, false)
    end
    local function trace(ksl, pc, pawn, start, finish)
        local out = {}
        local hit = ksl:LineTraceSingle(
            pc,
            start,
            finish,
            TRACE_CHANNEL,
            TRACE_COMPLEX,
            { pawn },
            NO_DEBUG_DRAW,
            out,
            IGNORE_SELF,
            CLEAR,
            CLEAR,
            NO_DEBUG_DURATION
        )
        return hit, out
    end
    ---@return AEnemyBase_C?
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
        if scanAge >= config.targeting.scanInterval then
            candidates = FindAllOf('EnemyBase_C') or {}
            ---@cast candidates AEnemyBase_C[]
            scanAge = 0
        end
        local ksl = StaticFindObject('/Script/Engine.Default__KismetSystemLibrary') --[[@as UKismetSystemLibrary]]
        local best, bestDepth = nil, config.targeting.maxDistance
        for _, e in ipairs(candidates) do
            if living(e) and valid(e.Mesh) then
                local ok, depth = pcall(function()
                    local center, extent, radius = {}, {}, {}
                    -- Reflected float out-parameters use tables in the UE4SS Lua bridge.
                    ---@diagnostic disable-next-line: param-type-mismatch
                    ksl:GetComponentBounds(e.Mesh, center, extent, radius)
                    local entry = Targeting.rayBox(
                        loc,
                        dir,
                        center,
                        extent,
                        config.targeting.aimPadding,
                        config.targeting.maxDistance
                    )
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
                elseif not ok and traceErrors < MAX_TRACE_ERRORS then
                    traceErrors = traceErrors + 1
                    log('target geometry: ' .. tostring(depth))
                end
            end
        end
        return best
    end
    local constructionGeneration = 'initial'
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
        if
            gameplayView
            and valid(gameplayView.root)
            and valid(cardHud)
            and cardHud:GetAddress() == hud:GetAddress()
        then
            return
        end
        local tree, root = hud.WidgetTree, hud.WidgetTree.RootWidget
        local source = hud.EnemyStatusZone.EnemyHealthBar_base.EnemyName
        local viewStyle = {
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
        gameplayView = CardWidgets.create(hud, viewStyle, config.placement)
        constructionGeneration = gameplayView.generation
        nativeLabels = {}
        nativeTextsReady = false
        local holder = create('SizeBox', tree, 'BestiaryLens_NativeTextHolder')
        holder:SetVisibility(COLLAPSED)
        local stack = create('VerticalBox', tree, 'BestiaryLens_NativeLabels')
        holder:SetContent(stack)
        root:AddChildToCanvas(holder)
        for _, name in ipairs(NATIVE_LABELS) do
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
        if nativeTextsReady or not nativeLabels or not valid(nativeLabels[NativeLabel.JOURNAL]) then
            return
        end
        local function copy(w, depth)
            if not valid(w) or depth > MAX_WIDGET_DEPTH then
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
        for _, key in ipairs(NATIVE_LABELS) do
            if nativeLabels[key]:GetText():ToString() == '' then
                nativeTextsReady = false
            end
        end
        if not nativeCaptureLogged then
            log(
                'native text templates=' .. #descriptions .. ' HP=' .. nativeLabels[NativeLabel.HP]:GetText():ToString()
            )
            nativeCaptureLogged = true
        end
    end
    ---@param name BL.NativeLabel
    local function label(name)
        return nativeLabels[name]:GetText()
    end
    ---@return BL.UnlockedEntry
    local function readEntry(data, actor)
        local drops, special = EnemyData.dropsFor(data, actor, runtimeAge, lootItems)
        local rows = {}
        for i, drop in ipairs(drops or {}) do
            rows[i] = {
                item = drop.item,
                name = valid(drop.item) and drop.item.Name or nil,
                chance = drop.chance,
                coins = drop.coins,
            }
        end
        return {
            known = true,
            name = data.Name,
            hitPoints = { caption = label(NativeLabel.HP), value = data.HP },
            attack = { caption = label(NativeLabel.ATTACK), value = data.BaseDamage },
            experience = { caption = label(NativeLabel.XP), value = data.XPReward },
            slash = { caption = label(NativeLabel.SLASH), value = data.SlashResistance },
            pierce = { caption = label(NativeLabel.PIERCE), value = data.PierceResistance },
            impact = { caption = label(NativeLabel.IMPACT), value = data.BluntResistance },
            drops = rows,
            lootCaption = label(NativeLabel.LOOT),
            unknownCaption = label(NativeLabel.UNKNOWN),
            hintCaption = label(NativeLabel.JOURNAL),
            showHint = true,
            specialDrops = special,
        }
    end

    local function update(context, delta, onTick)
        local hud = context:get()
        if not valid(hud) or not valid(hud.WidgetTree) then
            return
        end
        lastHud = hud
        local dt = attempt(function()
            return delta:get()
        end, FALLBACK_DELTA)
        if type(dt) ~= 'number' then
            dt = FALLBACK_DELTA
        end
        runtimeAge, scanAge = runtimeAge + dt, scanAge + dt
        onTick(dt)
    end

    function runtime.ensureCard()
        if not ensureCard(lastHud) then
            return false
        end
        if label(NativeLabel.HP):ToString() == '' then
            captureNativeTexts()
        end
        return true
    end

    function runtime.isGameplayActive()
        local pawn = lastHud:GetOwningPlayerPawn()
        return valid(pawn) and not pawn.IsDead and not pawn.IsInGameplayModal
    end

    ---@return BL.NativeLensTarget?
    function runtime.selectTarget()
        local actor = selectEnemy(lastHud)
        if actor and living(actor) then
            return { id = actor:GetFName():ToString(), actor = actor }
        end
    end

    ---@param target BL.LensTarget
    function runtime.isLive(target)
        ---@cast target BL.NativeLensTarget
        return living(target.actor)
    end

    ---@param target BL.LensTarget?
    function runtime.setTarget(target)
        ---@cast target BL.NativeLensTarget?
        currentTarget = target and target.actor or nil
    end

    function runtime.readLensTarget()
        return currentTarget
    end

    ---@param target BL.LensTarget
    ---@return BL.CardEntry
    function runtime.readTarget(target)
        ---@cast target BL.NativeLensTarget
        local actor = target.actor
        local data = actor.Data
        if EnemyData.unlocked(data) then
            return readEntry(data, actor)
        end
        return { known = false }
    end

    ---@param model BL.CardModel
    function runtime.render(model)
        gameplayView:render(model)
        gameplayView:setVisible(true)
        lastHud:ForceLayoutPrepass()
        gameplayView:measure()
    end

    function runtime.hide()
        gameplayView:setVisible(false)
    end

    ---@param onTick fun(dt: number)
    ---@param toggle fun()
    function runtime.start(onTick, toggle)
        assert(LoopInGameThreadWithDelay, 'Newer UE4SS required')
        local hooked = false
        local timer
        timer = LoopInGameThreadWithDelay(config.timing.hookRetryMs, function()
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
            local ok, err = pcall(RegisterHook, HUD_TICK, function(context, _, delta)
                local good, why = pcall(update, context, delta, onTick)
                if not good and errors < MAX_TICK_ERRORS then
                    errors = errors + 1
                    log(tostring(why))
                end
            end)
            if ok then
                hooked = true
                log('HUD Tick hook registered')
                if timer then
                    CancelDelayedAction(timer)
                end
            else
                log(tostring(err))
            end
        end)
        local captureTicks = 0
        LoopInGameThreadWithDelay(config.timing.journalPollMs, function()
            captureTicks = captureTicks + 1
            if captureTicks % config.timing.captureEvery == 0 then
                captureNativeTexts()
            end
            journal.poll()
        end)
        RegisterKeyBind(Key.F10, function()
            ExecuteInGameThread(function()
                local ok, err = pcall(journal.open, lastHud, currentTarget)
                if not ok then
                    log('F10: ' .. tostring(err))
                end
            end)
        end)
        RegisterKeyBind(Key.F9, function()
            ExecuteInGameThread(toggle)
        end)
    end

    return runtime
end

return Engine
