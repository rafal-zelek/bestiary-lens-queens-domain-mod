---@meta

---@class AShotgun_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkeletalMesh USkeletalMeshComponent
local AShotgun_WeaponVisuals_C = {}

---@param EntryPoint int32
function AShotgun_WeaponVisuals_C:ExecuteUbergraph_Shotgun_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AShotgun_WeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function AShotgun_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
