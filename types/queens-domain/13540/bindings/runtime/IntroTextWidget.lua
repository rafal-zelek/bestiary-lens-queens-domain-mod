---@meta

---@class UIntroTextWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field RichText UFB_AnimRichTextBlock
---@field TextContainer UBorder
---@field FadeOutTime float
---@field CurFontStyle int32
---@field CurText FText
local UIntroTextWidget_C = {}

function UIntroTextWidget_C:ActuallySetStyle() end

function UIntroTextWidget_C:Construct() end

---@param EntryPoint int32
function UIntroTextWidget_C:ExecuteUbergraph_IntroTextWidget(EntryPoint) end

function UIntroTextWidget_C:ForceUpdateTextRender() end

function UIntroTextWidget_C:HideText() end

---@param IsDesignTime boolean
function UIntroTextWidget_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UIntroTextWidget_C:Tick(MyGeometry, InDeltaTime) end

function UIntroTextWidget_C:UpdateFontStyle() end

---@param Text FText
UIntroTextWidget_C['Show Text'] = function(self, Text) end

UIntroTextWidget_C['force update'] = function(self) end
