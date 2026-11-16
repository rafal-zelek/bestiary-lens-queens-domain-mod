---@meta

---@class APT_Door_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockerBox UBoxComponent
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_3B2D1E154EFB74B9FB152580BBC12A56 float
---@field DoorOpen__Direction_3B2D1E154EFB74B9FB152580BBC12A56 ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field OpenAmount float
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
local APT_Door_C = {}

function APT_Door_C:CloseDoor() end

function APT_Door_C:DoorOpen__FinishedFunc() end

function APT_Door_C:DoorOpen__UpdateFunc() end

---@param EntryPoint int32
function APT_Door_C:ExecuteUbergraph_PT_Door(EntryPoint) end

function APT_Door_C:OpenDoor() end

function APT_Door_C:SetToOpenState() end

function APT_Door_C:UserConstructionScript() end
