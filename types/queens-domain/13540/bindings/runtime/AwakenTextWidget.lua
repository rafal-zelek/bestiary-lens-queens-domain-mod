---@meta

---@class UAwakenTextWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field RichText UFB_AnimRichTextBlock
---@field TextContainer UBorder
---@field FadeOutTime float
---@field CurFontStyle int32
---@field CurText FText
local UAwakenTextWidget_C = {}

function UAwakenTextWidget_C:ActuallySetStyle() end

function UAwakenTextWidget_C:Construct() end

---@param EntryPoint int32
function UAwakenTextWidget_C:ExecuteUbergraph_AwakenTextWidget(EntryPoint) end

function UAwakenTextWidget_C:ForceUpdateTextRender() end

function UAwakenTextWidget_C:HideText() end

---@param IsDesignTime boolean
function UAwakenTextWidget_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UAwakenTextWidget_C:Tick(MyGeometry, InDeltaTime) end

function UAwakenTextWidget_C:UpdateFontStyle() end

---@param Text FText
UAwakenTextWidget_C['Show Text'] = function(self, Text) end

UAwakenTextWidget_C['force update'] = function(self) end
