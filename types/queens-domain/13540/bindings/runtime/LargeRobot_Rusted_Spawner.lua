---@meta

---@class ALargeRobot_Rusted_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AddsAttackActivatables TArray<TScriptInterface<IActivatable_C>>
---@field LockInDoors TArray<TScriptInterface<IActivatable_C>>
---@field ActivateOnDeath TArray<TScriptInterface<IActivatable_C>>
local ALargeRobot_Rusted_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ALargeRobot_Rusted_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ALargeRobot_Rusted_Spawner_C:ExecuteUbergraph_LargeRobot_Rusted_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ALargeRobot_Rusted_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function ALargeRobot_Rusted_Spawner_C:OnEnemyAggrod() end

function ALargeRobot_Rusted_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ALargeRobot_Rusted_Spawner_C:SpawnAdds() end

---@param Data TArray<FSavableActorState>
ALargeRobot_Rusted_Spawner_C['Restore State From Save Data'] = function(self, Data) end
