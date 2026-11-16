---@meta

---@class AVampireKnifeWeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Model UStaticMeshComponent
local AVampireKnifeWeaponVisuals_C = {}

---@param EntryPoint int32
function AVampireKnifeWeaponVisuals_C:ExecuteUbergraph_VampireKnifeWeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AVampireKnifeWeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function AVampireKnifeWeaponVisuals_C:ReceiveTick(DeltaSeconds) end
