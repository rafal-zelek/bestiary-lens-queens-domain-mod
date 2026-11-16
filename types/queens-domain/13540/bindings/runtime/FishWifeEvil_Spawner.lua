---@meta

---@class AFishWifeEvil_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GuardianSpawners TArray<AEnemySpawner_C>
---@field Door AJigekiDoor_BP_C
local AFishWifeEvil_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AFishWifeEvil_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function AFishWifeEvil_Spawner_C:ExecuteUbergraph_FishWifeEvil_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AFishWifeEvil_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AFishWifeEvil_Spawner_C:PlayerTeleportedOutOfBossArena() end
