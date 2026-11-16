---@meta

---@class AEnergy_Dagger_Visuals_C : ADagger_Visuals_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnergyDagger_Blade_SM UStaticMeshComponent
---@field Timeline_1_opacity_A3B0C0B643DB3DDBAE30838549D3659B float
---@field Timeline_1__Direction_A3B0C0B643DB3DDBAE30838549D3659B ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_Opacity_39DFB1C24036ABB45CEF6899430333C1 float
---@field Timeline_0__Direction_39DFB1C24036ABB45CEF6899430333C1 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field PowerLogic UEnergyChargeLogic_C
---@field ['Dagger Stats'] UFS_DaggerStats
local AEnergy_Dagger_Visuals_C = {}

---@param EntryPoint int32
function AEnergy_Dagger_Visuals_C:ExecuteUbergraph_Energy_Dagger_Visuals(EntryPoint) end

function AEnergy_Dagger_Visuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnergy_Dagger_Visuals_C:ReceiveTick(DeltaSeconds) end

function AEnergy_Dagger_Visuals_C:Timeline_0__FinishedFunc() end

function AEnergy_Dagger_Visuals_C:Timeline_0__UpdateFunc() end

function AEnergy_Dagger_Visuals_C:Timeline_1__FinishedFunc() end

function AEnergy_Dagger_Visuals_C:Timeline_1__UpdateFunc() end
