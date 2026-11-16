---@meta

---@class ABoner_ShrineBoss_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ArenaDoor ASwordShrineGate_BP_C
---@field Trigger AActivationTrigger_C
---@field EntranceGate ASwordShrineGate_BP_C
---@field ExitGate ASwordShrineGate_BP_C
local ABoner_ShrineBoss_Spawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ABoner_ShrineBoss_Spawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ABoner_ShrineBoss_Spawner_C:ExecuteUbergraph_Boner_ShrineBoss_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ABoner_ShrineBoss_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function ABoner_ShrineBoss_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ABoner_ShrineBoss_Spawner_C:ReceiveBeginPlay() end
