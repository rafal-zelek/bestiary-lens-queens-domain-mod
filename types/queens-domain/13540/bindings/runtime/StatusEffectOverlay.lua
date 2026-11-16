---@meta

---@class UStatusEffectOverlay_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OverlayLayer UImage
---@field ScaleBox_108 UScaleBox
---@field Material UMaterialInterface
local UStatusEffectOverlay_C = {}

function UStatusEffectOverlay_C:Construct() end

---@param EntryPoint int32
function UStatusEffectOverlay_C:ExecuteUbergraph_StatusEffectOverlay(EntryPoint) end

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UStatusEffectOverlay_C:Tick(MyGeometry, InDeltaTime) end
