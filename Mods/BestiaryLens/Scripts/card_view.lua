-- Presentation only: no actor queries, targeting, unlock checks, saves or journals.
local V={}
local function valid(o) return o and o:IsValid() end
local colors={hp={R=1,G=0.42,B=0.36,A=1},attack={R=1,G=0.77,B=0.3,A=1},xp={R=0.4,G=0.76,B=1,A=1}}
local function resistance(v)
    if v==1 then return {R=0.45,G=0.9,B=0.45,A=1} end
    if v==2 then return {R=1,G=0.4,B=0.35,A=1} end
    return {R=0.85,G=0.82,B=0.73,A=1}
end
local function set(t,value) t:SetText(value or FText('')) end
function V.create(hud,style,placement)
    local self=setmetatable({hud=hud,placement=placement or {},stats={},resists={},drops={}}, {__index=V})
    local tree=hud.WidgetTree
    local factory=StaticFindObject('/Script/UMG.Default__WidgetBlueprintLibrary')
    local panel=factory:Create(hud,style.panelClass,hud:GetOwningPlayer())
    assert(valid(panel) and valid(panel.Content),'Native UIArea unavailable')
    self.panel=panel;self.generation=panel:GetFName():ToString();self.style=style
    local function make(class,name)
        return StaticConstructObject(StaticFindObject('/Script/UMG.'..class),tree,FName('BestiaryLens_'..name..'_'..class..'_'..self.generation))
    end
    self.make=make
    local width=self.placement.width or 320
    self.contentWidth=width-36
    local function text(name,size)
        local t=make('TextBlock',name)
        t:SetFont(style.font);local f=t.Font;f.Size=size;t:SetFont(f)
        t:SetColorAndOpacity(style.color);t:SetShadowOffset(style.shadowOffset);t:SetShadowColorAndOpacity(style.shadowColor)
        t:SetAutoWrapText(true);t.WrapTextAt=self.contentWidth
        return t
    end
    self.text=text
    panel.EnableShadow=false;panel.In=false;panel.Random=false;panel:PreConstruct(false)
    local brush=panel.Chisel.Brush;brush.ImageSize={X=16,Y=16};panel.Chisel:SetBrush(brush)
    panel.Inside.Slot:SetOffsets({Left=8,Top=8,Right=8,Bottom=8})
    panel.Content.Slot:SetOffsets({Left=8,Top=8,Right=8,Bottom=8})
    local stack=make('VerticalBox','CardStack');self.stack=stack
    self.title=text('CardName',16);stack:AddChildToVerticalBox(self.title)
    local grid=make('HorizontalBox','StatGrid');stack:AddChildToVerticalBox(grid)
    for i=1,3 do
        local column=make('VerticalBox','StatColumn'..i)
        local value=text('StatValue'..i,22)
        local caption=text('StatCaption'..i,13)
        caption.WrapTextAt=self.contentWidth/3-4
        value.WrapTextAt=self.contentWidth/3-4
        -- Bound each numeric value independently; ScaleBox shrinks long numbers.
        local valueSize=make('SizeBox','StatValueSize'..i)
        valueSize:SetWidthOverride(self.contentWidth/3-8);valueSize:SetHeightOverride(40)
        local scale=make('ScaleBox','StatNumberScale'..i)
        scale:SetStretch(2);scale:SetStretchDirection(1) -- ScaleToFit, DownOnly
        value:SetAutoWrapText(false)
        scale:SetContent(value)
        value.Slot:SetHorizontalAlignment(1);value.Slot:SetVerticalAlignment(2)
        valueSize:SetContent(scale)
        column:AddChildToVerticalBox(valueSize);column:AddChildToVerticalBox(caption)
        local cell=make('SizeBox','StatCell'..i);cell:SetWidthOverride(self.contentWidth/3);cell:SetContent(column)
        grid:AddChildToHorizontalBox(cell)
        self.stats[i]={column=column,value=value,caption=caption}
    end
    local rr=make('HorizontalBox','ResistanceRow');stack:AddChildToVerticalBox(rr)
    for i=1,3 do
        local t=text('Resistance'..i,14);t.WrapTextAt=self.contentWidth/3-4
        local cell=make('SizeBox','ResistanceCell'..i);cell:SetWidthOverride(self.contentWidth/3);cell:SetContent(t)
        rr:AddChildToHorizontalBox(cell):SetPadding({Left=0,Top=3,Right=0,Bottom=4})
        self.resists[i]=t
    end
    self.lootCaption=text('LootCaption',13);stack:AddChildToVerticalBox(self.lootCaption)
    self.lootStack=make('VerticalBox','LootStack');stack:AddChildToVerticalBox(self.lootStack)
    self.notice=text('LootNotice',12);stack:AddChildToVerticalBox(self.notice)
    local hint=make('HorizontalBox','HintRow');stack:AddChildToVerticalBox(hint);self.hintRow=hint
    self.key=text('HintKey',14);set(self.key,FText('[F10] '));hint:AddChildToHorizontalBox(self.key)
    self.hint=text('Hint',14);hint:AddChildToHorizontalBox(self.hint)
    -- Native icon material owners live within this instance, never a global singleton.
    self.owners=make('VerticalBox','IconOwners');self.owners:SetVisibility(1);stack:AddChildToVerticalBox(self.owners)
    local padding=make('Border','CardPadding');padding:SetBrushColor({R=0,G=0,B=0,A=0.82})
    padding:SetPadding({Left=10,Top=8,Right=10,Bottom=8});padding:SetContent(stack);panel.Content:SetContent(padding)
    local root=make('SizeBox','CardSize');self.root=root
    root:SetWidthOverride(width);root:SetHeightOverride(100);root:SetContent(panel);root:SetVisibility(1)
    self.slot=hud.WidgetTree.RootWidget:AddChildToCanvas(root)
    self.slot:SetAutoSize(true);self.slot:SetZOrder(100)
    self:place(self.placement)
    return self
end
function V:place(p)
    self.placement=p
    local ax,ay=p.anchorX or 0,p.anchorY or 0
    self.slot:SetAnchors({Minimum={X=ax,Y=ay},Maximum={X=ax,Y=ay}})
    self.slot:SetAlignment({X=p.alignX or ax,Y=p.alignY or ay})
    self.slot:SetPosition({X=p.x or 0,Y=p.y or 0})
    self.root:SetRenderTransformPivot({X=0,Y=0})
    self.root:SetRenderScale({X=p.scale or 1,Y=p.scale or 1})
end
function V:setVisible(visible) self.root:SetVisibility(visible and 4 or 1) end
function V:ensureDrop(index)
    if self.drops[index] then return self.drops[index] end
    local make,text=self.make,self.text
    local row=make('HorizontalBox','LootRow'..index)
    local overlay=make('Overlay','LootVisual'..index)
    local square=make('SizeBox','LootSquare'..index);square:SetWidthOverride(56);square:SetHeightOverride(56);square:SetContent(overlay)
    row:AddChildToHorizontalBox(square):SetVerticalAlignment(2)
    local frame=make('Image','LootFrame'..index);frame:SetBrush(self.style.itemFrame);overlay:AddChildToOverlay(frame)
    local icon=make('Image','LootIcon'..index)
    overlay:AddChildToOverlay(icon):SetPadding({Left=3,Top=3,Right=3,Bottom=3})
    local title=text('LootName'..index,14)
    title:SetFont(self.style.itemFont);local f=title.Font;f.Size=14;title:SetFont(f)
    local titleWidth=math.max(60,self.contentWidth-56-8-6-62)
    title.WrapTextAt=titleWidth
    local nameSize=make('SizeBox','LootNameSize'..index);nameSize:SetWidthOverride(titleWidth);nameSize:SetContent(title)
    local nameSlot=row:AddChildToHorizontalBox(nameSize);nameSlot:SetVerticalAlignment(2);nameSlot:SetPadding({Left=8,Top=0,Right=0,Bottom=0})
    local rate=text('LootRate'..index,13);rate.WrapTextAt=62
    local rateSlot=row:AddChildToHorizontalBox(rate);rateSlot:SetVerticalAlignment(2);rateSlot:SetPadding({Left=6,Top=0,Right=0,Bottom=0})
    self.lootStack:AddChildToVerticalBox(row)
    local owner=make('SizeBox','IconOwner'..index)
    local template=StaticFindObject('/Script/UMG.Default__WidgetBlueprintLibrary'):Create(self.hud,self.style.itemClass,self.hud:GetOwningPlayer())
    owner:SetContent(template);self.owners:AddChildToVerticalBox(owner)
    local entry={row=row,square=square,icon=icon,title=title,rate=rate,template=template}
    self.drops[index]=entry
    return entry
end
function V:render(props)
    self.props=props
    set(self.title,props.name)
    for i,widgets in ipairs(self.stats) do
        local row=props.stats[i]
        local hasCaption=row and row.caption and row.caption:ToString()~=''
        widgets.column:SetVisibility(hasCaption and 4 or 1)
        set(widgets.caption,row and row.caption)
        set(widgets.value,FText(row and row.value~=nil and string.format('%.0f',row.value) or '?'))
        widgets.value:SetColorAndOpacity({SpecifiedColor=colors[row and row.kind] or {R=0.85,G=0.82,B=0.73,A=1},ColorUseRule=0})
    end
    for i,t in ipairs(self.resists) do
        local row=props.resists[i];set(t,row and row.caption)
        t:SetColorAndOpacity({SpecifiedColor=resistance(row and row.value),ColorUseRule=0})
    end
    set(self.lootCaption,props.lootCaption)
    set(self.notice,FText(props.specialDrops and '?' or ''));self.notice:SetVisibility(props.specialDrops and 4 or 1)
    set(self.hint,props.hintCaption);self.hintRow:SetVisibility(props.showHint and 4 or 1)
    for i,drop in ipairs(props.drops) do
        local e=self:ensureDrop(i)
        if valid(drop.item) then
            if e.item~=drop.item then
                e.template:SetSelectedItem(drop.item);e.icon:SetBrush(e.template.ItemIcon.Brush)
                e.icon:SetColorAndOpacity(e.template.ItemIcon.ColorAndOpacity);e.item=drop.item
            end
            e.icon:SetVisibility(4)
        else e.icon:SetVisibility(1);e.item=nil end
        set(e.title,drop.name or props.unknownCaption)
        local rate=drop.chance~=nil and (string.format('%.1f',drop.chance*100):gsub('%.0$','')..'%') or '?'
        set(e.rate,FText((drop.coins and ('×'..tostring(drop.coins)..' ') or '')..rate));e.row:SetVisibility(4)
    end
    for i=#props.drops+1,#self.drops do self.drops[i].row:SetVisibility(1) end
end
function V:measure()
    local desired=self.stack:GetDesiredSize()
    self.height=math.max(100,desired.Y+36)
    self.root:SetHeightOverride(self.height)
    return self.height
end
function V:destroy()
    if valid(self.root) then self.root:RemoveFromParent() end
end
return V
