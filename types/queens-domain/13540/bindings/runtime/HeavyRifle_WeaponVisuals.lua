---@meta

---@class AHeavyRifle_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HeavyRifle_Mesh USkeletalMeshComponent
local AHeavyRifle_WeaponVisuals_C = {}

---@param EntryPoint int32
function AHeavyRifle_WeaponVisuals_C:ExecuteUbergraph_HeavyRifle_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AHeavyRifle_WeaponVisuals_C:GetMeshes(Meshes) end

function AHeavyRifle_WeaponVisuals_C:ReceiveBeginPlay() end
