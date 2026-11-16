---@meta

---@class AOtherWorldSpear_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh UStaticMeshComponent
---@field HitEnemy_suck_256670824C7D01B98FFDA08423493EBA float
---@field HitEnemy__Direction_256670824C7D01B98FFDA08423493EBA ETimelineDirection::Type
---@field HitEnemy UTimelineComponent
local AOtherWorldSpear_WeaponVisuals_C = {}

function AOtherWorldSpear_WeaponVisuals_C:DoXPWave() end

---@param EntryPoint int32
function AOtherWorldSpear_WeaponVisuals_C:ExecuteUbergraph_OtherWorldSpear_WeaponVisuals(EntryPoint) end

function AOtherWorldSpear_WeaponVisuals_C:HitEnemy__FinishedFunc() end

function AOtherWorldSpear_WeaponVisuals_C:HitEnemy__UpdateFunc() end
