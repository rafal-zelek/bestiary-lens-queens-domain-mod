---@meta

---@class ALib_TrapDoors_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_D8B3B69948A7FC10D1C6079659C765A0 float
---@field OpenDOors__Direction_D8B3B69948A7FC10D1C6079659C765A0 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field LeftDoorYaw float
---@field RightDoorYaw float
local ALib_TrapDoors_00_BP_C = {}

---@param EntryPoint int32
function ALib_TrapDoors_00_BP_C:ExecuteUbergraph_Lib_TrapDoors_00_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ALib_TrapDoors_00_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ALib_TrapDoors_00_BP_C:OpenDOors__FinishedFunc() end

function ALib_TrapDoors_00_BP_C:OpenDOors__UpdateFunc() end

function ALib_TrapDoors_00_BP_C:OpenDoor() end

function ALib_TrapDoors_00_BP_C:SetToOpenState() end
