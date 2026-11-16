---@meta

---@class ABallooner_Big_Spawner_C : ABallooner_Regular_Spawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CaveTrigger ATriggerVolume
---@field RoomTrigger ATriggerVolume
---@field FrontDoorTrigger ATriggerVolume
---@field RearDoorTrigger ATriggerVolume
---@field SideDoorTrigger ATriggerVolume
---@field CaveLocation AActor
---@field RoomIslandLocation1 AActor
---@field RoomIslandLocation2 AActor
---@field FrontDoorLocation AActor
---@field RearDoorLocation AActor
---@field SideDoorLocation AActor
local ABallooner_Big_Spawner_C = {}

---@param EntryPoint int32
function ABallooner_Big_Spawner_C:ExecuteUbergraph_Ballooner_Big_Spawner(EntryPoint) end

function ABallooner_Big_Spawner_C:ReceiveBeginPlay() end
