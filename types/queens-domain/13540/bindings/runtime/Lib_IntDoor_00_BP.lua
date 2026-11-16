---@meta

---@class ALib_IntDoor_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockerBox UBoxComponent
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_0E309122429F8E7779624BB58E4A93E2 float
---@field OpenDOors__Direction_0E309122429F8E7779624BB58E4A93E2 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field Unlocked boolean
---@field LeftDoorYaw float
---@field RightDoorYaw float
local ALib_IntDoor_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_IntDoor_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ALib_IntDoor_00_BP_C:CloseDoor() end

---@param EntryPoint int32
function ALib_IntDoor_00_BP_C:ExecuteUbergraph_Lib_IntDoor_00_BP(EntryPoint) end

function ALib_IntDoor_00_BP_C:OpenDOors__FinishedFunc() end

function ALib_IntDoor_00_BP_C:OpenDOors__UpdateFunc() end

function ALib_IntDoor_00_BP_C:OpenDoor() end

function ALib_IntDoor_00_BP_C:SetToOpenState() end
