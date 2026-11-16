---@meta

---@class AJosami_Des_BloodPoolSpawner_C : AEnemySpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DesJosamiFlow UAudioComponent
---@field DesJosamiRain UAudioComponent
---@field Intro_OverflowMoveUp_2349F9D84B1762CF831D4FB849DD129D float
---@field Intro__Direction_2349F9D84B1762CF831D4FB849DD129D ETimelineDirection::Type
---@field Intro UTimelineComponent
---@field Explosion_DomeFadeIn_321DBBD8486F502412C1E4A51C98EAFA float
---@field Explosion_DomeMoveUp_321DBBD8486F502412C1E4A51C98EAFA float
---@field Explosion_DomeExpand_321DBBD8486F502412C1E4A51C98EAFA float
---@field Explosion__Direction_321DBBD8486F502412C1E4A51C98EAFA ETimelineDirection::Type
---@field Explosion UTimelineComponent
---@field JosamiSpawners TArray<AEnemySpawner_C>
---@field MantaSpawner AEnemySpawner_C
---@field LastmantaTime float
---@field CurrentMantas TArray<AFlyingManta_Blood_BP_C>
---@field MaxActiveMantas int32
---@field MinMantaWaitTime float
---@field LastHitJosami AJosamiKnight_Base_C
---@field BloodPillarFX TArray<ANiagaraActor>
---@field RainFX ANiagaraActor
---@field OverflowFX ANiagaraActor
---@field OverFlowActivate ANiagaraActor
---@field Dome AFS_StaticMeshActor_C
---@field Dome_Collision AFS_StaticMeshActor_C
---@field EarlyLeavetrigger AActivationTrigger_C
---@field Gate ADoor_Base_C
local AJosami_Des_BloodPoolSpawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AJosami_Des_BloodPoolSpawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param AllAreDead boolean
function AJosami_Des_BloodPoolSpawner_C:AreAllJosamiDead(AllAreDead) end

function AJosami_Des_BloodPoolSpawner_C:BeginFight() end

function AJosami_Des_BloodPoolSpawner_C:BeginIntro() end

---@param CanSpawn boolean
function AJosami_Des_BloodPoolSpawner_C:CanSpawnManta(CanSpawn) end

function AJosami_Des_BloodPoolSpawner_C:CancelIntro() end

function AJosami_Des_BloodPoolSpawner_C:DeactivateFX() end

function AJosami_Des_BloodPoolSpawner_C:DoBLoodSplosion() end

---@param EntryPoint int32
function AJosami_Des_BloodPoolSpawner_C:ExecuteUbergraph_Josami_Des_BloodPoolSpawner(EntryPoint) end

function AJosami_Des_BloodPoolSpawner_C:Explosion__FinishedFunc() end

function AJosami_Des_BloodPoolSpawner_C:Explosion__NewTrack_3__EventFunc() end

function AJosami_Des_BloodPoolSpawner_C:Explosion__UpdateFunc() end

function AJosami_Des_BloodPoolSpawner_C:FinishFight() end

function AJosami_Des_BloodPoolSpawner_C:Intro__FinishedFunc() end

function AJosami_Des_BloodPoolSpawner_C:Intro__UpdateFunc() end

---@param DeathLocation FVector
function AJosami_Des_BloodPoolSpawner_C:JosamiDied(DeathLocation) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AJosami_Des_BloodPoolSpawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AJosami_Des_BloodPoolSpawner_C:MantaDied(bNoRewards, EnemyThatDied) end

function AJosami_Des_BloodPoolSpawner_C:PlayerTeleportedOutOfBossArena() end

function AJosami_Des_BloodPoolSpawner_C:RandomForcedRespawn() end

function AJosami_Des_BloodPoolSpawner_C:ReceiveBeginPlay() end

function AJosami_Des_BloodPoolSpawner_C:SkipIntro() end

function AJosami_Des_BloodPoolSpawner_C:SpawnJosami() end

function AJosami_Des_BloodPoolSpawner_C:SpawnManta() end
