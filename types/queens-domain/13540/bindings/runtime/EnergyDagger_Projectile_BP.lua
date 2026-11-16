---@meta

---@class AEnergyDagger_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnergyDagger_Blade_SM UStaticMeshComponent
---@field Timeline_1_Dissolve_E04C2CAD4302C3D0A92B31832584DB8D float
---@field Timeline_1__Direction_E04C2CAD4302C3D0A92B31832584DB8D ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
local AEnergyDagger_Projectile_BP_C = {}

---@param EntryPoint int32
function AEnergyDagger_Projectile_BP_C:ExecuteUbergraph_EnergyDagger_Projectile_BP(EntryPoint) end

function AEnergyDagger_Projectile_BP_C:InstantlyDissolve() end

function AEnergyDagger_Projectile_BP_C:Timeline_1__FinishedFunc() end

function AEnergyDagger_Projectile_BP_C:Timeline_1__UpdateFunc() end
