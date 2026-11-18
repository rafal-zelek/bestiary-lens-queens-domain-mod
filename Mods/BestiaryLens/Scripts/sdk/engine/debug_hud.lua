local valid = require('sdk.engine.objects').valid

local HUD_CLASS = 'FS_PlayerHUD_C'
local TEXT_CLASS = '/Script/UMG.TextBlock'
local WIDGET_NAME = 'BestiaryLens_SmokeStatus'
local FONT_SIZE = 16
local NO_HIT_TEST = 4
local Z_ORDER = 110
local SCREEN_OFFSET = { X = 24, Y = 60 }
local SHADOW_OFFSET = { X = 2, Y = 2 }
local SHADOW_COLOR = { R = 0, G = 0, B = 0, A = 1 }
local MAX_WIDTH = 550
local MAX_MESSAGES = 5

local DebugHud = {}

---@param pawn AFS_PlayerChar_C
---@return UFS_PlayerHUD_C?
local function findHud(pawn)
    if not valid(pawn) then
        return nil
    end
    for _, hud in ipairs(FindAllOf(HUD_CLASS) or {}) do
        ---@cast hud UFS_PlayerHUD_C
        if valid(hud) and valid(hud.WidgetTree) then
            local owner = hud:GetOwningPlayerPawn() --[[@as APawn?]]
            if owner and valid(owner) and owner:GetAddress() == pawn:GetAddress() then
                return hud
            end
        end
    end
end

---@param hud UFS_PlayerHUD_C
---@return UTextBlock
local function textBlock(hud)
    local tree = hud.WidgetTree
    local canvas = tree.RootWidget --[[@as UCanvasPanel]]
    assert(valid(canvas), 'gameplay canvas is unavailable')

    for index = 0, canvas:GetChildrenCount() - 1 do
        local child = canvas:GetChildAt(index) --[[@as UWidget?]]
        if child and valid(child) and child:GetFName():ToString() == WIDGET_NAME then
            return child --[[@as UTextBlock]]
        end
    end

    local class = StaticFindObject(TEXT_CLASS) --[[@as UClass]]
    local widget = StaticConstructObject(class, tree, FName(WIDGET_NAME)) --[[@as UTextBlock]]
    assert(valid(widget), 'could not construct smoke TextBlock')

    -- Use the same native font source as the bestiary card.
    local source = hud.EnemyStatusZone.EnemyHealthBar_base.EnemyName
    widget:SetFont(source.Font)
    local font = widget.Font
    font.Size = FONT_SIZE
    widget:SetFont(font)
    widget:SetColorAndOpacity(source.ColorAndOpacity)
    widget:SetShadowOffset(SHADOW_OFFSET)
    widget:SetShadowColorAndOpacity(SHADOW_COLOR)
    widget:SetAutoWrapText(true)
    widget.WrapTextAt = MAX_WIDTH
    widget:SetVisibility(NO_HIT_TEST)

    local slot = canvas:AddChildToCanvas(widget) --[[@as UCanvasPanelSlot]]
    slot:SetPosition(SCREEN_OFFSET)
    slot:SetZOrder(Z_ORDER)
    slot:SetAutoSize(true)
    return widget
end

---@param pawn AFS_PlayerChar_C
---@param title string
---@return fun(message: string)
function DebugHud.new(pawn, title)
    local messages = {}

    return function(message)
        messages[#messages + 1] = message
        if #messages > MAX_MESSAGES then
            table.remove(messages, 1)
        end
        local hud = assert(findHud(pawn), 'gameplay HUD is unavailable')
        textBlock(hud):SetText(FText(title .. '\n' .. table.concat(messages, '\n')))
    end
end

return DebugHud
