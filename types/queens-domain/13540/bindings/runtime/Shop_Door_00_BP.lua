---@meta

---@class AShop_Door_00_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ProjectileBLocker UStaticMeshComponent
---@field Lib_FrontDoor_Door_00_SM UStaticMeshComponent
---@field OpenDOors_Open_1ABABC7546542806DCC154A10F8C4B35 float
---@field OpenDOors__Direction_1ABABC7546542806DCC154A10F8C4B35 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field DoorYaw float
local AShop_Door_00_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AShop_Door_00_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AShop_Door_00_BP_C:ExecuteUbergraph_Shop_Door_00_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AShop_Door_00_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function AShop_Door_00_BP_C:OpenDOors__FinishedFunc() end

function AShop_Door_00_BP_C:OpenDOors__UpdateFunc() end

function AShop_Door_00_BP_C:OpenDoor() end

function AShop_Door_00_BP_C:SetToOpenState() end

function AShop_Door_00_BP_C:UpdateFogDAValues() end
