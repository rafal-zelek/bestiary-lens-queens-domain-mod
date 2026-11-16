---@meta

---@class ASZ_JailDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VisualKeyComponent UVisualKeyComponent_C
---@field ProjectileBLocker UBoxComponent
---@field Arrow2 UArrowComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_64F29B744BA80B3BC255EAB46DFAF227 float
---@field OpenDOors__Direction_64F29B744BA80B3BC255EAB46DFAF227 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field OpenDoorYaw float
---@field FlipOpenDirection boolean
local ASZ_JailDoor_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ASZ_JailDoor_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ASZ_JailDoor_BP_C:BndEvt__SZ_JailDoor_BP_VisualKeyComponent_K2Node_ComponentBoundEvent_0_UnlockSound__DelegateSignature() end

function ASZ_JailDoor_BP_C:CustomEvent_0() end

---@param EntryPoint int32
function ASZ_JailDoor_BP_C:ExecuteUbergraph_SZ_JailDoor_BP(EntryPoint) end

function ASZ_JailDoor_BP_C:GetOpenYaw() end

function ASZ_JailDoor_BP_C:OpenDOors__FinishedFunc() end

function ASZ_JailDoor_BP_C:OpenDOors__UpdateFunc() end

function ASZ_JailDoor_BP_C:OpenDoor() end

function ASZ_JailDoor_BP_C:ReceiveBeginPlay() end

function ASZ_JailDoor_BP_C:SetToOpenState() end

---@param Key UFS_ItemData_C
---@param Player AFS_PlayerChar_C
---@param Success boolean
---@param OverrideFailMessage boolean
---@param Fail_Message FText
function ASZ_JailDoor_BP_C:TryUseKey(Key, Player, Success, OverrideFailMessage, Fail_Message) end

function ASZ_JailDoor_BP_C:Unlock() end

function ASZ_JailDoor_BP_C:UpdateFogDAValues() end

function ASZ_JailDoor_BP_C:UserConstructionScript() end
