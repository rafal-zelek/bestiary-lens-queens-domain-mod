---@meta

---@class AAquaBossExitDoor_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AquaDoor_00_SM1 UStaticMeshComponent
---@field AquaDoor_00_SM UStaticMeshComponent
---@field DoorOpen_OpenAmount_BBAFC1B5452229CF7DAE46A6A5B20538 float
---@field DoorOpen__Direction_BBAFC1B5452229CF7DAE46A6A5B20538 ETimelineDirection::Type
---@field DoorOpen UTimelineComponent
---@field OpenAmount float
---@field doorLFinalState FTransform
---@field DoorRFinalState FTransform
local AAquaBossExitDoor_C = {}

function AAquaBossExitDoor_C:DoorOpen__FinishedFunc() end

function AAquaBossExitDoor_C:DoorOpen__UpdateFunc() end

---@param EntryPoint int32
function AAquaBossExitDoor_C:ExecuteUbergraph_AquaBossExitDoor(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AAquaBossExitDoor_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AAquaBossExitDoor_C:Interact(PlayerInteracting) end

function AAquaBossExitDoor_C:OpenDoor() end

function AAquaBossExitDoor_C:SetToOpenState() end

function AAquaBossExitDoor_C:UserConstructionScript() end
