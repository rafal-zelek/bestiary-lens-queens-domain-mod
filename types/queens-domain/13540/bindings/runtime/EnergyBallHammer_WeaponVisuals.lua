---@meta

---@class AEnergyBallHammer_WeaponVisuals_C : AWeaponVisuals_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh2 UStaticMeshComponent
---@field Mesh1 UStaticMeshComponent
---@field Mesh UStaticMeshComponent
---@field Timeline_1_opacity_C2228D454C00C752FD6C0E96F936508C float
---@field Timeline_1__Direction_C2228D454C00C752FD6C0E96F936508C ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_Opacity_90A4368C4B867F63F297D0907611034E float
---@field Timeline_0__Direction_90A4368C4B867F63F297D0907611034E ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field PowerLogic UEnergyChargeLogic_C
local AEnergyBallHammer_WeaponVisuals_C = {}

---@param EntryPoint int32
function AEnergyBallHammer_WeaponVisuals_C:ExecuteUbergraph_EnergyBallHammer_WeaponVisuals(EntryPoint) end

function AEnergyBallHammer_WeaponVisuals_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnergyBallHammer_WeaponVisuals_C:ReceiveTick(DeltaSeconds) end

function AEnergyBallHammer_WeaponVisuals_C:Timeline_0__FinishedFunc() end

function AEnergyBallHammer_WeaponVisuals_C:Timeline_0__UpdateFunc() end

function AEnergyBallHammer_WeaponVisuals_C:Timeline_1__FinishedFunc() end

function AEnergyBallHammer_WeaponVisuals_C:Timeline_1__UpdateFunc() end
