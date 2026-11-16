---@meta

---@class ASlashGun_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WindSlashGun_Mesh USkeletalMeshComponent
local ASlashGun_WeaponVisuals_C = {}

---@param EntryPoint int32
function ASlashGun_WeaponVisuals_C:ExecuteUbergraph_SlashGun_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function ASlashGun_WeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function ASlashGun_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
