---@meta

---@class AElecGun_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh UStaticMeshComponent
local AElecGun_WeaponVisuals_C = {}

---@param EntryPoint int32
function AElecGun_WeaponVisuals_C:ExecuteUbergraph_ElecGun_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AElecGun_WeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function AElecGun_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
