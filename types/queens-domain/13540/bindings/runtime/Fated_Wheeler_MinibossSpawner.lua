---@meta

---@class AFated_Wheeler_MinibossSpawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Bed AHeartbed_BP_C
---@field SpikerSpawner ALordly_Spiker_Miniboss_Spawner_C
---@field ArenaDoor ADoor_Base_C
---@field SpikerDead boolean
---@field WheelerDead boolean
---@field MusicVolume AFS_MusicVolume
---@field WantsToComboAttack boolean
---@field LastKillloc FVector
local AFated_Wheeler_MinibossSpawner_C = {}

---@param EntryPoint int32
function AFated_Wheeler_MinibossSpawner_C:ExecuteUbergraph_Fated_Wheeler_MinibossSpawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AFated_Wheeler_MinibossSpawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AFated_Wheeler_MinibossSpawner_C:PlayerTeleportedOutOfBossArena() end

function AFated_Wheeler_MinibossSpawner_C:ReceiveBeginPlay() end

---@param DeathLocation FVector
function AFated_Wheeler_MinibossSpawner_C:SpikerDied(DeathLocation) end

function AFated_Wheeler_MinibossSpawner_C:StartFight() end
