---@meta

---@class URitualText_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field EatTex UFB_AnimRichTextBlock
---@field RichText UFB_AnimRichTextBlock
---@field TextContainer UBorder
---@field CurFontStyle int32
---@field CurText FText
---@field FadeOutTime float
---@field EatTimer FTimerHandle
---@field TextTimer FTimerHandle
local URitualText_C = {}

function URitualText_C:ActuallySetStyle() end

function URitualText_C:Construct() end

function URitualText_C:CustomEvent() end

function URitualText_C:CustomEvent_0() end

---@param EntryPoint int32
function URitualText_C:ExecuteUbergraph_RitualText(EntryPoint) end

function URitualText_C:ForceUpdateTextRender() end

function URitualText_C:HideText() end

function URitualText_C:Pause() end

function URitualText_C:Play() end

---@param IsDesignTime boolean
function URitualText_C:PreConstruct(IsDesignTime) end

function URitualText_C:ShowEatText() end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function URitualText_C:Tick(MyGeometry, InDeltaTime) end

function URitualText_C:UpdateFontStyle() end

---@param Text FText
URitualText_C['Show Text'] = function(self, Text) end

URitualText_C['force update'] = function(self) end
