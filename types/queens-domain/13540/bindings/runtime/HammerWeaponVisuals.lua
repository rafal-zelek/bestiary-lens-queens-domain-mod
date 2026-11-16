---@meta

---@class AHammerWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hammer UStaticMeshComponent
local AHammerWeaponVisuals_C = {}

---@param EntryPoint int32
function AHammerWeaponVisuals_C:ExecuteUbergraph_HammerWeaponVisuals(EntryPoint) end

---@param DeltaSeconds float
function AHammerWeaponVisuals_C:ReceiveTick(DeltaSeconds) end
