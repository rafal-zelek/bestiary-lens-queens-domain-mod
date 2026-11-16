---@meta

---@class ACastleFrontDoor_BP_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_5CB689814DAFC487E71D83AA2E35DD40 float
---@field DoorOpen__Direction_5CB689814DAFC487E71D83AA2E35DD40 ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field OpenAmount float
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
---@field LightIntensity float
local ACastleFrontDoor_BP_C = {}

function ACastleFrontDoor_BP_C:DoorOpen__FinishedFunc() end

function ACastleFrontDoor_BP_C:DoorOpen__UpdateFunc() end

---@param EntryPoint int32
function ACastleFrontDoor_BP_C:ExecuteUbergraph_CastleFrontDoor_BP(EntryPoint) end

function ACastleFrontDoor_BP_C:OpenDoor() end

function ACastleFrontDoor_BP_C:SetToOpenState() end

function ACastleFrontDoor_BP_C:UserConstructionScript() end
