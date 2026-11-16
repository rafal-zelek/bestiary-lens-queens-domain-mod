---@meta

---@class AOW_BridgeDoor_C : ADoor_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockerBox UBoxComponent
---@field RightDoor UStaticMeshComponent
---@field LeftDoor UStaticMeshComponent
---@field OpenDOors_Open_A7FC74BB42B2336DB5C91B81BB31FFA5 float
---@field OpenDOors__Direction_A7FC74BB42B2336DB5C91B81BB31FFA5 ETimelineDirection::Type
---@field OpenDOors UTimelineComponent
---@field Unlocked boolean
---@field OpenWidth float
---@field OpeningSOund UAudioComponent
local AOW_BridgeDoor_C = {}

function AOW_BridgeDoor_C:CloseDoor() end

function AOW_BridgeDoor_C:DisableBlocker() end

function AOW_BridgeDoor_C:EnableBlocker() end

---@param EntryPoint int32
function AOW_BridgeDoor_C:ExecuteUbergraph_OW_BridgeDoor(EntryPoint) end

---@param PlayerInteracting AActor
function AOW_BridgeDoor_C:Interact(PlayerInteracting) end

function AOW_BridgeDoor_C:OpenDOors__FinishedFunc() end

function AOW_BridgeDoor_C:OpenDOors__UpdateFunc() end

function AOW_BridgeDoor_C:OpenDoor() end

function AOW_BridgeDoor_C:SetToOpenState() end

function AOW_BridgeDoor_C:UpdateFogDAValues() end
