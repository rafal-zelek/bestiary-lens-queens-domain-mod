---@meta

---@class AM_DoorSmall_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_0EC4C156410C521254F0B7B6F3846575 float
---@field OpenDOors__Direction_0EC4C156410C521254F0B7B6F3846575 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field LeftDoorYaw float
---@field RightDoorYaw float
local AM_DoorSmall_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AM_DoorSmall_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AM_DoorSmall_00_BP_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AM_DoorSmall_00_BP_C:ExecuteUbergraph_M_DoorSmall_00_BP(EntryPoint) end

function AM_DoorSmall_00_BP_C:OpenDOors__FinishedFunc() end

function AM_DoorSmall_00_BP_C:OpenDOors__NewTrack_0__EventFunc() end

function AM_DoorSmall_00_BP_C:OpenDOors__UpdateFunc() end

function AM_DoorSmall_00_BP_C:OpenDoor() end

function AM_DoorSmall_00_BP_C:SetToOpenState() end
