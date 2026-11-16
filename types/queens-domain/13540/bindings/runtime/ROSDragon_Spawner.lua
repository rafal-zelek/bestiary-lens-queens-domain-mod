---@meta

---@class AROSDragon_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DoorToManage AROS_Door_BP_C
local AROSDragon_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AROSDragon_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AROSDragon_Spawner_C:ExecuteUbergraph_ROSDragon_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AROSDragon_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AROSDragon_Spawner_C:PlayerTeleportedOutOfBossArena() end
