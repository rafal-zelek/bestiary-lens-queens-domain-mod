---@meta

---@class AHempieSVT38_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh USkeletalMeshComponent
local AHempieSVT38_WeaponVisuals_C = {}

---@param EntryPoint int32
function AHempieSVT38_WeaponVisuals_C:ExecuteUbergraph_HempieSVT38_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AHempieSVT38_WeaponVisuals_C:GetMeshes(Meshes) end

function AHempieSVT38_WeaponVisuals_C:ReceiveBeginPlay() end
