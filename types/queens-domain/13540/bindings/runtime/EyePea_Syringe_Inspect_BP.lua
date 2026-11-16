---@meta

---@class AEyePea_Syringe_Inspect_BP_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EyePeaSyringe_SM UStaticMeshComponent
---@field EyePeaSyringe USkeletalMeshComponent
local AEyePea_Syringe_Inspect_BP_C = {}

---@param EntryPoint int32
function AEyePea_Syringe_Inspect_BP_C:ExecuteUbergraph_EyePea_Syringe_Inspect_BP(EntryPoint) end

---@param Meshes TArray<UMeshComponent>
function AEyePea_Syringe_Inspect_BP_C:GetMeshes(Meshes) end

---@param DeltaSeconds float
function AEyePea_Syringe_Inspect_BP_C:ReceiveTick(DeltaSeconds) end
