-- Presentation only: no actor queries, targeting, unlock checks, saves or journals.
local V = {}
local COLLAPSED, DECORATIVE = 1, 4
local DEFAULT_ANCHOR, DEFAULT_SCALE = 0, 1
local STAT_COUNT, RESISTANCE_COUNT = 3, 3
local MIN_HEIGHT, CONTENT_INSET = 100, 36
local CENTER, SCALE_TO_FIT, DOWN_ONLY = 2, 2, 1
local FILL, SPECIFIED_COLOR = 1, 0
local Z_ORDER = 100
local CHISEL_SIZE = 16
local CARD_INSETS = { Left = 8, Top = 8, Right = 8, Bottom = 8 }
local CARD_PADDING = { Left = 10, Top = 8, Right = 10, Bottom = 8 }
local CARD_BACKGROUND = { R = 0, G = 0, B = 0, A = 0.82 }
local STAT_NUMBER_HEIGHT, STAT_NUMBER_INSET, COLUMN_WRAP_INSET = 40, 8, 4
local RESISTANCE_PADDING = { Left = 0, Top = 3, Right = 0, Bottom = 4 }
local LOOT_ICON_SIZE, LOOT_RATE_WIDTH, MIN_LOOT_NAME_WIDTH = 56, 62, 60
local LOOT_ICON_PADDING = { Left = 3, Top = 3, Right = 3, Bottom = 3 }
local LOOT_NAME_PADDING = { Left = 8, Top = 0, Right = 0, Bottom = 0 }
local LOOT_RATE_PADDING = { Left = 6, Top = 0, Right = 0, Bottom = 0 }
local FONT_SIZE = {
    title = 16,
    statValue = 22,
    caption = 13,
    resistance = 14,
    notice = 12,
    hint = 14,
    lootName = 14,
    lootRate = 13,
}
local valid = require('sdk.engine.objects').valid
local CardView = require('card_view')
---@param t UTextBlock
---@param value (BL.CardText | FText)?
local function set(t, value)
    local text = value --[[@as FText?]]
    t:SetText(text or FText(''))
end
---@param placement BL.CardPlacement
function V.create(hud, style, placement)
    local self = setmetatable(
        { hud = hud, placement = placement, stats = {}, resists = {}, drops = {} },
        { __index = V }
    )
    local tree = hud.WidgetTree
    local factory = StaticFindObject('/Script/UMG.Default__WidgetBlueprintLibrary') --[[@as UWidgetBlueprintLibrary]]
    local panel = factory:Create(hud, style.panelClass, hud:GetOwningPlayer()) --[[@as UUIArea_C]]
    assert(valid(panel) and valid(panel.Content), 'Native UIArea unavailable')
    self.generation = panel:GetFName():ToString()
    self.style = style
    ---@overload fun(class: 'Border', name: string): UBorder
    ---@overload fun(class: 'HorizontalBox', name: string): UHorizontalBox
    ---@overload fun(class: 'Image', name: string): UImage
    ---@overload fun(class: 'Overlay', name: string): UOverlay
    ---@overload fun(class: 'ScaleBox', name: string): UScaleBox
    ---@overload fun(class: 'SizeBox', name: string): USizeBox
    ---@overload fun(class: 'TextBlock', name: string): UTextBlock
    ---@overload fun(class: 'VerticalBox', name: string): UVerticalBox
    ---@param class string
    ---@param name string
    ---@return UWidget
    local function make(class, name)
        local widgetClass = StaticFindObject('/Script/UMG.' .. class) --[[@as UClass]]
        local widget = StaticConstructObject(
            widgetClass,
            tree,
            FName('BestiaryLens_' .. name .. '_' .. class .. '_' .. self.generation)
        )
        ---@cast widget UWidget
        return widget
    end
    self.make = make
    local width = self.placement.width
    self.contentWidth = width - CONTENT_INSET
    local function text(name, size)
        local t = make('TextBlock', name)
        t:SetFont(style.font)
        local f = t.Font
        f.Size = size
        t:SetFont(f)
        t:SetColorAndOpacity(style.color)
        t:SetShadowOffset(style.shadowOffset)
        t:SetShadowColorAndOpacity(style.shadowColor)
        t:SetAutoWrapText(true)
        t.WrapTextAt = self.contentWidth
        return t
    end
    self.text = text
    panel.EnableShadow = false
    panel.In = false
    panel.Random = false
    panel:PreConstruct(false)
    local brush = panel.Chisel.Brush
    brush.ImageSize = { X = CHISEL_SIZE, Y = CHISEL_SIZE }
    panel.Chisel:SetBrush(brush)
    local insideSlot = panel.Inside.Slot --[[@as UCanvasPanelSlot]]
    local contentSlot = panel.Content.Slot --[[@as UCanvasPanelSlot]]
    insideSlot:SetOffsets(CARD_INSETS)
    contentSlot:SetOffsets(CARD_INSETS)
    local stack = make('VerticalBox', 'CardStack')
    self.stack = stack
    self.title = text('CardName', FONT_SIZE.title)
    stack:AddChildToVerticalBox(self.title)
    local grid = make('HorizontalBox', 'StatGrid')
    stack:AddChildToVerticalBox(grid)
    for i = 1, STAT_COUNT do
        local column = make('VerticalBox', 'StatColumn' .. i)
        local value = text('StatValue' .. i, FONT_SIZE.statValue)
        local caption = text('StatCaption' .. i, FONT_SIZE.caption)
        caption.WrapTextAt = self.contentWidth / STAT_COUNT - COLUMN_WRAP_INSET
        value.WrapTextAt = self.contentWidth / STAT_COUNT - COLUMN_WRAP_INSET
        -- Bound each numeric value independently; ScaleBox shrinks long numbers.
        local valueSize = make('SizeBox', 'StatValueSize' .. i)
        valueSize:SetWidthOverride(self.contentWidth / STAT_COUNT - STAT_NUMBER_INSET)
        valueSize:SetHeightOverride(STAT_NUMBER_HEIGHT)
        local scale = make('ScaleBox', 'StatNumberScale' .. i)
        scale:SetStretch(SCALE_TO_FIT)
        scale:SetStretchDirection(DOWN_ONLY)
        value:SetAutoWrapText(false)
        scale:SetContent(value)
        local valueSlot = value.Slot --[[@as UScaleBoxSlot]]
        valueSlot:SetHorizontalAlignment(FILL)
        valueSlot:SetVerticalAlignment(CENTER)
        valueSize:SetContent(scale)
        column:AddChildToVerticalBox(valueSize)
        column:AddChildToVerticalBox(caption)
        local cell = make('SizeBox', 'StatCell' .. i)
        cell:SetWidthOverride(self.contentWidth / STAT_COUNT)
        cell:SetContent(column)
        grid:AddChildToHorizontalBox(cell)
        self.stats[i] = { column = column, value = value, caption = caption }
    end
    local rr = make('HorizontalBox', 'ResistanceRow')
    stack:AddChildToVerticalBox(rr)
    for i = 1, RESISTANCE_COUNT do
        local t = text('Resistance' .. i, FONT_SIZE.resistance)
        t.WrapTextAt = self.contentWidth / RESISTANCE_COUNT - COLUMN_WRAP_INSET
        local cell = make('SizeBox', 'ResistanceCell' .. i)
        cell:SetWidthOverride(self.contentWidth / RESISTANCE_COUNT)
        cell:SetContent(t)
        local resistSlot = rr:AddChildToHorizontalBox(cell) --[[@as UHorizontalBoxSlot]]
        resistSlot:SetPadding(RESISTANCE_PADDING)
        self.resists[i] = t
    end
    self.lootCaption = text('LootCaption', FONT_SIZE.caption)
    stack:AddChildToVerticalBox(self.lootCaption)
    self.lootStack = make('VerticalBox', 'LootStack')
    stack:AddChildToVerticalBox(self.lootStack)
    self.notice = text('LootNotice', FONT_SIZE.notice)
    stack:AddChildToVerticalBox(self.notice)
    local hint = make('HorizontalBox', 'HintRow')
    stack:AddChildToVerticalBox(hint)
    self.hintRow = hint
    self.key = text('HintKey', FONT_SIZE.hint)
    set(self.key, FText('[F10] '))
    hint:AddChildToHorizontalBox(self.key)
    self.hint = text('Hint', FONT_SIZE.hint)
    hint:AddChildToHorizontalBox(self.hint)
    -- Native icon material owners live within this instance, never a global singleton.
    self.owners = make('VerticalBox', 'IconOwners')
    self.owners:SetVisibility(COLLAPSED)
    stack:AddChildToVerticalBox(self.owners)
    local padding = make('Border', 'CardPadding')
    padding:SetBrushColor(CARD_BACKGROUND)
    padding:SetPadding(CARD_PADDING)
    padding:SetContent(stack)
    panel.Content:SetContent(padding)
    local root = make('SizeBox', 'CardSize')
    self.root = root
    root:SetWidthOverride(width)
    root:SetHeightOverride(MIN_HEIGHT)
    root:SetContent(panel)
    root:SetVisibility(COLLAPSED)
    self.slot = hud.WidgetTree.RootWidget:AddChildToCanvas(root)
    self.slot:SetAutoSize(true)
    self.slot:SetZOrder(Z_ORDER)
    self:place(self.placement)
    return self
end

---@param p BL.CardPlacement
function V:place(p)
    self.placement = p
    local ax, ay = p.anchorX or DEFAULT_ANCHOR, p.anchorY or DEFAULT_ANCHOR
    self.slot:SetAnchors({ Minimum = { X = ax, Y = ay }, Maximum = { X = ax, Y = ay } })
    self.slot:SetAlignment({ X = p.alignX or ax, Y = p.alignY or ay })
    self.slot:SetPosition({ X = p.x or 0, Y = p.y or 0 })
    self.root:SetRenderTransformPivot({ X = 0, Y = 0 })
    self.root:SetRenderScale({ X = p.scale or DEFAULT_SCALE, Y = p.scale or DEFAULT_SCALE })
end

function V:setVisible(visible)
    self.root:SetVisibility(visible and DECORATIVE or COLLAPSED)
end

---@param index integer
function V:ensureDrop(index)
    if self.drops[index] then
        return self.drops[index]
    end
    local make, text = self.make, self.text
    local row = make('HorizontalBox', 'LootRow' .. index)
    local overlay = make('Overlay', 'LootVisual' .. index)
    local square = make('SizeBox', 'LootSquare' .. index)
    square:SetWidthOverride(LOOT_ICON_SIZE)
    square:SetHeightOverride(LOOT_ICON_SIZE)
    square:SetContent(overlay)
    row:AddChildToHorizontalBox(square):SetVerticalAlignment(CENTER)
    local frame = make('Image', 'LootFrame' .. index)
    frame:SetBrush(self.style.itemFrame)
    overlay:AddChildToOverlay(frame)
    local icon = make('Image', 'LootIcon' .. index)
    overlay:AddChildToOverlay(icon):SetPadding(LOOT_ICON_PADDING)
    local title = text('LootName' .. index, FONT_SIZE.lootName)
    title:SetFont(self.style.itemFont)
    local f = title.Font
    f.Size = FONT_SIZE.lootName
    title:SetFont(f)
    local titleWidth = math.max(
        MIN_LOOT_NAME_WIDTH,
        self.contentWidth - LOOT_ICON_SIZE - LOOT_NAME_PADDING.Left - LOOT_RATE_PADDING.Left - LOOT_RATE_WIDTH
    )
    title.WrapTextAt = titleWidth
    local nameSize = make('SizeBox', 'LootNameSize' .. index)
    nameSize:SetWidthOverride(titleWidth)
    nameSize:SetContent(title)
    local nameSlot = row:AddChildToHorizontalBox(nameSize)
    nameSlot:SetVerticalAlignment(CENTER)
    nameSlot:SetPadding(LOOT_NAME_PADDING)
    local rate = text('LootRate' .. index, FONT_SIZE.lootRate)
    rate.WrapTextAt = LOOT_RATE_WIDTH
    local rateSlot = row:AddChildToHorizontalBox(rate)
    rateSlot:SetVerticalAlignment(CENTER)
    rateSlot:SetPadding(LOOT_RATE_PADDING)
    self.lootStack:AddChildToVerticalBox(row)
    local owner = make('SizeBox', 'IconOwner' .. index)
    local factory = StaticFindObject('/Script/UMG.Default__WidgetBlueprintLibrary') --[[@as UWidgetBlueprintLibrary]]
    local template = factory:Create(self.hud, self.style.itemClass, self.hud:GetOwningPlayer())
    ---@cast template UConsumableHUD_C
    owner:SetContent(template)
    self.owners:AddChildToVerticalBox(owner)
    local entry = { row = row, icon = icon, title = title, rate = rate, template = template }
    self.drops[index] = entry
    return entry
end

---@param props BL.CardModel
function V:render(props)
    set(self.title, props.name)
    for i, widgets in ipairs(self.stats) do
        local row = props.stats[i]
        local caption = row and row.caption --[[@as FText?]]
        local hasCaption = caption and caption:ToString() ~= ''
        widgets.column:SetVisibility(hasCaption and DECORATIVE or COLLAPSED)
        set(widgets.caption, row and row.caption)
        set(widgets.value, FText(CardView.statValue(row and row.value)))
        widgets.value:SetColorAndOpacity({
            SpecifiedColor = CardView.statColor(row and row.kind),
            ColorUseRule = SPECIFIED_COLOR,
        })
    end
    for i, t in ipairs(self.resists) do
        local row = props.resists[i]
        set(t, row and row.caption)
        t:SetColorAndOpacity({
            SpecifiedColor = CardView.resistanceColor(row and row.value),
            ColorUseRule = SPECIFIED_COLOR,
        })
    end
    set(self.lootCaption, props.lootCaption)
    set(self.notice, FText(CardView.specialDropNotice(props.specialDrops)))
    self.notice:SetVisibility(props.specialDrops and DECORATIVE or COLLAPSED)
    set(self.hint, props.hintCaption)
    self.hintRow:SetVisibility(props.showHint and DECORATIVE or COLLAPSED)
    for i, drop in ipairs(props.drops) do
        local e = self:ensureDrop(i)
        local item = drop.item --[[@as UFS_ItemData_C?]]
        if item and valid(item) then
            if e.item ~= item then
                e.template:SetSelectedItem(item)
                e.icon:SetBrush(e.template.ItemIcon.Brush)
                e.icon:SetColorAndOpacity(e.template.ItemIcon.ColorAndOpacity)
                e.item = item
            end
            e.icon:SetVisibility(DECORATIVE)
        else
            e.icon:SetVisibility(COLLAPSED)
            e.item = nil
        end
        set(e.title, drop.name or props.unknownCaption)
        set(e.rate, FText(CardView.dropRate(drop)))
        e.row:SetVisibility(DECORATIVE)
    end
    for i = #props.drops + 1, #self.drops do
        self.drops[i].row:SetVisibility(COLLAPSED)
    end
end

function V:measure()
    local desired = self.stack:GetDesiredSize()
    local height = math.max(MIN_HEIGHT, desired.Y + CONTENT_INSET)
    self.root:SetHeightOverride(height)
    return height
end

function V:destroy()
    if valid(self.root) then
        self.root:RemoveFromParent()
    end
end

return V
