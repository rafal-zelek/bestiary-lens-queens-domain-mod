---@meta

---@class ABoner_Shrineboss_Demo_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Doors TArray<AGraveyardBoss_Gate_C>
local ABoner_Shrineboss_Demo_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ABoner_Shrineboss_Demo_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ABoner_Shrineboss_Demo_Spawner_C:ExecuteUbergraph_Boner_Shrineboss_Demo_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ABoner_Shrineboss_Demo_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function ABoner_Shrineboss_Demo_Spawner_C:PlayerTeleportedOutOfBossArena() end
