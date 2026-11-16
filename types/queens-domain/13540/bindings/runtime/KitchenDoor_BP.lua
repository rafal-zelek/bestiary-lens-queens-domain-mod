---@meta

---@class AKitchenDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Arrow2 UArrowComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_3EE930504F2D2D3659AE93B9E6C44E6F float
---@field OpenDOors__Direction_3EE930504F2D2D3659AE93B9E6C44E6F ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field OpenDoorYaw float
---@field FlipOpenDirection boolean
local AKitchenDoor_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AKitchenDoor_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AKitchenDoor_BP_C:ExecuteUbergraph_KitchenDoor_BP(EntryPoint) end

function AKitchenDoor_BP_C:GetOpenYaw() end

function AKitchenDoor_BP_C:OpenDOors__FinishedFunc() end

function AKitchenDoor_BP_C:OpenDOors__UpdateFunc() end

function AKitchenDoor_BP_C:OpenDoor() end

function AKitchenDoor_BP_C:ReceiveBeginPlay() end

function AKitchenDoor_BP_C:SetToOpenState() end

function AKitchenDoor_BP_C:UpdateFogDAValues() end

function AKitchenDoor_BP_C:UserConstructionScript() end
