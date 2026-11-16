---@meta

---@class AJosamiLord_Green_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BridgeCenterTrigger ATriggerVolume
---@field FrontDoor AOW_BridgeDoor_C
---@field RearDoor AOW_BridgeDoor_C
---@field ArenaCenter AJosamiLord_ArenaOrientationActor_C
local AJosamiLord_Green_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AJosamiLord_Green_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AJosamiLord_Green_Spawner_C:ExecuteUbergraph_JosamiLord_Green_Spawner(EntryPoint) end

function AJosamiLord_Green_Spawner_C:PlayerRested() end

function AJosamiLord_Green_Spawner_C:PlayerTeleportedOutOfBossArena() end

function AJosamiLord_Green_Spawner_C:ReceiveBeginPlay() end

function AJosamiLord_Green_Spawner_C:Reset() end

function AJosamiLord_Green_Spawner_C:RestoreFromSave() end

---@param InitialSpawn boolean
function AJosamiLord_Green_Spawner_C:RestoreFromSaveState(InitialSpawn) end
