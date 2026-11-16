---@meta

---@class UEndingTextWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeOut UWidgetAnimation
---@field RichText UFB_AnimRichTextBlock
---@field TextContainer UBorder
---@field FadeOutTime float
---@field CurFontStyle int32
---@field CurText FText
---@field FadeDelay float
---@field StartTime float
---@field ResumeTime float
---@field hidetimer FTimerHandle
local UEndingTextWidget_C = {}

function UEndingTextWidget_C:ActuallySetStyle() end

function UEndingTextWidget_C:Construct() end

function UEndingTextWidget_C:CustomEvent_0() end

---@param EntryPoint int32
function UEndingTextWidget_C:ExecuteUbergraph_EndingTextWidget(EntryPoint) end

function UEndingTextWidget_C:ForceUpdateTextRender() end

function UEndingTextWidget_C:HideText() end

function UEndingTextWidget_C:Pause() end

function UEndingTextWidget_C:Play() end

---@param IsDesignTime boolean
function UEndingTextWidget_C:PreConstruct(IsDesignTime) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UEndingTextWidget_C:Tick(MyGeometry, InDeltaTime) end

function UEndingTextWidget_C:UpdateFontStyle() end

---@param Text FText
UEndingTextWidget_C['Show Text'] = function(self, Text) end

UEndingTextWidget_C['force update'] = function(self) end
