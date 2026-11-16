---@meta

---@class ABeacon_Top_Real_BP_C : AFS_StaticMeshActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DamagingCollision UDamagingCollision_C
---@field PointLight4 UPointLightComponent
---@field PointLight3 UPointLightComponent
---@field PointLight2 UPointLightComponent
---@field PointLight1 UPointLightComponent
---@field Gargoyle_BigBeaconFire UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Timeline_0_NewTrack_0_444D0AB4451A87FB3834D18922C77083 float
---@field Timeline_0__Direction_444D0AB4451A87FB3834D18922C77083 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field LightIntensity float
---@field Active boolean
local ABeacon_Top_Real_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ABeacon_Top_Real_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ABeacon_Top_Real_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ABeacon_Top_Real_BP_C:ExecuteUbergraph_Beacon_Top_Real_BP(EntryPoint) end

function ABeacon_Top_Real_BP_C:Timeline_0__FinishedFunc() end

function ABeacon_Top_Real_BP_C:Timeline_0__UpdateFunc() end
