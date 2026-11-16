---@meta

---@class UUIAspectRatioBox_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border UOverlay
---@field Container UNamedSlot
---@field ForcedAspectSizeBox USizeBox
---@field InvalidationBox_0 UInvalidationBox
---@field ScaleBox_44 UScaleBox
---@field SizeBox_35 USizeBox
---@field ['Allow 4:3 Scale'] boolean
---@field ['Hide Border'] boolean
---@field DisableInvalidationCaching boolean
local UUIAspectRatioBox_C = {}

---@param EntryPoint int32
function UUIAspectRatioBox_C:ExecuteUbergraph_UIAspectRatioBox(EntryPoint) end

---@param IsDesignTime boolean
function UUIAspectRatioBox_C:PreConstruct(IsDesignTime) end

function UUIAspectRatioBox_C:RefreshBorderVis() end

---@param Hide_Border boolean
function UUIAspectRatioBox_C:SetBorderVis(Hide_Border) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUIAspectRatioBox_C:Tick(MyGeometry, InDeltaTime) end
