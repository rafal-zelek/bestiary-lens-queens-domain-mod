---@meta

---@class AEnemySpawner_C : ASavableActor_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SaveLocationOverridePos USceneComponent
---@field LineOfSightCheckerComp ULineOfSightCheckerComp
---@field ActorUROManager UActorUROManager
---@field WanderRadiusVisualizer UStaticMeshComponent
---@field LOSCheckLocation USceneComponent
---@field TrapActivateTrigger USphereComponent
---@field TrapDeactivateTrigger USphereComponent
---@field EnemyHomeLocation USceneComponent
---@field SpawnLocation USceneComponent
---@field ForceItemDropSaveLocationOverrides boolean
---@field UseMaxKillCount boolean
---@field MaxKillCount int32
---@field EnemyData UEnemyData_C
---@field RequireNamedSaveDataToSpawn boolean
---@field NamedSaveDataToCheck FName
---@field NamedSaveDataMin int32
---@field NamedSaveDataMax int32
---@field CurrentManagedEnemy AEnemyBase_C
---@field OverrideRespawnTime boolean
---@field OveriddenRespawnTime float
---@field CurrentKillCount int32
---@field RespawnTimer FTimerHandle
---@field PlayerDistanceDespawnCheck float
---@field SpawnerDistanceDespawnCheck float
---@field MaxSpawnDistance float
---@field MinSpawnDistance float
---@field RespawnVisRetryTime float
---@field CurrentFogAlphaDA UENVControlData_C
---@field OverrideItemDrop boolean
---@field ItemDropOverride FItemDrop
---@field ['Wander Radius'] float
---@field VisualizeWanderRadius boolean
---@field DisablePlaceOnGroundHelp boolean
---@field BehaviourMode EnemyBehaviourMode::Type
---@field EnableBuiltInActivationTrigger boolean
---@field PlayerIsInActivationRange boolean
---@field ChildActorComp UChildActorComponent
---@field ChildActor AEnemyBase_C
---@field DisableFacingCheckForTrap boolean
---@field DisableDamageTillTrapTriggered boolean
---@field Config UPlayerBalance_C
---@field EnemyWasKilled FEnemySpawner_CEnemyWasKilled
---@field ActivateOnAggroTargets TArray<TScriptInterface<IActivatable_C>>
---@field SpawnOnActivate boolean
---@field TriggerTrapOnActivationSpawn boolean
---@field ReadyForSpawnAttempt boolean
---@field SpawnDisabledByRespawnTimer boolean
---@field InSpawnAttemptLoop boolean
---@field AllowBossDespawn boolean
---@field RequireQuestStateToSpawn boolean
---@field QuestStateToCheck FName
---@field QuestStateValue int32
---@field Initted boolean
---@field CapsuleHalfHeight float
---@field MyStreamingLevel FString
---@field LevelIsRemoved boolean
---@field ['Boss Group DA'] UEnemyData_C
---@field EnemySpawned FEnemySpawner_CEnemySpawned
---@field PairedBossSpawners TArray<AEnemySpawner_C>
---@field FollowerSpawner boolean
local AEnemySpawner_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function AEnemySpawner_C:Activate(ActivateByLoad, ActorThatTriggered) end

function AEnemySpawner_C:ActivateEnemy() end

---@param DeltaTime float
function AEnemySpawner_C:BndEvt__EnemySpawner_ActorUROManager_K2Node_ComponentBoundEvent_0_UROBudgetedUpdate__DelegateSignature(DeltaTime) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AEnemySpawner_C:BndEvt__EnemySpawner_TrapActivateTrigger_K2Node_ComponentBoundEvent_2_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AEnemySpawner_C:BndEvt__EnemySpawner_TrapDeactivateTrigger_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function AEnemySpawner_C:CanEverSpawn() end

function AEnemySpawner_C:CheckForQuestStateConditions() end

---@param Reset boolean
---@param Success boolean
---@param Failed_Due_To_Named_Save_Data boolean
function AEnemySpawner_C:CheckSpawnConditions(Reset, Success, Failed_Due_To_Named_Save_Data) end

function AEnemySpawner_C:CheckTriggers() end

function AEnemySpawner_C:CleanUpChildActor() end

---@param DeactivateByLoad boolean
---@param ActorThatTriggered AActor
function AEnemySpawner_C:Deactivate(DeactivateByLoad, ActorThatTriggered) end

---@param Did boolean
function AEnemySpawner_C:DidPlayerRecentlyTeleport(Did) end

function AEnemySpawner_C:DoInitialSpawn() end

function AEnemySpawner_C:DoubleCheckRespawnTimer() end

function AEnemySpawner_C:EnemyHeartbeat() end

function AEnemySpawner_C:EnemySpawned__DelegateSignature() end

---@param DeathLocation FVector
function AEnemySpawner_C:EnemyWasKilled__DelegateSignature(DeathLocation) end

---@param EntryPoint int32
function AEnemySpawner_C:ExecuteUbergraph_EnemySpawner(EntryPoint) end

function AEnemySpawner_C:ForceLevelBecameVisible() end

---@param RequestedBy AActor
function AEnemySpawner_C:GetBPTargetLocation(RequestedBy) end

---@param Alpha UENVControlData_C
---@param Beta UENVControlData_C
function AEnemySpawner_C:GetCurrentFogDAs(Alpha, Beta) end

---@param ShouldOverride boolean
---@param Location FVector
function AEnemySpawner_C:GetDropSaveLocationOverrideSettings(ShouldOverride, Location) end

---@param RespawnTimer FTimerHandle
---@param SpawnerGUID FGuid
function AEnemySpawner_C:GetEnemySaveState(RespawnTimer, SpawnerGUID) end

---@param RespawnTime float
function AEnemySpawner_C:GetNextSpawnTime(RespawnTime) end

function AEnemySpawner_C:GetRespawnTime() end

---@param Output FGuid
function AEnemySpawner_C:GetSaveGUID(Output) end

---@param HP float
function AEnemySpawner_C:GetSavedHP(HP) end

function AEnemySpawner_C:GetSpawnLoc() end

function AEnemySpawner_C:IncrementKillCount() end

function AEnemySpawner_C:IsNotBlockedByRespawnTime() end

function AEnemySpawner_C:LevelHidden() end

---@param LevelName FString
function AEnemySpawner_C:LevelStartToRemove(LevelName) end

---@param LevelName FString
function AEnemySpawner_C:LevelbecameVisible(LevelName) end

---@param TeleportOut boolean
function AEnemySpawner_C:Local_CheckBossTPOut(TeleportOut) end

---@param NoReward boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AEnemySpawner_C:ManagedEnemyDied(NoReward, EnemyThatDied) end

function AEnemySpawner_C:OnEnemyAggrod() end

---@param Enemy AEnemyBase_C
---@param Damage float
---@param Tags FGameplayTagContainer
---@param DataTags TMap<FGameplayTag, float>
function AEnemySpawner_C:OwnedEnemyTookDamage(Enemy, Damage, Tags, DataTags) end

function AEnemySpawner_C:PlayerRested() end

function AEnemySpawner_C:PlayerTeleported() end

function AEnemySpawner_C:PlayerTeleportedOutOfBossArena() end

function AEnemySpawner_C:ReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason::Type
function AEnemySpawner_C:ReceiveEndPlay(EndPlayReason) end

function AEnemySpawner_C:Reset() end

function AEnemySpawner_C:Respawn() end

function AEnemySpawner_C:RespawnEnemy() end

---@param InitialSpawn boolean
function AEnemySpawner_C:RestoreFromSaveState(InitialSpawn) end

---@param DA UENVControlData_C
function AEnemySpawner_C:SetAlphaFogDA(DA) end

---@param DA UENVControlData_C
function AEnemySpawner_C:SetBetaFogDA(DA) end

function AEnemySpawner_C:SetDropsOnPreviewActor() end

---@param Paused boolean
function AEnemySpawner_C:SetEnemiesPaused(Paused) end

function AEnemySpawner_C:SetUpEventsAndStateInfo() end

---@param CapsuleHalfHeight float
function AEnemySpawner_C:SetUpPlaceOnGroundHelp(CapsuleHalfHeight) end

function AEnemySpawner_C:SpawnEnemyWithConfigApplied() end

function AEnemySpawner_C:StartInitialSpawnProcess() end

function AEnemySpawner_C:StartRespawnIfNotAlreadyRunning() end

---@param Time float
function AEnemySpawner_C:StartRespawnTimer(Time) end

---@param HP float
function AEnemySpawner_C:StoreEnemyState(HP) end

function AEnemySpawner_C:UpdateFogDAValues() end

function AEnemySpawner_C:UpdateInternal() end

function AEnemySpawner_C:UserConstructionScript() end

function AEnemySpawner_C:WorldStateChanged() end

---@param ResetSpawn boolean
---@param Vis_Checks_Passed boolean
AEnemySpawner_C['Check Spawn Visibility'] = function(self, ResetSpawn, Vis_Checks_Passed) end

AEnemySpawner_C['Enable World Spawn Gate'] = function(self) end

AEnemySpawner_C['Force Respawn'] = function(self) end

AEnemySpawner_C['Internal Retry Spawning'] = function(self) end

AEnemySpawner_C['Reset Enemy Save Data'] = function(self) end

---@param Data TArray<FSavableActorState>
AEnemySpawner_C['Restore State From Save Data'] = function(self, Data) end

---@param TeleportOut boolean
AEnemySpawner_C['Shoulddo Boss Teleport Out'] = function(self, TeleportOut) end

---@param Ignore_Vis_Check boolean
---@param ResetSpawn boolean
AEnemySpawner_C['Try Spawning Enemy'] = function(self, Ignore_Vis_Check, ResetSpawn) end
