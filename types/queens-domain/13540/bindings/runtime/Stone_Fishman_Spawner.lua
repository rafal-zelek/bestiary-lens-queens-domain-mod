---@meta

---@class AStone_Fishman_Spawner_C : AFishManerSpawner_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RuneNSD FName
local AStone_Fishman_Spawner_C = {}

---@param EntryPoint int32
function AStone_Fishman_Spawner_C:ExecuteUbergraph_Stone_Fishman_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AStone_Fishman_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AStone_Fishman_Spawner_C:OnEnemyAggrod() end
