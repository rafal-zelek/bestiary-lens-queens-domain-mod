---@meta

---@class ANullWepVisual_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ANullWepVisual_C = {}

---@param EntryPoint int32
function ANullWepVisual_C:ExecuteUbergraph_NullWepVisual(EntryPoint) end

---@param DeltaSeconds float
function ANullWepVisual_C:ReceiveTick(DeltaSeconds) end
