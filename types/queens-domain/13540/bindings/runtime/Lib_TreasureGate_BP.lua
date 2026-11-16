---@meta

---@class ALib_TreasureGate_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlayerBlocker UBoxComponent
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_0CBCEE9C4E12D123675F5FB2429B766C float
---@field OpenDOors__Direction_0CBCEE9C4E12D123675F5FB2429B766C ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field Unlocked boolean
---@field LeftDoorYaw float
---@field RightDoorYaw float
---@field Activations int32
---@field MultiActivationCount int32
---@field ['Multi Activationneeded'] boolean
---@field DeActivateOnOpen TArray<TScriptInterface<IActivatable_C>>
---@field SetPuzzleNSD boolean
local ALib_TreasureGate_BP_C = {}

function ALib_TreasureGate_BP_C:CloseDoor() end

---@param EntryPoint int32
function ALib_TreasureGate_BP_C:ExecuteUbergraph_Lib_TreasureGate_BP(EntryPoint) end

function ALib_TreasureGate_BP_C:OpenDOors__FinishedFunc() end

function ALib_TreasureGate_BP_C:OpenDOors__UpdateFunc() end

function ALib_TreasureGate_BP_C:OpenDoor() end

function ALib_TreasureGate_BP_C:SetToOpen() end

function ALib_TreasureGate_BP_C:SetToOpenState() end
