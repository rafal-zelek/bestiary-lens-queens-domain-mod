---@meta

---@class ABirdFlail_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BirdFlail USkeletalMeshComponent
local ABirdFlail_WeaponVisuals_C = {}

---@param EntryPoint int32
function ABirdFlail_WeaponVisuals_C:ExecuteUbergraph_BirdFlail_WeaponVisuals(EntryPoint) end

---@param DeltaSeconds float
function ABirdFlail_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
