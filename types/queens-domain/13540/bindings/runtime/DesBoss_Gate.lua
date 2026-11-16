---@meta

---@class ADesBoss_Gate_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RightDoor UStaticMeshComponent
---@field LeftDoor UStaticMeshComponent
---@field OpenDOors_Open_1AC5CD9541AC909836B86FAA5108A6CD float
---@field OpenDOors__Direction_1AC5CD9541AC909836B86FAA5108A6CD ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field LeftDoorYaw float
---@field RightDoorYaw float
local ADesBoss_Gate_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ADesBoss_Gate_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ADesBoss_Gate_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ADesBoss_Gate_C:ExecuteUbergraph_DesBoss_Gate(EntryPoint) end

function ADesBoss_Gate_C:OpenDOors__FinishedFunc() end

function ADesBoss_Gate_C:OpenDOors__NewTrack_0__EventFunc() end

function ADesBoss_Gate_C:OpenDOors__UpdateFunc() end

function ADesBoss_Gate_C:OpenDoor() end

function ADesBoss_Gate_C:SetToOpenState() end
