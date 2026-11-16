---@meta

---@class AEyePea_Syringe_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EyePeaSyringe USkeletalMeshComponent
local AEyePea_Syringe_WeaponVisuals_C = {}

---@param EntryPoint int32
function AEyePea_Syringe_WeaponVisuals_C:ExecuteUbergraph_EyePea_Syringe_WeaponVisuals(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AEyePea_Syringe_WeaponVisuals_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function AEyePea_Syringe_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end
