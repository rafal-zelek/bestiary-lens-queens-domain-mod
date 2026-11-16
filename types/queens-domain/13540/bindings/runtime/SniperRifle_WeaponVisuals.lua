---@meta

---@class ASniperRifle_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkeletalMesh USkeletalMeshComponent
local ASniperRifle_WeaponVisuals_C = {}

---@param EntryPoint int32
function ASniperRifle_WeaponVisuals_C:ExecuteUbergraph_SniperRifle_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function ASniperRifle_WeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function ASniperRifle_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
