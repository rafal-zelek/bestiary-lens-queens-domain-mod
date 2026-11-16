---@meta

---@class AQueen_Door_Bp_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WorldEventReceiver UWorldEventReceiver_C
---@field PointLight UPointLightComponent
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_9FEF3860460BAB5295B9989E31944E1F float
---@field DoorOpen__Direction_9FEF3860460BAB5295B9989E31944E1F ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field OpenAmount float
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
---@field LightIntensity float
local AQueen_Door_Bp_C = {}

function AQueen_Door_Bp_C:BndEvt__Queen_Door_Bp_WorldEventReceiver_K2Node_ComponentBoundEvent_0_OnWorldStateChanged__DelegateSignature() end

function AQueen_Door_Bp_C:CloseDoor() end

function AQueen_Door_Bp_C:DoorOpen__FinishedFunc() end

function AQueen_Door_Bp_C:DoorOpen__UpdateFunc() end

---@param EntryPoint int32
function AQueen_Door_Bp_C:ExecuteUbergraph_Queen_Door_Bp(EntryPoint) end

function AQueen_Door_Bp_C:OpenDoor() end

function AQueen_Door_Bp_C:ReceiveBeginPlay() end

function AQueen_Door_Bp_C:RefreshState() end

function AQueen_Door_Bp_C:SetToOpenState() end

function AQueen_Door_Bp_C:UserConstructionScript() end
