---@meta

---@class ABloodPool_EnemySpawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StalkerSpawner AMiniboss_Stalker_Spawner_C
---@field BullSpawner ASnailBull_Miniboss_Spawner_C
---@field FightStartTrigger ATriggerVolume
---@field StalkerDead boolean
---@field BullDead boolean
---@field FrontDoor ADoor_Base_C
---@field RearDoor ADoor_Base_C
---@field PoolDead boolean
---@field BloodPool AFS_StaticMeshActor_C
---@field LastKillloc FVector
local ABloodPool_EnemySpawner_C = {}

---@param EntryPoint int32
function ABloodPool_EnemySpawner_C:ExecuteUbergraph_BloodPool_EnemySpawner(EntryPoint) end

function ABloodPool_EnemySpawner_C:GetPoolPercent() end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function ABloodPool_EnemySpawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
function ABloodPool_EnemySpawner_C:OwnedEnemyTookDamage(Enemy, Damage, Tags, DataTags) end

function ABloodPool_EnemySpawner_C:PlayerTeleportedOutOfBossArena() end

function ABloodPool_EnemySpawner_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ABloodPool_EnemySpawner_C:ReceiveTick(DeltaSeconds) end

---@param OverlappedActor AActor
---@param OtherActor AActor
function ABloodPool_EnemySpawner_C:StartFight(OverlappedActor, OtherActor) end

---@param DeathLocation FVector
function ABloodPool_EnemySpawner_C:bulldied(DeathLocation) end

---@param DeathLocation FVector
function ABloodPool_EnemySpawner_C:drilldied(DeathLocation) end
