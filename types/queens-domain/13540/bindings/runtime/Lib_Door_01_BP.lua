---@meta

---@class ALib_Door_01_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Arrow2 UArrowComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_60C5EB69484A86CB12B5E1BE761248FA float
---@field OpenDOors__Direction_60C5EB69484A86CB12B5E1BE761248FA ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field OpenDoorYaw float
---@field FlipOpenDirection boolean
local ALib_Door_01_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALib_Door_01_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALib_Door_01_BP_C:ExecuteUbergraph_Lib_Door_01_BP(EntryPoint) end

function ALib_Door_01_BP_C:GetOpenYaw() end

function ALib_Door_01_BP_C:OpenDOors__FinishedFunc() end

function ALib_Door_01_BP_C:OpenDOors__UpdateFunc() end

function ALib_Door_01_BP_C:OpenDoor() end

function ALib_Door_01_BP_C:ReceiveBeginPlay() end

function ALib_Door_01_BP_C:SetToOpenState() end

function ALib_Door_01_BP_C:UpdateFogDAValues() end

function ALib_Door_01_BP_C:UserConstructionScript() end
