---@meta

---@class ALargeRobot_Miniboss_Spawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DrillSpawner ADrillRobot_Miniboss_Spawner_C
---@field FightStartTrigger ATriggerVolume
---@field DrillDead boolean
---@field LargeDead boolean
---@field Door ADoor_Base_C
---@field LastKillloc FVector
local ALargeRobot_Miniboss_Spawner_C = {}

---@param EntryPoint int32
function ALargeRobot_Miniboss_Spawner_C:ExecuteUbergraph_LargeRobot_Miniboss_Spawner(EntryPoint) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ALargeRobot_Miniboss_Spawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function ALargeRobot_Miniboss_Spawner_C:PlayerTeleportedOutOfBossArena() end

function ALargeRobot_Miniboss_Spawner_C:ReceiveBeginPlay() end

---@param OverlappedActor AActor
---@param OtherActor AActor
function ALargeRobot_Miniboss_Spawner_C:StartFight(OverlappedActor, OtherActor) end

---@param DeathLocation FVector
function ALargeRobot_Miniboss_Spawner_C:drilldied(DeathLocation) end
