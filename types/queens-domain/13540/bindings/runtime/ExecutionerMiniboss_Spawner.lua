---@meta

---@class AExecutionerMiniboss_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FrontDoor ALib_IntDoor_00_BP_C
---@field backDoor ALib_IntDoor_00_BP_C
---@field CheckpointGate ASecretWall_C
local AExecutionerMiniboss_Spawner_C = {}

---@param EntryPoint int32
function AExecutionerMiniboss_Spawner_C:ExecuteUbergraph_ExecutionerMiniboss_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AExecutionerMiniboss_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AExecutionerMiniboss_Spawner_C:OnEnemyAggrod() end

function AExecutionerMiniboss_Spawner_C:PlayerTeleportedOutOfBossArena() end
