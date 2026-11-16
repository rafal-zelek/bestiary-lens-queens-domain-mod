---@meta

---@class ALib_BossDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CornerCollisionFix1 UStaticMeshComponent
---@field CornerCollisionFix UStaticMeshComponent
---@field FrontKeyComp UVisualKeyComponent_C
---@field BackKeyComp UVisualKeyComponent_C
---@field Lib_BossDoor_Frame_SM UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM1 UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_706C124A4B5D64F38C8B6081EB2B1260 float
---@field OpenDOors__Direction_706C124A4B5D64F38C8B6081EB2B1260 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field Unlocked boolean
---@field LeftDoorYaw float
---@field RightDoorYaw float
---@field ColliderScale FVector
local ALib_BossDoor_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_BossDoor_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

function ALib_BossDoor_BP_C:BndEvt__Lib_BossDoor_BP_BackKeyComp_K2Node_ComponentBoundEvent_1_FinishedAdding__DelegateSignature() end

function ALib_BossDoor_BP_C:BndEvt__Lib_BossDoor_BP_BackKeyComp_K2Node_ComponentBoundEvent_5_UnlockSound__DelegateSignature() end

function ALib_BossDoor_BP_C:BndEvt__Lib_BossDoor_BP_FrontKeyComp_K2Node_ComponentBoundEvent_4_UnlockSound__DelegateSignature() end

function ALib_BossDoor_BP_C:BndEvt__Lib_BossDoor_BP_VisualKeyComponent_K2Node_ComponentBoundEvent_0_FinishedAdding__DelegateSignature() end

---@param EntryPoint int32
function ALib_BossDoor_BP_C:ExecuteUbergraph_Lib_BossDoor_BP(EntryPoint) end

---@param Key UFS_ItemData_C
function ALib_BossDoor_BP_C:InsertKey(Key) end

function ALib_BossDoor_BP_C:OpenDOors__FinishedFunc() end

function ALib_BossDoor_BP_C:OpenDOors__UpdateFunc() end

function ALib_BossDoor_BP_C:OpenDoor() end

function ALib_BossDoor_BP_C:ReceiveBeginPlay() end

function ALib_BossDoor_BP_C:SetToOpenState() end
