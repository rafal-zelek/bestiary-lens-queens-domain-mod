---@meta

---@class AEnergySpear_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnergySpear_Blade_SM UStaticMeshComponent
---@field Mesh UStaticMeshComponent
---@field Timeline_1_opacity_108A2C834B2FC3869EABEFBF902036BA float
---@field Timeline_1__Direction_108A2C834B2FC3869EABEFBF902036BA ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_Opacity_0C42F5624C8A66284F9554964F704DA4 float
---@field Timeline_0__Direction_0C42F5624C8A66284F9554964F704DA4 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field PowerLogic UEnergyChargeLogic_C
local AEnergySpear_WeaponVisuals_C = {}

---@param EntryPoint int32
function AEnergySpear_WeaponVisuals_C:ExecuteUbergraph_EnergySpear_WeaponVisuals(EntryPoint) end

function AEnergySpear_WeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnergySpear_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end

function AEnergySpear_WeaponVisuals_C:Timeline_0__FinishedFunc() end

function AEnergySpear_WeaponVisuals_C:Timeline_0__UpdateFunc() end

function AEnergySpear_WeaponVisuals_C:Timeline_1__FinishedFunc() end

function AEnergySpear_WeaponVisuals_C:Timeline_1__UpdateFunc() end
