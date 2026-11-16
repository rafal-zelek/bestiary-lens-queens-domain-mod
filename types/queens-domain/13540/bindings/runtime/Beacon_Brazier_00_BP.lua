---@meta

---@class ABeacon_Brazier_00_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DamagingCollision UDamagingCollision_C
---@field Gargoyle_SmallBrazierFire UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Timeline_0_NewTrack_0_5712B04F4749914E94193492BF78DD15 float
---@field Timeline_0__Direction_5712B04F4749914E94193492BF78DD15 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field LightIntensity float
---@field Active boolean
local ABeacon_Brazier_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ABeacon_Brazier_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ABeacon_Brazier_00_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ABeacon_Brazier_00_BP_C:ExecuteUbergraph_Beacon_Brazier_00_BP(EntryPoint) end

function ABeacon_Brazier_00_BP_C:Timeline_0__FinishedFunc() end

function ABeacon_Brazier_00_BP_C:Timeline_0__UpdateFunc() end
