---@meta

---@class AEnergySword_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnetgyBlade_Blade_SM UStaticMeshComponent
---@field Mesh UStaticMeshComponent
---@field Timeline_1_opacity_756351144D5CFC56B3F1F8BFBE732A59 float
---@field Timeline_1__Direction_756351144D5CFC56B3F1F8BFBE732A59 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_Opacity_630244BB45416B99A2AEA0A54C4FD7CD float
---@field Timeline_0__Direction_630244BB45416B99A2AEA0A54C4FD7CD ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field PowerLogic UEnergyChargeLogic_C
local AEnergySword_WeaponVisuals_C = {}

---@param EntryPoint int32
function AEnergySword_WeaponVisuals_C:ExecuteUbergraph_EnergySword_WeaponVisuals(EntryPoint) end

function AEnergySword_WeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnergySword_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end

function AEnergySword_WeaponVisuals_C:Timeline_0__FinishedFunc() end

function AEnergySword_WeaponVisuals_C:Timeline_0__UpdateFunc() end

function AEnergySword_WeaponVisuals_C:Timeline_1__FinishedFunc() end

function AEnergySword_WeaponVisuals_C:Timeline_1__UpdateFunc() end
