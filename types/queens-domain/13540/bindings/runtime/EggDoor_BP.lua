---@meta

---@class AEggDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field AquaDoorKey1 UStaticMeshComponent
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_02585992498DB22141FC0488A7044F4E float
---@field DoorOpen__Direction_02585992498DB22141FC0488A7044F4E ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field OpenAmount float
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
---@field LightIntensity float
local AEggDoor_BP_C = {}

function AEggDoor_BP_C:DoorOpen__FinishedFunc() end

function AEggDoor_BP_C:DoorOpen__UpdateFunc() end

---@param EntryPoint int32
function AEggDoor_BP_C:ExecuteUbergraph_EggDoor_BP(EntryPoint) end

function AEggDoor_BP_C:OpenDoor() end

function AEggDoor_BP_C:SetToOpenState() end

function AEggDoor_BP_C:UserConstructionScript() end
