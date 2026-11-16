---@meta

---@class ASG_Door_Beepee_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_62DA82BF48D687D86165F7A464308D2C float
---@field OpenDOors__Direction_62DA82BF48D687D86165F7A464308D2C ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field LeftDoorYaw float
---@field RightDoorYaw float
local ASG_Door_Beepee_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASG_Door_Beepee_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function ASG_Door_Beepee_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ASG_Door_Beepee_C:ExecuteUbergraph_SG_Door_Beepee(EntryPoint) end

function ASG_Door_Beepee_C:OpenDOors__FinishedFunc() end

function ASG_Door_Beepee_C:OpenDOors__NewTrack_0__EventFunc() end

function ASG_Door_Beepee_C:OpenDOors__UpdateFunc() end

function ASG_Door_Beepee_C:OpenDoor() end

function ASG_Door_Beepee_C:SetToOpenState() end
