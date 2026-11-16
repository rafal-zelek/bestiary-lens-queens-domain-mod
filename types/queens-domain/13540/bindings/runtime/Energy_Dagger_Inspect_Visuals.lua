---@meta

---@class AEnergy_Dagger_Inspect_Visuals_C : ADagger_Visuals_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnergyDagger_Blade_SM UStaticMeshComponent
---@field PowerLogic UEnergyChargeLogic_C
local AEnergy_Dagger_Inspect_Visuals_C = {}

---@param EntryPoint int32
function AEnergy_Dagger_Inspect_Visuals_C:ExecuteUbergraph_Energy_Dagger_Inspect_Visuals(EntryPoint) end

function AEnergy_Dagger_Inspect_Visuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnergy_Dagger_Inspect_Visuals_C:ReceiveTick(DeltaSeconds) end
