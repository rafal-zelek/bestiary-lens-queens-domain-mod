---@meta

---@class AFS_AIController : AAIController
---@field ReservedNavLinks TArray<AFS_NavLinkProxy>
---@field bClaimNavLinksOnMove boolean
local AFS_AIController = {}

---@class AFS_Actor : AActor
local AFS_Actor = {}

---@class AFS_CrowBase : AActor
---@field bDead boolean
---@field bFlying boolean
---@field bFlapping boolean
---@field bSpooking boolean
---@field bRespawns boolean
---@field bCawingEnabled boolean
---@field FlightSpeed float
---@field CurrentSpeed float
---@field CirclePos float
---@field FlapOffset float
---@field HeightOffset float
---@field RandomFlightWiggleAmount float
---@field MinTimeBetweenCalls float
---@field MaxTimeBetweenCalls float
---@field bReverseDirection boolean
---@field SpookLaunchLoc FVector
---@field TargetLocation FVector
---@field InterpSpeed float
---@field InterpSpeedMult float
---@field SpookSplinePath USplineComponent
---@field OwnerSplinePath USplineComponent
local AFS_CrowBase = {}

---@class AFS_EnemyCharacterBase : ACharacter
---@field OnEnemyDied FFS_EnemyCharacterBaseOnEnemyDied
---@field OnEnemyStaggered FFS_EnemyCharacterBaseOnEnemyStaggered
---@field ActionObjects TArray<UFS_EnemyAction>
---@field RootMotionMoveReq FVector
---@field LastRootMotionMoveReq FVector
---@field bSpawnerPreviewInstance boolean
---@field LastMovementInput FVector
---@field CurrentMovementInput FVector
---@field bIsParalyzed boolean
---@field bIsJumping boolean
---@field bDead boolean
---@field bIsStaggered boolean
---@field bIsAIDisabled boolean
---@field bDisableFallingCheckForAIBlock boolean
---@field PoisonDamagePool float
---@field RemainingPoisonTicks int32
---@field PoisonTickBuildup float
---@field PoisonTickRate float
---@field WeakenDuration float
---@field DiseaseDuration float
---@field HeavyDuration float
---@field ParalyzeDuration float
---@field bIsChasing boolean
---@field bPlayerIsSeen boolean
---@field bAggrod boolean
---@field bIsCirclingEnabled boolean
---@field bIsAttacking boolean
---@field bIsWandering boolean
---@field CurrentStateIndex int32
---@field CurrentSubState int32
---@field CurrentTurnSpeed float
---@field CurrentTargetRotationOffset float
---@field bEnableAttackScriptedTargetRotationOffset boolean
---@field AttackScriptedTargetRotationOffset float
---@field LocalDT float
---@field AnimCurveRotationModifier float
---@field NativeData UQD_EnemyData_base
---@field RemainingCooldownTimeOnAttacks TMap<int32, float>
---@field CurrentSelectionWeights TArray<float>
---@field RecoveryTimeRemaining float
---@field bInRecoveryTime boolean
local AFS_EnemyCharacterBase = {}

---@class AFS_FogLightActorBase : AActor
---@field FogLightComponent UFS_FogLightComponent
local AFS_FogLightActorBase = {}

---@class AFS_FogProcessor : AActor
---@field LightTarget UTextureRenderTarget2D
---@field RTDataMaterialBase UMaterialInterface
---@field Params UMaterialParameterCollection
---@field FogLightComps TArray<UFS_FogLightComponent>
---@field VisibleLights TArray<UFS_FogLightComponent>
local AFS_FogProcessor = {}

---@class AFS_GameModeCore : ARW_GameModeBase
---@field ChallengeSystemComp UFS_ChallengeSystemComponent
---@field UpdatePoolConfigs TMap<FName, FFS_UpdateBudgetPoolConfig>
---@field BudgetedUpdatePools TMap<FName, FFS_UpdateBudgetPool>
---@field MusicSystem AFS_MusicSystemBase
---@field EnemyPauseEvent FFS_GameModeCoreEnemyPauseEvent
---@field LevelManager AFS_LevelManager
---@field bDisableLevelManagement boolean
---@field bRanInitialSpawnAlready boolean
local AFS_GameModeCore = {}

---@class AFS_HUD_Base : AFB_HUD_Base
local AFS_HUD_Base = {}

---@class AFS_LevelManager : AInfo
---@field OnLevelStartToRemove FFS_LevelManagerOnLevelStartToRemove
---@field OnLevelBecameVisible FFS_LevelManagerOnLevelBecameVisible
---@field OnLevelLoadingFinished FFS_LevelManagerOnLevelLoadingFinished
---@field bDisableLevelManagement boolean
---@field ActiveList UFS_LevelList
---@field OceanBlockerName FString
---@field DekanimaLevelName FString
---@field bNextActionIsFlush boolean
---@field bRebuildListAfterFlush boolean
---@field FlushActions TArray<FFS_LevelManagerAction>
---@field LevelListStack TArray<FFS_LevelListStackEntry>
---@field TriggerLevelListStack TArray<FFS_LevelListStackEntry>
---@field PriorityLoadList UFS_LevelList
---@field Entries TMap<ULevelStreaming, UFS_LevelManagerEntry>
---@field OceanBlockerEntry UFS_LevelManagerEntry
---@field Actions TArray<FFS_LevelManagerAction>
---@field ActiveAction FFS_LevelManagerAction
---@field SafeLocLevelListStack TArray<FFS_LevelListStackEntry>
---@field SafeLocTriggerLevelListStack TArray<FFS_LevelListStackEntry>
---@field bCurrentlyProcessingCached boolean
local AFS_LevelManager = {}

---@class AFS_LevelManagerVolume : AVolume
---@field LevelList UFS_LevelList
local AFS_LevelManagerVolume = {}

---@class AFS_MusicHoldVolume : AVolume
---@field bSkipGroundedCheck boolean
---@field IgnoreHoldAreaDatas TArray<UFS_MusicAreaData>
---@field IgnoreHoldCues_Cache TSet<USoundCue>
local AFS_MusicHoldVolume = {}

---@class AFS_MusicSystemBase : AActor
---@field MusicAreaInstances TMap<UFS_MusicAreaData, UFS_MusicAreaInstance>
---@field AllMusicAreaInstances TArray<UFS_MusicAreaInstance>
---@field CurrentHoldStacks int32
---@field CurrentPlayingTrack USoundCue
---@field DesiredTrackToPlay USoundCue
---@field CurrentTrackOverride USoundCue
---@field NextTrackTimerHandle FTimerHandle
---@field ActiveMusicAreaInstances TSet<UFS_MusicAreaInstance>
---@field bPlayerIsCurrentlyGrounded boolean
---@field bWaitingForPlayerGroundedToRefresh boolean
---@field TemporaryTrackOverride UFS_MusicAreaData
local AFS_MusicSystemBase = {}

---@class AFS_MusicVolume : AVolume
---@field MusicAreaData UFS_MusicAreaData
local AFS_MusicVolume = {}

---@class AFS_NavLinkProxy : ANavLinkProxy
---@field JumpLength float
---@field LinkRightPos FVector
---@field LinkLeftPos FVector
---@field ArcHeight float
---@field JumpPath TArray<FVector>
---@field ReservedBy AAIController
local AFS_NavLinkProxy = {}

---@class AFS_PlayerCameraManager : APlayerCameraManager
local AFS_PlayerCameraManager = {}

---@class AFS_PlayerCharacter : ACharacter
---@field bForceCanJump boolean
---@field HitsThatHaveGeneratedResourcesRecently TMap<FGuid, float>
---@field AttackChargeStartTime float
local AFS_PlayerCharacter = {}

---@class AFS_PlayerController : APlayerController
---@field bWindowFocused boolean
---@field LeftStickHandler UAnalogueStickHandler
---@field RightStickHandler UAnalogueStickHandler
---@field CameraUpdate FFS_PlayerControllerCameraUpdate
local AFS_PlayerController = {}

---@class AFS_StationarySkeletalMeshActor : ASkeletalMeshActor
local AFS_StationarySkeletalMeshActor = {}

---@class FBM_JiggleBonePhysicsSettings
---@field Damping float
---@field WorldDampingLocation float
---@field WorldDampingRotation float
---@field Stiffness float
---@field Radius float
---@field LimitAngle float
local FBM_JiggleBonePhysicsSettings = {}

---@class FEnemySecondaryTickFunction : FTickFunction
---@field Target AFS_EnemyCharacterBase
local FEnemySecondaryTickFunction = {}

---@class FFS_AccessoryStats
---@field Stats TMap<FName, float>
local FFS_AccessoryStats = {}

---@class FFS_AwarenessCone
---@field Radius float
---@field Angle float
---@field Sensitivity float
---@field bRequireLOS boolean
local FFS_AwarenessCone = {}

---@class FFS_ChallengeDefinition
---@field UnlockedIcon UTexture2D
---@field LockedIcon UTexture2D
---@field bActivityTask boolean
---@field CompleteConditionMode EFS_ChallengeMode
---@field InventoryCondition TMap<UFS_Item, int32>
---@field NSDCondition TMap<FName, int32>
---@field ItemTagCondition TMap<FGameplayTag, int32>
---@field StatMax int32
---@field bForceConditionIsNotStatTotal boolean
---@field ImportedName FText
---@field ImportedDescription FText
---@field ImportedSort int32
---@field ID FName
local FFS_ChallengeDefinition = {}

---@class FFS_DialogueSequence
---@field DialogueSequence TArray<FS_DialogueSequenceEntry>
---@field ActionToRunAtEnd TSubclassOf<UFS_DialogueAction>
---@field OptionalDialogueToRunAfter UFS_DialogueData
---@field bSkipGreeting boolean
---@field AutoClose boolean
local FFS_DialogueSequence = {}

---@class FFS_DropCacheEntry
---@field SuccessfulDropCount int32
---@field TotalRollCount int32
---@field RollsSinceLastDrop int32
local FFS_DropCacheEntry = {}

---@class FFS_DropCacheKey
---@field Source FName
---@field SourceDropIndex int32
local FFS_DropCacheKey = {}

---@class FFS_EnemyAttackConfig
---@field GlobalCooldownShort float
---@field GlobalCooldownLong float
---@field LongGlobalCooldownChance float
---@field AttackReactionSpeed FInputRange
---@field CooldownMin float
---@field CooldownMax float
---@field MinAttackRange float
---@field AttackRange float
---@field bUseLocalAngleRestriction boolean
---@field bStopAllMovementOnAttackStart boolean
---@field LocalAngleCheckWidth float
---@field LocalAngleCheckForward float
---@field StatusOverride EEnemyStatusType
---@field StatusOverrideChance float
---@field Weight float
---@field AllowedState int32
---@field AllowedSubState int32
---@field TurnSpeedMultDuringAttack float
---@field RotationTargetOffset float
---@field AttackMontageDefault UAnimMontage
---@field DefaultAttackMotionValue float
---@field ActionOverride TSubclassOf<UFS_EnemyAction>
---@field AttackKey FName
---@field Comments FString
---@field AttackCooldownRange FInputRange
---@field bEnablePlayerKnockdown boolean
---@field PlayerKnockdownStyle int32
---@field bEnablePlayerPushback boolean
---@field PushbackBoneOrigin FName
---@field PlayerPushbackHorizontalStrength float
---@field PlayerPushbackVerticalStrength float
---@field b3DDistanceCheck boolean
local FFS_EnemyAttackConfig = {}

---@class FFS_EnemySaveState
---@field bValid boolean
---@field RespawnTime float
---@field RemainingHP float
local FFS_EnemySaveState = {}

---@class FFS_FrustumContainer
local FFS_FrustumContainer = {}

---@class FFS_LevelListStackEntry
---@field List UFS_LevelList
---@field Priority int32
---@field bTrigger boolean
local FFS_LevelListStackEntry = {}

---@class FFS_LevelLoadSuspendState
---@field SafeLocLevelListStack TArray<FFS_LevelListStackEntry>
---@field SafeLocTriggerLevelListStack TArray<FFS_LevelListStackEntry>
local FFS_LevelLoadSuspendState = {}

---@class FFS_LevelManagerAction
---@field Entry UFS_LevelManagerEntry
local FFS_LevelManagerAction = {}

---@class FFS_MeleeFXOverride
---@field bEnabled boolean
---@field FXOverride UNiagaraSystem
---@field FXLifetime float
---@field FXOffset FTransform
---@field FXColor1 FLinearColor
---@field FXColor2 FLinearColor
local FFS_MeleeFXOverride = {}

---@class FFS_MusicAreaInstance_SuspendData
---@field Data UFS_MusicAreaData
---@field Counter int32
---@field DoorCounters int32
local FFS_MusicAreaInstance_SuspendData = {}

---@class FFS_NamedSaveDataChange
---@field Value int32
---@field ChangeType EFS_NamedSaveDataChangeMode
local FFS_NamedSaveDataChange = {}

---@class FFS_ShopConfigData
---@field Price int32
---@field bInfiniteStock boolean
---@field BaseStock int32
---@field DisplayItem TSoftObjectPtr<UFS_Item>
---@field ItemsToGrant TMap<TSoftObjectPtr<UFS_Item>, int32>
---@field UnlockItem TSoftObjectPtr<UFS_Item>
---@field RequiredProgression int32
---@field RequiredNSD FName
---@field SortPri int32
---@field Restocks TArray<FFS_ShopStockUnlock>
---@field bSetNamedSaveDataWhenPurchased boolean
local FFS_ShopConfigData = {}

---@class FFS_ShopStockUnlock
---@field ProgressionLevel int32
---@field AddedStock int32
local FFS_ShopStockUnlock = {}

---@class FFS_UpdateBudgetPool
---@field UROComps TArray<UActorUROManager>
local FFS_UpdateBudgetPool = {}

---@class FFS_UpdateBudgetPoolConfig
---@field MaxUpdateRange float
---@field MaxUpdateCountPerFrame int32
---@field bTimeBudget boolean
---@field MaxMSPerFrame float
local FFS_UpdateBudgetPoolConfig = {}

---@class FFS_WeaponChargeVisuals
---@field ChargeImage FSlateBrush
---@field Offset FVector2D
---@field ChargeFullColor FLinearColor
---@field ChargeGlowPositions TArray<FVector2D>
---@field ChargeGlowScale FVector2D
---@field ChargeGlowColor FLinearColor
---@field ChargeGlowMaterialOverrides TMap<int32, UMaterialInterface>
local FFS_WeaponChargeVisuals = {}

---@class FFS_WeaponEvolutionConfig
---@field EvolveMontage UAnimMontage
---@field EvolveVFX UNiagaraSystem
---@field FXColor1 FLinearColor
---@field FXColor2 FLinearColor
---@field FXRadiusMult float
---@field FXHeight float
local FFS_WeaponEvolutionConfig = {}

---@class FFS_WeaponViewConfig
---@field HandPosition FVector
---@field HandRotationX float
---@field HandRotationY float
---@field HandRotationZ float
---@field ShoulderPosition FVector
---@field ShoulderRotationX float
---@field ShoulderRotationY float
---@field ShoulderRotationZ float
---@field WholeArmOffset FVector
---@field WholeArmOffsetRotationX float
---@field WholeArmOffsetRotationY float
---@field WholeArmOffsetRotationZ float
---@field LocalToMeshSpaceInterp float
---@field JumpAnimIntensity float
---@field WalkAnimIntensity float
---@field IdleAnimIntensity float
local FFS_WeaponViewConfig = {}

---@class FJournal_ViewConfig
---@field Pos FVector
---@field Scale float
---@field InitialRotation float
---@field Pitch float
---@field ClampRotation boolean
local FJournal_ViewConfig = {}

---@class FS_DialogueOption
---@field DevName FName
---@field OptionText FText
---@field NamedSaveDataValueChanges TMap<FName, FFS_NamedSaveDataChange>
---@field Conditions TArray<FS_SaveDataCondition>
---@field DialogueSequence FFS_DialogueSequence
local FS_DialogueOption = {}

---@class FS_DialogueSequenceEntry
---@field ActionToRun TSubclassOf<UFS_DialogueAction>
---@field Entry FText
---@field bHideName boolean
local FS_DialogueSequenceEntry = {}

---@class FS_SaveDataCondition
---@field Type EFS_DialogueConditionType
---@field DataToCheck FName
---@field ItemsToCheck TArray<UFS_Item>
---@field Comparison EFS_Comparator
---@field ValueToCompare int32
---@field Behaviour EFS_DialogueConditionBehaviour
local FS_SaveDataCondition = {}

---@class FS_StatContainerValues
---@field Values TArray<float>
local FS_StatContainerValues = {}

---@class FUROLayer
---@field Distance float
---@field TickRate float
local FUROLayer = {}

---@class IFS_Destination : IInterface
local IFS_Destination = {}

---@class IFS_SpawnerInterface : IInterface
local IFS_SpawnerInterface = {}

---@class UActorUROManager : UActorComponent
---@field UROLayers TArray<FUROLayer>
---@field CurrentUROLOD int32
---@field MyUROIndex int32
---@field bUROIsDisabled boolean
---@field bEnableFrustumUROBias boolean
---@field FrustumUROBias int32
---@field FrameCounter int32
---@field UpdateFrame boolean
---@field bEnableUpdateBudgeting boolean
---@field UpdateBudgetingPool FName
---@field BudgetedUpdate FActorUROManagerBudgetedUpdate
---@field bBudgetingCurrentlyCritical boolean
---@field UROCenterComp USceneComponent
local UActorUROManager = {}

---@class UAnalogueStickHandler : UActorComponent
---@field Output FAnalogueStickHandlerOutput
---@field bInternalYFlip boolean
---@field InnerDeadzone float
---@field OuterDeadzone float
---@field IntensityCurve UCurveFloat
---@field AngleCurve UCurveFloat
---@field AccelerationCurve UCurveFloat
---@field bEnableAcceleration boolean
---@field AccelerationFadeDownRate float
---@field AccelerationFadeUpRate float
---@field AccelerationMin float
---@field AccelerationMax float
---@field AccelerationStrength float
---@field bDisableTuning boolean
---@field DebugSize float
---@field DebugPos FVector2D
---@field DebugIndex int32
---@field HudRef AFS_HUD_Base
local UAnalogueStickHandler = {}

---@class UBlueprintUtils : UBlueprintFunctionLibrary
local UBlueprintUtils = {}

---@class UEnemyAwarenessProfile : UPrimaryDataAsset
---@field HeightRangeMultiplier float
---@field AggroCones TArray<FFS_AwarenessCone>
local UEnemyAwarenessProfile = {}

---@class UEnemyLineOfSightComponent : UActorComponent
---@field CharacterRef AFS_EnemyCharacterBase
---@field bEnabled boolean
---@field SeenRange float
---@field bHasLOS boolean
---@field bTargetIsInRange boolean
---@field bCanSeeTarget boolean
---@field bNeedsOriginTraceCheck boolean
---@field LOSCheckRadius float
local UEnemyLineOfSightComponent = {}

---@class UFB_ActorComponent : UActorComponent
local UFB_ActorComponent = {}

---@class UFB_ImageDecorator : URichTextBlockDecorator
---@field OverrideBrushesMap TMap<FName, FSlateBrush>
---@field OverrideBrushOffsets TMap<FName, FVector2D>
local UFB_ImageDecorator = {}

---@class UFS_AnimInstance : UAnimInstance
local UFS_AnimInstance = {}

---@class UFS_AnimNotifyState_TimedNiagaraEffect : UAnimNotifyState_TimedNiagaraEffect
---@field bForceFirstPerson boolean
---@field bForceLeftHand boolean
local UFS_AnimNotifyState_TimedNiagaraEffect = {}

---@class UFS_AnimNotifyState_TimedNiagaraEffectAdvanced : UAnimNotifyState_TimedNiagaraEffectAdvanced
---@field bForceFirstPerson boolean
---@field bForceLeftHand boolean
local UFS_AnimNotifyState_TimedNiagaraEffectAdvanced = {}

---@class UFS_AnimNotify_PlayMeleeSound : UAnimNotify_PlaySound
local UFS_AnimNotify_PlayMeleeSound = {}

---@class UFS_AnimNotify_PlayNiagaraEffect : UAnimNotify_PlayNiagaraEffect
---@field bForceFirstPerson boolean
---@field bForceLeftHand boolean
---@field bWriteToCustomDepth boolean
---@field CustomDepthMask ERendererStencilMask
local UFS_AnimNotify_PlayNiagaraEffect = {}

---@class UFS_AssetToolsSubsystem : UEngineSubsystem
---@field KeepLoadedObjectList TSet<UObject>
---@field KeepLoadedClassList TSet<UObject>
local UFS_AssetToolsSubsystem = {}

---@class UFS_ChallengeData : UPrimaryDataAsset
---@field ChallengeDefinitions TMap<FName, FFS_ChallengeDefinition>
local UFS_ChallengeData = {}

---@class UFS_ChallengeSaveGame : USaveGame
---@field ChallengeStats TMap<FName, int32>
---@field CompletedChallenges TSet<FName>
---@field bDirty boolean
local UFS_ChallengeSaveGame = {}

---@class UFS_ChallengeSystemComponent : UActorComponent
---@field ChallengeData UFS_ChallengeData
---@field OnChallengeCompleted FFS_ChallengeSystemComponentOnChallengeCompleted
---@field OnChallengeStatUpdated FFS_ChallengeSystemComponentOnChallengeStatUpdated
---@field CachedChallengeSave UFS_ChallengeSaveGame
---@field ActivityTasksCompletedThisSession TSet<FName>
---@field ChallengesCompletedDuringFullRefresh TArray<FName>
local UFS_ChallengeSystemComponent = {}

---@class UFS_ChallengeUtils : UBlueprintFunctionLibrary
local UFS_ChallengeUtils = {}

---@class UFS_CheatManagerBase : UCommandManager
local UFS_CheatManagerBase = {}

---@class UFS_CheatManagerExtension : UCheatManagerExtension
local UFS_CheatManagerExtension = {}

---@class UFS_ConfigurableStaticMeshComponent : UStaticMeshComponent
local UFS_ConfigurableStaticMeshComponent = {}

---@class UFS_DaggerStats : UFS_ItemStats
---@field DamageMult float
---@field AttackNoise EFS_AttackAggroNoise
---@field CooldownTime float
---@field Force float
---@field bDontRequireBelt boolean
---@field DamageTypes FGameplayTagContainer
---@field SpeedText FText
---@field TopSpacing float
---@field DamageTypeDisplay EFS_WeaponDamageTypeDisplay
---@field DistanceField UTexture2D
local UFS_DaggerStats = {}

---@class UFS_DialogueAction : UObject
---@field LocalContext AActor
local UFS_DialogueAction = {}

---@class UFS_DialogueData : UPrimaryDataAsset
---@field OptionHeaderText FText
---@field Greetings TArray<FS_DialogueOption>
---@field DialogueOptions TArray<FS_DialogueOption>
local UFS_DialogueData = {}

---@class UFS_EnemyAction : UObject
---@field AttackIndex int32
---@field OwningActor AFS_EnemyCharacterBase
local UFS_EnemyAction = {}

---@class UFS_EnemyAnimInstanceBase : UAnimInstance
---@field CharacterReference AFS_EnemyCharacterBase
---@field bIsMoving boolean
---@field bIsChasing boolean
---@field bIsFalling boolean
---@field bIsAggro boolean
---@field bIsWandering boolean
---@field CurrentAimAngle float
---@field HitJiggle FRotator
---@field MaxImpulseAngleY float
---@field MaxImpulseAngleX float
local UFS_EnemyAnimInstanceBase = {}

---@class UFS_EnemyUtils : UBlueprintFunctionLibrary
local UFS_EnemyUtils = {}

---@class UFS_FogData_Base : UPrimaryDataAsset
---@field FogColor FLinearColor
---@field FogStartDist float
---@field FogFadeRange float
local UFS_FogData_Base = {}

---@class UFS_FogFunctions : UBlueprintFunctionLibrary
local UFS_FogFunctions = {}

---@class UFS_FogLightComponent : UStaticMeshComponent
---@field OwningProcessor AFS_FogProcessor
---@field MaxDrawDist float
---@field LightExponent float
---@field Fade float
---@field Opacity float
---@field InvertFogMask boolean
local UFS_FogLightComponent = {}

---@class UFS_GameInstanceBase : UGameInstance
---@field bLoadingMap boolean
---@field CurrentlyLoadingMapPackage FString
---@field CurrentlyLoadingMap FName
---@field OnGameSaving FFS_GameInstanceBaseOnGameSaving
---@field OnWorldStateChange FFS_GameInstanceBaseOnWorldStateChange
---@field OnAreaChanged FFS_GameInstanceBaseOnAreaChanged
---@field OnInventoryChanged FFS_GameInstanceBaseOnInventoryChanged
---@field BaseActiveSave UFS_SaveGame
local UFS_GameInstanceBase = {}

---@class UFS_GameScriptingUtils : UBlueprintFunctionLibrary
local UFS_GameScriptingUtils = {}

---@class UFS_GameViewport : UCommonGameViewportClient
local UFS_GameViewport = {}

---@class UFS_InputSubsystem : UGameInstanceSubsystem
---@field OnButtonDown FFS_InputSubsystemOnButtonDown
---@field OnButtonUp FFS_InputSubsystemOnButtonUp
---@field OnMouseButtonDown FFS_InputSubsystemOnMouseButtonDown
---@field OnMouseButtonUp FFS_InputSubsystemOnMouseButtonUp
---@field OnAnalogue FFS_InputSubsystemOnAnalogue
---@field OnMouseMove FFS_InputSubsystemOnMouseMove
local UFS_InputSubsystem = {}

---@class UFS_Item : UPrimaryDataAsset
---@field StatData UFS_ItemStats
---@field Sellable boolean
---@field SellValue int32
---@field LogicComponent TSoftClassPtr<UActorComponent>
---@field ItemTags FGameplayTagContainer
---@field DataTags TMap<FName, float>
local UFS_Item = {}

---@class UFS_ItemDropSystem : UBlueprintFunctionLibrary
local UFS_ItemDropSystem = {}

---@class UFS_ItemStats : UPrimaryDataAsset
---@field CustomStats TMap<FName, float>
---@field PrimaryResourceGenMult float
---@field DataImportKey FName
local UFS_ItemStats = {}

---@class UFS_JiggleComponent : USceneComponent
---@field PhysicsSettings FBM_JiggleBonePhysicsSettings
---@field DummyBoneLength float
---@field TeleportDistanceThreshold float
---@field Gravity FVector
---@field bEnableWind boolean
---@field WindScale float
---@field TargetFramerate float
---@field bDisablePhysics boolean
---@field PlanarConstraint EBM_PlanarConstraint
---@field StartingRelativeLocation FTransform
---@field BoneForwardAxis EBM_BoneForwardAxis
local UFS_JiggleComponent = {}

---@class UFS_LevelList : UPrimaryDataAsset
---@field Priority int32
---@field LevelNames TArray<FString>
---@field Levels TArray<TSoftObjectPtr<UWorld>>
---@field bEnableOceanLightBlocker boolean
---@field bLoadsDekanima boolean
---@field bHideBaseLighting boolean
local UFS_LevelList = {}

---@class UFS_LevelManagerEntry : UObject
---@field Level ULevelStreaming
local UFS_LevelManagerEntry = {}

---@class UFS_LocationData : UPrimaryDataAsset
---@field Name FText
---@field AreaName FText
---@field Description FText
---@field Image UTexture2D
---@field AltImage UTexture2D
---@field AltImageCondition FS_SaveDataCondition
---@field AreaMusic UFS_MusicAreaData
---@field bMusicIsTemp boolean
---@field LocationType EFS_LocationType
---@field LevelList UFS_LevelList
---@field bLevelListIsFromTriggers boolean
---@field SortImportKey FName
---@field Sort int32
---@field TeleportDestTransform FTransform
local UFS_LocationData = {}

---@class UFS_MusicAreaData : UPrimaryDataAsset
---@field Priority int32
---@field MusicTrack USoundCue
---@field AltMusicTrack USoundCue
---@field AltTrackCondition FS_SaveDataCondition
local UFS_MusicAreaData = {}

---@class UFS_MusicAreaInstance : UObject
---@field Data UFS_MusicAreaData
---@field Counter int32
---@field DoorCounters int32
---@field SafeLocationDoorCounters int32
---@field AreaUpdated FFS_MusicAreaInstanceAreaUpdated
local UFS_MusicAreaInstance = {}

---@class UFS_MusicTrackAssetData : UAssetUserData
---@field TrackName FText
local UFS_MusicTrackAssetData = {}

---@class UFS_NoEdTickSkeletalMeshComponent : USkeletalMeshComponent
local UFS_NoEdTickSkeletalMeshComponent = {}

---@class UFS_PathFollowingComponent : UPathFollowingComponent
---@field NoStrafeTurnSpeed float
---@field bDisableStrafing boolean
---@field bRootMotionNav boolean
---@field AgentName FName
local UFS_PathFollowingComponent = {}

---@class UFS_PropertyHelpers : UBlueprintFunctionLibrary
local UFS_PropertyHelpers = {}

---@class UFS_SaveGame : USaveGame
---@field InventoryContents TMap<UFS_Item, int32>
---@field Equipment TMap<UFS_Item, int32>
---@field EquipmentSlots TMap<int32, UFS_Item>
---@field ActiveItemEffects TSet<UFS_Item>
---@field ItemChangedEvent FFS_SaveGameItemChangedEvent
---@field bDemoSave boolean
---@field InventoryTagCount TMap<FGameplayTag, int32>
---@field EquipmentTagCount TMap<FGameplayTag, int32>
---@field DropCache TMap<FFS_DropCacheKey, FFS_DropCacheEntry>
---@field EnemySaveStates TMap<FGuid, FFS_EnemySaveState>
local UFS_SaveGame = {}

---@class UFS_SaveGameUtils : UBlueprintFunctionLibrary
local UFS_SaveGameUtils = {}

---@class UFS_StatsContainer : UActorComponent
---@field Stats TMap<FName, FS_StatContainerValues>
local UFS_StatsContainer = {}

---@class UFS_WeaponPoseUtil : UBlueprintFunctionLibrary
local UFS_WeaponPoseUtil = {}

---@class UFS_WeaponStats : UFS_ItemStats
---@field PrimaryAttackPower float
---@field PrimaryAttackPower_Upgraded float
---@field PrimaryAttackNoise EFS_AttackAggroNoise
---@field PrimaryAttackForce float
---@field SecondaryAttackPower float
---@field SecondaryAttackPower_Upgraded float
---@field SecondaryResourceGenMult float
---@field SecondaryAttackNoise EFS_AttackAggroNoise
---@field SecondaryAttackForce float
---@field GunFireRate float
---@field AttackAnimSpeed float
---@field PrimaryEnergyConsumption float
---@field SecondaryEnergyConsumption float
---@field PowerMeterTime float
---@field PrimaryPowerMeterMinStrength float
---@field PrimaryPowerMeterMaxStrength float
---@field SecondaryPowerMeterMinStrength float
---@field SecondaryPowerMeterMaxStrength float
---@field UpgradeUnlockIndex int32
---@field MaxCharges int32
---@field AbilityPointsPerCharge float
---@field ChargeOverTime boolean
---@field ChargeViaResourceGen boolean
---@field ChargeVisuals FFS_WeaponChargeVisuals
---@field XPPerWeaponLevelMult float
---@field MaxWeaponLevel int32
---@field Evolution UFS_Item
---@field EvolutionGraphics FFS_WeaponEvolutionConfig
---@field AttackPowerIncreasePerLevel float
---@field PowerMeterTimeDecreasePerLevel float
---@field DamageTypes FGameplayTagContainer
---@field DamageTypeDisplay EFS_WeaponDamageTypeDisplay
---@field WeaponRange EFS_WeaponRange
---@field WeaponWidth EFS_WeaponWidth
---@field PoseAdjustments FFS_WeaponViewConfig
local UFS_WeaponStats = {}

---@class ULineOfSightCheckerComp : USceneComponent
---@field bEnabled boolean
---@field bIsCurrentlyVisible boolean
local ULineOfSightCheckerComp = {}

---@class UPickupUtils : UBlueprintFunctionLibrary
local UPickupUtils = {}

---@class UQD_EnemyData_base : UQD_Journal_Data
---@field bDoNotAllowInBestiary boolean
---@field AttackConfiguration TArray<FFS_EnemyAttackConfig>
---@field KeyToAttackIndex TMap<FName, int32>
---@field AttackIndexToKey TMap<int32, FName>
local UQD_EnemyData_base = {}

---@class UQD_Journal_Data : UPrimaryDataAsset
---@field ViewConfig FJournal_ViewConfig
local UQD_Journal_Data = {}

---@class UShopConfigData : UPrimaryDataAsset
---@field Stock TMap<FName, FFS_ShopConfigData>
local UShopConfigData = {}

---@class UUFB_CustomBoundsComp : UInstancedStaticMeshComponent
local UUFB_CustomBoundsComp = {}

---@class UVolumeMesh : UStaticMeshComponent
local UVolumeMesh = {}

---@param NavLink AFS_NavLinkProxy
---@param Destination FVector
function AFS_AIController:ExecuteNavLinkAction(NavLink, Destination) end

function AFS_AIController:GetBM_PathFollowingComponent() end

---@param RequestedBy AActor
function AFS_Actor:GetBPTargetLocation(RequestedBy) end

function AFS_CrowBase:Caw() end

function AFS_CrowBase:CawLoop() end

function AFS_CrowBase:ChangeFlapping() end

function AFS_CrowBase:GetOwningCircleSplineBP() end

function AFS_CrowBase:GetSpookPathBP() end

function AFS_CrowBase:GetTargetPos() end

function AFS_CrowBase:InitCirclePos() end

---@param Amt float
function AFS_EnemyCharacterBase:ApplyPoisonDamageTick(Amt) end

---@param Damage float
function AFS_EnemyCharacterBase:ApplyPoisonInternal(Damage) end

---@param Move FVector
function AFS_EnemyCharacterBase:BP_DoRootMotionMove(Move) end

function AFS_EnemyCharacterBase:BP_EndCurrentAttackState() end

---@param AttackState int32
function AFS_EnemyCharacterBase:BP_StartAttackState(AttackState) end

---@param AttackTurnSpeedMult float
---@param BaseTargetOffset float
---@param CurrentOffsetDirection boolean
---@param BaseTurnSpeed float
---@param AttackTargetoffset float
function AFS_EnemyCharacterBase:CalculateTurnSpeed(AttackTurnSpeedMult, BaseTargetOffset, CurrentOffsetDirection, BaseTurnSpeed, AttackTargetoffset) end

---@param bIgnoreWeight boolean
---@param Index int32
function AFS_EnemyCharacterBase:CanUseAttack(bIgnoreWeight, Index) end

function AFS_EnemyCharacterBase:CancelAllActionObjects() end

function AFS_EnemyCharacterBase:CancelBasicStatusEffects() end

function AFS_EnemyCharacterBase:CancelDisease() end

function AFS_EnemyCharacterBase:CancelHeavy() end

function AFS_EnemyCharacterBase:CancelParalysis() end

function AFS_EnemyCharacterBase:CancelPoison() end

function AFS_EnemyCharacterBase:CancelRecoveryTime() end

function AFS_EnemyCharacterBase:CancelWeaken() end

function AFS_EnemyCharacterBase:ClearAllAttackCooldowns() end

---@param AttackIndex int32
function AFS_EnemyCharacterBase:ClearAttackCooldown(AttackIndex) end

function AFS_EnemyCharacterBase:ClearAttackScriptedTargetRotationOffset() end

function AFS_EnemyCharacterBase:ConditionalSelectAttack_Native() end

---@param AttackTurnSpeedMult float
---@param BaseTargetOffset float
---@param CurrentOffsetDirection boolean
---@param BaseTurnSpeed float
---@param AttackTargetoffset float
---@param CurrentTurnSpeedMult float
---@param Target AActor
function AFS_EnemyCharacterBase:DoBasicCharacterRotationUpdate(AttackTurnSpeedMult, BaseTargetOffset, CurrentOffsetDirection, BaseTurnSpeed, AttackTargetoffset, CurrentTurnSpeedMult, Target) end

function AFS_EnemyCharacterBase:EndDisease() end

function AFS_EnemyCharacterBase:EndHeavy() end

function AFS_EnemyCharacterBase:EndParalysis() end

function AFS_EnemyCharacterBase:EndPoison() end

function AFS_EnemyCharacterBase:EndWeaken() end

function AFS_EnemyCharacterBase:GetAIDefaultAttackFacingPercent() end

function AFS_EnemyCharacterBase:GetAIForwardVector() end

---@param AttackIndex int32
function AFS_EnemyCharacterBase:GetActionForAttackIndex(AttackIndex) end

---@param Attack int32
function AFS_EnemyCharacterBase:GetAttackConfig_Base(Attack) end

---@param Attack int32
function AFS_EnemyCharacterBase:GetAttackMontage_Base(Attack) end

---@param Attack int32
---@param MinRange float
---@param MaxRange float
function AFS_EnemyCharacterBase:GetAttackRange_Base(Attack, MinRange, MaxRange) end

---@param Attack int32
---@param MinReactTime float
---@param MaxReactTime float
function AFS_EnemyCharacterBase:GetAttackReactionTime_Base(Attack, MinReactTime, MaxReactTime) end

---@param Attack int32
---@param ShortTime float
---@param MaxTime float
---@param LongChance float
function AFS_EnemyCharacterBase:GetAttackRecoveryTime_Base(Attack, ShortTime, MaxTime, LongChance) end

---@param Attack int32
---@param TurnRateMult float
---@param RotationOffset float
function AFS_EnemyCharacterBase:GetAttackRotationOffsetAndTurnRate_Base(Attack, TurnRateMult, RotationOffset) end

function AFS_EnemyCharacterBase:GetCenterPointForAI() end

function AFS_EnemyCharacterBase:GetData_BP() end

---@param Dist3D float
---@param Dist2D float
function AFS_EnemyCharacterBase:GetDistanceToPlayerForAI(Dist3D, Dist2D) end

---@param Range float
---@param Height float
function AFS_EnemyCharacterBase:GetLOSParams(Range, Height) end

function AFS_EnemyCharacterBase:GetMaxPoisonTicks() end

---@param bOverride boolean
---@param Location FVector
function AFS_EnemyCharacterBase:GetRotationTargetLocationOverride(bOverride, Location) end

function AFS_EnemyCharacterBase:GetTargetPlayer() end

function AFS_EnemyCharacterBase:InitActionObjects() end

function AFS_EnemyCharacterBase:IsAIBlocked() end

---@param Index int32
function AFS_EnemyCharacterBase:IsAttackOffCooldown(Index) end

---@param AttackIndex int32
---@param BaseWeight float
function AFS_EnemyCharacterBase:ModifyAttackWeight(AttackIndex, BaseWeight) end

---@param NewState int32
function AFS_EnemyCharacterBase:OnStateIndexChanged(NewState) end

---@param NewPhase int32
function AFS_EnemyCharacterBase:OnSubStateChanged(NewPhase) end

function AFS_EnemyCharacterBase:RecoveryTimeEnded() end

function AFS_EnemyCharacterBase:RecoveryTimeEnded_Internal() end

function AFS_EnemyCharacterBase:RefreshDataCache() end

---@param AttackIndex int32
function AFS_EnemyCharacterBase:RunActionForAttackIndex(AttackIndex) end

---@param RTO float
function AFS_EnemyCharacterBase:SetAttackScriptedTargetRotationOffset(RTO) end

---@param State int32
function AFS_EnemyCharacterBase:SetCurrentStateIndex(State) end

---@param Phase int32
function AFS_EnemyCharacterBase:SetCurrentSubState(Phase) end

---@param AttackIndex int32
---@param bOverrideDuration boolean
---@param OverriddenDuration float
function AFS_EnemyCharacterBase:StartAttackCooldown(AttackIndex, bOverrideDuration, OverriddenDuration) end

---@param Time float
function AFS_EnemyCharacterBase:StartRecoveryTime(Time) end

---@param Dir FVector
---@param HitLocation FVector
---@param Intensity float
function AFS_EnemyCharacterBase:TriggerHitImpulseOnAnim(Dir, HitLocation, Intensity) end

---@param TurnSpeed float
---@param TargetPlayer AActor
---@param bDisableUprighting boolean
---@param RotationTargetOffset float
function AFS_EnemyCharacterBase:UpdateCharacterRotation(TurnSpeed, TargetPlayer, bDisableUprighting, RotationTargetOffset) end

---@param bBoss boolean
function AFS_EnemyCharacterBase:UpdateMeshVisTickMode(bBoss) end

---@param DeltaTime float
function AFS_EnemyCharacterBase:UpdateStatusEffects(DeltaTime) end

function AFS_GameModeCore:CleanUpBudgetedUpdateComps() end

function AFS_GameModeCore:GetChallengeSystemComponent() end

function AFS_GameModeCore:GetLevelManager() end

function AFS_GameModeCore:GetMusicSystem() end

---@param WorldContextObject UObject
---@param List UFS_LevelList
---@param bTrigger boolean
---@param bOverridePriority boolean
---@param PriorityOverride int32
function AFS_LevelManager:AddLevelListToStack(WorldContextObject, List, bTrigger, bOverridePriority, PriorityOverride) end

function AFS_LevelManager:CacheSafeLocationState() end

---@param WorldContextObject UObject
function AFS_LevelManager:ClearTriggerLevelLists(WorldContextObject) end

---@param WorldContextObject UObject
---@param Mode EFS_WaitForLevelManagementMode
---@param LatentInfo FLatentActionInfo
function AFS_LevelManager:FS_WaitForLevelManagement(WorldContextObject, Mode, LatentInfo) end

---@param WorldContextObject UObject
---@param bBlocking boolean
function AFS_LevelManager:FlushLevelManagerActions(WorldContextObject, bBlocking) end

---@param WorldContextObject UObject
function AFS_LevelManager:GetLevelManager(WorldContextObject) end

function AFS_LevelManager:GetSafeLocationSuspendState() end

---@param WorldContextObject UObject
function AFS_LevelManager:IsProcessingLevelChanges(WorldContextObject) end

---@param WorldContextObject UObject
---@param List UFS_LevelList
---@param bTrigger boolean
---@param bOverridePriority boolean
---@param PriorityOverride int32
function AFS_LevelManager:RemoveLevelListFromStack(WorldContextObject, List, bTrigger, bOverridePriority, PriorityOverride) end

---@param StateToRestore FFS_LevelLoadSuspendState
function AFS_LevelManager:RestoreFromSuspendState(StateToRestore) end

function AFS_LevelManager:RestoreSafeLocationState() end

---@param WorldContextObject UObject
---@param List UFS_LevelList
---@param bMoveToTriggerListAfterFinished boolean
function AFS_LevelManager:RunPriorityLoad(WorldContextObject, List, bMoveToTriggerListAfterFinished) end

---@param WorldContextObject UObject
---@param bFreeze boolean
function AFS_LevelManager:SetFreezeLevelListUpdates(WorldContextObject, bFreeze) end

function AFS_LevelManager:StartUp() end

---@param bSkipGroundedCheck boolean
---@param IgnoreCues TSet<USoundCue>
function AFS_MusicSystemBase:ApplyMusicHold(bSkipGroundedCheck, IgnoreCues) end

---@param WorldContext UObject
---@param Data UFS_MusicAreaData
function AFS_MusicSystemBase:GetMusicAreaInstanceFromData(WorldContext, Data) end

---@param Data UFS_MusicAreaData
function AFS_MusicSystemBase:GetMusicAreaObjectFromData(Data) end

---@param WorldContext UObject
function AFS_MusicSystemBase:GetMusicSystemFromGM(WorldContext) end

function AFS_MusicSystemBase:GetSafeLocationSuspendState() end

---@param bSkipGroundedCheck boolean
---@param IgnoreCues TSet<USoundCue>
function AFS_MusicSystemBase:RemoveMusicHold(bSkipGroundedCheck, IgnoreCues) end

function AFS_MusicSystemBase:ResetDoorCountersOnAllInstances() end

function AFS_MusicSystemBase:RestoreSafeZoneOnAllInstances() end

---@param SuspendData TArray<FFS_MusicAreaInstance_SuspendData>
function AFS_MusicSystemBase:RestoreSuspendState(SuspendData) end

function AFS_MusicSystemBase:UpdateSafeZoneOnAllInstances() end

function AFS_NavLinkProxy:RefreshPathVisualizer() end

---@param NewViewTarget AActor
function AFS_PlayerCameraManager:BP_OnSetViewTarget(NewViewTarget) end

---@param WeaponChargeDuration float
---@param ChargedNormalAttackMult float
---@param bNormalAttackCharging boolean
---@param ChargeRateMult float
---@param Mult float
---@param Alpha float
function AFS_PlayerCharacter:CalculateChargeMultiplier_Internal(WeaponChargeDuration, ChargedNormalAttackMult, bNormalAttackCharging, ChargeRateMult, Mult, Alpha) end

function AFS_PlayerCharacter:CleanUpResourceHits() end

---@param Source FGuid
function AFS_PlayerCharacter:UseResourceGenGUIDIfUnused(Source) end

function AFS_PlayerController:HideCursor() end

function AFS_PlayerController:IsCursorAwake() end

function AFS_PlayerController:IsCursorCaptured() end

function AFS_PlayerController:OnWindowFocused() end

function AFS_PlayerController:OnWindowUnfocused() end

function AFS_PlayerController:SetCursorShowableOnWake() end

function IFS_Destination:GetAltThumbnailRenderer() end

function IFS_Destination:GetLocationData() end

function IFS_Destination:GetThumbnailRenderer() end

function IFS_Destination:IsRenderer() end

---@param Actor AActor
---@param Mode FName
function IFS_Destination:ReceiveTeleport(Actor, Mode) end

---@param Renderer TScriptInterface<IFS_Destination>
function IFS_Destination:SetAltThumbnailRenderer(Renderer) end

---@param Renderer TScriptInterface<IFS_Destination>
function IFS_Destination:SetThumbnailRenderer(Renderer) end

function IFS_Destination:UpdateTeleportTransform() end

---@param RespawnTimer FTimerHandle
---@param SpawnerGUID FGuid
function IFS_SpawnerInterface:GetEnemySaveState(RespawnTimer, SpawnerGUID) end

function UActorUROManager:DisableURO() end

function UActorUROManager:EnableURO() end

function UActorUROManager:GetCurrentUROIndex() end

---@param WorldContextObject UObject
---@param TargetPos FVector
---@param StartPos FVector
---@param TraceChannel ETraceTypeQuery
---@param ActorsToIgnore TArray<AActor>
---@param bDrawDebug boolean
function UBlueprintUtils:AOELOSCheck(WorldContextObject, TargetPos, StartPos, TraceChannel, ActorsToIgnore, bDrawDebug) end

---@param Target UObject
function UBlueprintUtils:CancelAllCancellableLatentActions(Target) end

---@param Target UObject
function UBlueprintUtils:CancelAllLatentActions(Target) end

---@param Spawner AActor
---@param MaxSpawnDist float
function UBlueprintUtils:CheckSpawnerMaxDist(Spawner, MaxSpawnDist) end

---@param Spawner AActor
---@param MinSpawnDist float
---@param MaxSpawnDist float
---@param bHasLineOfSight boolean
---@param bInitialSpawn boolean
function UBlueprintUtils:CheckSpawnerVis(Spawner, MinSpawnDist, MaxSpawnDist, bHasLineOfSight, bInitialSpawn) end

---@param Textures TArray<UTexture2D>
---@param Duration float
function UBlueprintUtils:ForceMultipleTexturesStreamedForDuration(Textures, Duration) end

---@param Texture UTexture2D
---@param Duration float
function UBlueprintUtils:ForceTextureStreamedForDuration(Texture, Duration) end

---@param Parent UClass
function UBlueprintUtils:GetChildClasses(Parent) end

---@param Comp UNavLinkCustomComponent
function UBlueprintUtils:GetCustomLinkID(Comp) end

---@param Weapon UFS_Item
function UBlueprintUtils:GetDaggerStats(Weapon) end

function UBlueprintUtils:GetEngineGamma() end

function UBlueprintUtils:GetGameSaveRootFolder() end

---@param ActionName FName
function UBlueprintUtils:GetInputActionMapping(ActionName) end

---@param Actor AActor
function UBlueprintUtils:GetLevelNameFromActor(Actor) end

---@param OutputPins EPlatform
function UBlueprintUtils:GetPlatform(OutputPins) end

---@param Mesh UStaticMeshComponent
---@param Count int32
---@param PositionResults TArray<FVector>
---@param NormalResults TArray<FVector>
function UBlueprintUtils:GetRandomPointsOnStaticMesh(Mesh, Count, PositionResults, NormalResults) end

---@param AnimInstance UAnimInstance
function UBlueprintUtils:GetRootMotionMode(AnimInstance) end

---@param SlotIndex int32
---@param bForceDemoName boolean
---@param bBackup boolean
---@param bSuspend boolean
---@param SuspendIndex int32
function UBlueprintUtils:GetSaveSlotName(SlotIndex, bForceDemoName, bBackup, bSuspend, SuspendIndex) end

---@param Parent USceneComponent
---@param IncludeAllDescendants boolean
---@param Children TArray<USceneComponent>
function UBlueprintUtils:GetSelfAndChildrenComponents(Parent, IncludeAllDescendants, Children) end

---@param To FVector
---@param From FVector
function UBlueprintUtils:GetUnitDirection2D(To, From) end

---@param Weapon UFS_Item
function UBlueprintUtils:GetWeaponStats(Weapon) end

---@param CurrentTarget FVector
---@param bShouldLookAtPlayer boolean
---@param CurrentLookWeight float
---@param DeltaTime float
---@param OrientationTransform FTransform
---@param Mesh USkeletalMeshComponent
---@param HeadBone FName
---@param ActorToLookAt AActor
---@param NewLookWeightOut float
---@param NewLookPosOut FVector
---@param UnSmoothedLookTargetOut FVector
function UBlueprintUtils:HandleHeadLookTarget(CurrentTarget, bShouldLookAtPlayer, CurrentLookWeight, DeltaTime, OrientationTransform, Mesh, HeadBone, ActorToLookAt, NewLookWeightOut, NewLookPosOut, UnSmoothedLookTargetOut) end

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param InteractThroughDistance float
---@param Radius float
---@param InteractChannel ETraceTypeQuery
---@param VisibilityChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param SelectedTarget FHitResult
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UBlueprintUtils:InteractTrace(WorldContextObject, Start, End, InteractThroughDistance, Radius, InteractChannel, VisibilityChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, SelectedTarget, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param Actor AActor
---@param FacingPercent float
function UBlueprintUtils:IsCameraFacingActor(Actor, FacingPercent) end

function UBlueprintUtils:IsDemoBuild_FS() end

---@param Event FKeyEvent
function UBlueprintUtils:IsKeyEventRepeat(Event) end

---@param ActionName FName
---@param Key FKey
function UBlueprintUtils:IsKeyUsedByAction(ActionName, Key) end

---@param Item TSoftObjectPtr<UFS_Item>
function UBlueprintUtils:ItemReference(Item) end

---@param Comp USplineComponent
---@param Edited boolean
function UBlueprintUtils:MarkSplineEdited(Comp, Edited) end

---@param Comp UPrimitiveComponent
function UBlueprintUtils:ResetPhysicsBodies(Comp) end

---@param NewGamma float
function UBlueprintUtils:SetEngineGamma(NewGamma) end

---@param Component UActorComponent
---@param bRelevant boolean
function UBlueprintUtils:SetIsNavigationRelevant(Component, bRelevant) end

---@param Comp UNiagaraComponent
---@param bActive boolean
---@param bResetIfTrue boolean
function UBlueprintUtils:SetNiagaraActive(Comp, bActive, bResetIfTrue) end

---@param WorldContext UObject
---@param bTickWhenPaused boolean
function UBlueprintUtils:SetNiagaraTickWhenPaused(WorldContext, bTickWhenPaused) end

---@param Object UObject
function UBlueprintUtils:SetObjectDirty(Object) end

---@param Color FColor
---@param ComponentToSetColorOn UShapeComponent
function UBlueprintUtils:SetShapeColor(Color, ComponentToSetColorOn) end

---@param InstanceToStopOn UAnimInstance
---@param InBlendOutTime float
---@param SlotNodeName FName
function UBlueprintUtils:StopSlotAnimation(InstanceToStopOn, InBlendOutTime, SlotNodeName) end

---@param Target AActor
function UBlueprintUtils:StopTimelinesAndDelays(Target) end

---@param WorldContext UObject
---@param DeltaTime float
function UBlueprintUtils:TickAllNiagara(WorldContext, DeltaTime) end

---@param WorldContextObject UObject
---@param TargetPos FVector
---@param StartPos FVector
---@param AimDirection FRotator
---@param Size FVector
---@param TraceChannel ETraceTypeQuery
---@param ActorsToIgnore TArray<AActor>
---@param TraceRings int32
---@param TracesPerRing int32
---@param bDrawDebug boolean
function UBlueprintUtils:UltraMoveLOSCheck(WorldContextObject, TargetPos, StartPos, AimDirection, Size, TraceChannel, ActorsToIgnore, TraceRings, TracesPerRing, bDrawDebug) end

---@param CameraManager APlayerCameraManager
---@param DT float
function UBlueprintUtils:UpdateCameraManager(CameraManager, DT) end

---@param Weights TArray<float>
function UBlueprintUtils:WeightedRandomSmall(Weights) end

---@param ViewPoint FTransform
---@param TargetLoc FTransform
---@param bHasLOS boolean
---@param bPerceivedTarget boolean
---@param MaxRange float
function UEnemyAwarenessProfile:EvaluateCones(ViewPoint, TargetLoc, bHasLOS, bPerceivedTarget, MaxRange) end

---@param BaseRange float
function UEnemyAwarenessProfile:GetRealMaxRangeForProfile(BaseRange) end

function UEnemyLineOfSightComponent:UpdateLOSParams() end

function UFB_ActorComponent:ConstructionScript() end

function UFB_ImageDecorator:ClearOverrideBrushes() end

---@param Tag FName
---@param Brush FSlateBrush
---@param Offset FVector2D
function UFB_ImageDecorator:RegisterOverrideBrush(Tag, Brush, Offset) end

---@param MeshComp USkeletalMeshComponent
function UFS_AnimNotifyState_TimedNiagaraEffect:GetTemplateOverride(MeshComp) end

---@param NewTemplate UNiagaraSystem
function UFS_AnimNotifyState_TimedNiagaraEffect:SetTemplate(NewTemplate) end

---@param Volume float
---@param Pitch float
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UFS_AnimNotify_PlayMeleeSound:GetSoundConfiguration(Volume, Pitch, MeshComp, Animation) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UFS_AnimNotify_PlayNiagaraEffect:GetEffectOverride(MeshComp, Animation) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UFS_AnimNotify_PlayNiagaraEffect:GetTemplateOverride(MeshComp, Animation) end

---@param NewTemplate UNiagaraSystem
function UFS_AnimNotify_PlayNiagaraEffect:SetTemplate(NewTemplate) end

---@param ClassToKeepLoaded UClass
function UFS_AssetToolsSubsystem:KeepClassLoaded(ClassToKeepLoaded) end

---@param ObjectToKeepLoaded UObject
function UFS_AssetToolsSubsystem:KeepObjectLoaded(ObjectToKeepLoaded) end

---@param ClassToStopKeepingLoaded UClass
function UFS_AssetToolsSubsystem:StopKeepingClassLoaded(ClassToStopKeepingLoaded) end

---@param ObjectToStopKeepingLoaded UObject
function UFS_AssetToolsSubsystem:StopKeepingObjectLoaded(ObjectToStopKeepingLoaded) end

function UFS_ChallengeData:GetSortedChallenges() end

function UFS_ChallengeSystemComponent:ClearChallengeSave() end

---@param ID FName
function UFS_ChallengeSystemComponent:CompleteChallenge(ID) end

function UFS_ChallengeSystemComponent:GetTotalChallengesCompleted() end

---@param Item UFS_Item
---@param bAdded boolean
---@param bNewItem boolean
function UFS_ChallengeSystemComponent:OnInventoryChanged(Item, bAdded, bNewItem) end

function UFS_ChallengeSystemComponent:OnWorldStateChange() end

---@param ID FName
---@param NewValue int32
function UFS_ChallengeSystemComponent:SetChallengeStat(ID, NewValue) end

function UFS_ChallengeSystemComponent:StoreChallengeDataNow() end

function UFS_ChallengeSystemComponent:UpdateAllChallenges() end

---@param ID FName
function UFS_ChallengeSystemComponent:UpdateChallenge(ID) end

---@param WorldContextObject UObject
---@param ID FName
function UFS_ChallengeUtils:CompleteChallenge(WorldContextObject, ID) end

---@param WorldContextObject UObject
function UFS_ChallengeUtils:GetChallengeData(WorldContextObject) end

---@param WorldContextObject UObject
---@param ID FName
function UFS_ChallengeUtils:GetChallengeStat(WorldContextObject, ID) end

---@param WorldContextObject UObject
function UFS_ChallengeUtils:GetChallengeSystem(WorldContextObject) end

---@param WorldContextObject UObject
---@param ID FName
function UFS_ChallengeUtils:IsChallengeCompleted(WorldContextObject, ID) end

---@param WorldContextObject UObject
---@param ID FName
---@param NewValue int32
function UFS_ChallengeUtils:SetChallengeStat(WorldContextObject, ID, NewValue) end

---@param NewSlomo float
function UFS_CheatManagerBase:BPSlomo(NewSlomo) end

function UFS_ConfigurableStaticMeshComponent:BP_Registered() end

function UFS_DialogueAction:FinishAction() end

---@param DialogueToJumpTo UFS_DialogueData
---@param bSkipGreeting boolean
function UFS_DialogueAction:JumpToDialogue(DialogueToJumpTo, bSkipGreeting) end

---@param Context AActor
---@param Callback FRunActionCallback
---@param JumpCallback FRunActionJumpCallback
function UFS_DialogueAction:RunAction(Context, Callback, JumpCallback) end

---@param Context AActor
function UFS_DialogueAction:RunActionWithinContext(Context) end

function UFS_EnemyAction:CanExecuteAction() end

---@param Reason EFS_EnemyActionCancelReason
function UFS_EnemyAction:CancelAction(Reason) end

---@param Response EFS_EnemyActionResponse
function UFS_EnemyAction:FinishAction(Response) end

function UFS_EnemyAction:ForceEndAttackState() end

function UFS_EnemyAction:ForceStartAttackState() end

---@param Context AFS_EnemyCharacterBase
function UFS_EnemyAction:InitAction(Context) end

---@param Context AFS_EnemyCharacterBase
function UFS_EnemyAction:InitAction_BP(Context) end

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function UFS_EnemyAction:OnEnemyDied(bNoRewards, EnemyThatDied) end

---@param EnemyThatStaggered AFS_EnemyCharacterBase
function UFS_EnemyAction:OnEnemyStaggered(EnemyThatStaggered) end

---@param Callback FRunActionCallback
function UFS_EnemyAction:RunAction(Callback) end

function UFS_EnemyAction:RunAction_BP() end

---@param Impulse FVector
---@param HitLocation FVector
---@param IntensityPercent float
function UFS_EnemyAnimInstanceBase:HitImpulse(Impulse, HitLocation, IntensityPercent) end

function UFS_EnemyAnimInstanceBase:UpdateAimAngle() end

---@param ManagedEnemy AFS_EnemyCharacterBase
---@param Spawner AActor
---@param bBoss boolean
---@param bAllowBossDespawn boolean
---@param bEnemyPoisoned boolean
---@param PlayerDistanceDespawnCheck float
---@param SpawnerDistanceDespawnCheck float
function UFS_EnemyUtils:CheckHeartbeat(ManagedEnemy, Spawner, bBoss, bAllowBossDespawn, bEnemyPoisoned, PlayerDistanceDespawnCheck, SpawnerDistanceDespawnCheck) end

---@param Spawner AActor
---@param ManagedEnemy AFS_EnemyCharacterBase
---@param OutUpdateMode EFS_SpawnerUpdateMode
---@param bPlayerInActivationRange boolean
---@param bEnemyInTrapMode boolean
function UFS_EnemyUtils:DoSpawnerUpdate(Spawner, ManagedEnemy, OutUpdateMode, bPlayerInActivationRange, bEnemyInTrapMode) end

---@param MassagePoints TArray<FVector>
---@param TargetPosition FVector
---@param StartPosition FVector
function UFS_EnemyUtils:MassageIndirectAimDirection(MassagePoints, TargetPosition, StartPosition) end

---@param Actor AActor
---@param AlphaFogColor FLinearColor
---@param AlphaFogStartDist float
---@param AlphaFogFadeRange float
---@param BetaFogColor FLinearColor
---@param BetaFogStartDist float
---@param BetaFogFadeRange float
function UFS_FogFunctions:SetAllFogPropsOnActor(Actor, AlphaFogColor, AlphaFogStartDist, AlphaFogFadeRange, BetaFogColor, BetaFogStartDist, BetaFogFadeRange) end

---@param Comp UPrimitiveComponent
---@param AlphaFogColor FLinearColor
---@param AlphaFogStartDist float
---@param AlphaFogFadeRange float
---@param BetaFogColor FLinearColor
---@param BetaFogStartDist float
---@param BetaFogFadeRange float
---@param bIncludeChildren boolean
function UFS_FogFunctions:SetAllFogPropsOnPrimComp(Comp, AlphaFogColor, AlphaFogStartDist, AlphaFogFadeRange, BetaFogColor, BetaFogStartDist, BetaFogFadeRange, bIncludeChildren) end

---@param Comp UPrimitiveComponent
---@param Alpha UFS_FogData_Base
---@param Beta UFS_FogData_Base
---@param bIncludeChildren boolean
function UFS_FogFunctions:SetAllFogPropsOnPrimCompUsingDAs(Comp, Alpha, Beta, bIncludeChildren) end

---@param Actor AActor
---@param FogColor FLinearColor
---@param FogStartDist float
---@param FogFadeRange float
---@param bBetaFog boolean
function UFS_FogFunctions:SetFogPropsOnActor(Actor, FogColor, FogStartDist, FogFadeRange, bBetaFog) end

---@param Actor AActor
---@param Alpha UFS_FogData_Base
---@param Beta UFS_FogData_Base
function UFS_FogFunctions:SetFogPropsOnActorUsingDAs(Actor, Alpha, Beta) end

---@param Comp UPrimitiveComponent
---@param FogColor FLinearColor
---@param FogStartDist float
---@param FogFadeRange float
---@param bBetaFog boolean
---@param bIncludeChildren boolean
function UFS_FogFunctions:SetFogPropsOnPrimComp(Comp, FogColor, FogStartDist, FogFadeRange, bBetaFog, bIncludeChildren) end

---@param Comp UPrimitiveComponent
---@param DA UFS_FogData_Base
---@param bBetaFog boolean
---@param bIncludeChildren boolean
function UFS_FogFunctions:SetFogPropsOnPrimCompUsingDA(Comp, DA, bBetaFog, bIncludeChildren) end

---@param Actor AActor
---@param bVal boolean
---@param Bit int32
function UFS_FogFunctions:SetPrimitiveStencilValOnActor_BP(Actor, bVal, Bit) end

---@param Comp UPrimitiveComponent
---@param bVal boolean
---@param Bit int32
function UFS_FogFunctions:SetPrimitiveStencilVal_BP(Comp, bVal, Bit) end

function UFS_FogLightComponent:SyncProperties() end

function UFS_GameInstanceBase:CompletedMapPackageLoad() end

---@param ForceReload boolean
function UFS_GameInstanceBase:GetActiveBaseSave(ForceReload) end

function UFS_GameInstanceBase:InitSave() end

---@param Map FName
---@param MapPackage FString
function UFS_GameInstanceBase:LoadMapWithLoadingScreen(Map, MapPackage) end

---@param Index int32
---@param bBackup boolean
function UFS_GameInstanceBase:LoadSaveSynch(Index, bBackup) end

function UFS_GameInstanceBase:MapFinishedLoading() end

function UFS_GameInstanceBase:MapStartedLoading() end

---@param ItemToShow UFS_Item
---@param ItemAcquired UFS_Item
---@param Count int32
function UFS_GameInstanceBase:NotifyGotItem(ItemToShow, ItemAcquired, Count) end

---@param Item UFS_Item
function UFS_GameInstanceBase:ReadInventoryItemCount(Item) end

---@param Name FName
function UFS_GameInstanceBase:ReadNamedSaveData(Name) end

---@param Save UFS_SaveGame
function UFS_GameInstanceBase:SetActiveSave(Save) end

---@param Conditions TArray<FS_SaveDataCondition>
---@param GameInstanceContext UFS_GameInstanceBase
function UFS_GameScriptingUtils:EvaluateConditionSet(Conditions, GameInstanceContext) end

---@param Condition FS_SaveDataCondition
---@param GameInstanceContext UFS_GameInstanceBase
function UFS_GameScriptingUtils:EvaluateSingleCondition(Condition, GameInstanceContext) end

---@param WorldContexObject UObject
---@param Key FKey
function UFS_InputSubsystem:GetAnalogueValue(WorldContexObject, Key) end

---@param WorldContexObject UObject
---@param Key FKey
function UFS_InputSubsystem:IsKeyDown(WorldContexObject, Key) end

---@param Item TSoftObjectPtr<UFS_Item>
function UFS_Item:ConvertSoftItemRefToName(Item) end

---@param Tag FGameplayTag
function UFS_Item:HasItemTag(Tag) end

---@param Source UClass
function UFS_ItemDropSystem:GetDropSourceIDFromClass(Source) end

---@param Source UObject
function UFS_ItemDropSystem:GetDropSourceIDFromDataAsset(Source) end

---@param WorldContext UObject
---@param Source FName
---@param SourceDropIndex int32
---@param BaseChance float
---@param ChanceModifier float
---@param PityRate float
---@param PityRateModifier float
function UFS_ItemDropSystem:RollItemDrop(WorldContext, Source, SourceDropIndex, BaseChance, ChanceModifier, PityRate, PityRateModifier) end

---@param WorldContextObject UObject
function UFS_LocationData:GetAreaImage(WorldContextObject) end

---@param WorldContextObject UObject
function UFS_MusicAreaData:GetMusicTrack(WorldContextObject) end

function UFS_MusicAreaInstance:CacheSafeLocationData() end

---@param bIgnoreGrounded boolean
---@param bDoorCounter boolean
function UFS_MusicAreaInstance:DecrementCounter(bIgnoreGrounded, bDoorCounter) end

function UFS_MusicAreaInstance:GenerateSuspendData() end

function UFS_MusicAreaInstance:GetTotalCounters() end

---@param bIgnoreGrounded boolean
---@param bDoorCounter boolean
function UFS_MusicAreaInstance:IncrementCounter(bIgnoreGrounded, bDoorCounter) end

function UFS_MusicAreaInstance:ResetDoorCounters() end

---@param SuspendData FFS_MusicAreaInstance_SuspendData
function UFS_MusicAreaInstance:RestoreFromSuspendData(SuspendData) end

function UFS_MusicAreaInstance:RestoreSafeLocationData() end

---@param Cue USoundCue
function UFS_MusicTrackAssetData:GetMusicTrackDataFromCue(Cue) end

function UFS_PathFollowingComponent:GetPathTargetActor() end

function UFS_PathFollowingComponent:GetRemainingPathLength() end

function UFS_PathFollowingComponent:GetRemainingPathNodes() end

function UFS_PathFollowingComponent:IsFollowingTargetActor() end

function UFS_PathFollowingComponent:IsOnValidPath() end

---@param Object UObject
---@param PropertyName FName
---@param Out boolean
function UFS_PropertyHelpers:GetBoolProperty(Object, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param Out float
function UFS_PropertyHelpers:GetFloatProperty(Object, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param Out int32
function UFS_PropertyHelpers:GetIntProperty(Object, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue boolean
function UFS_PropertyHelpers:SetBoolProperty(Object, PropertyName, NewValue) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue float
function UFS_PropertyHelpers:SetFloatProperty(Object, PropertyName, NewValue) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue int32
function UFS_PropertyHelpers:SetIntProperty(Object, PropertyName, NewValue) end

---@param Item UFS_Item
function UFS_SaveGame:AddActiveItem(Item) end

---@param Item UFS_Item
---@param Count int32
function UFS_SaveGame:AddItemTags(Item, Count) end

function UFS_SaveGame:FullyRefreshInventoryTagCount() end

---@param Item UFS_Item
function UFS_SaveGame:GetInventoryCount(Item) end

---@param Tag FGameplayTag
function UFS_SaveGame:GetItemTagCountInInventory(Tag) end

---@param Item UFS_Item
function UFS_SaveGame:IsItemEquipped(Item) end

---@param Name FName
---@param Success boolean
function UFS_SaveGame:ReadNamedData(Name, Success) end

function UFS_SaveGame:RefreshEquipmentTagCount() end

---@param Item UFS_Item
function UFS_SaveGame:RemoveActiveItem(Item) end

---@param WorldContextObject UObject
function UFS_SaveGameUtils:ClearAllEnemySaveStates(WorldContextObject) end

---@param WorldContextObject UObject
---@param SpawnerGUID FGuid
function UFS_SaveGameUtils:ClearEnemySaveState(WorldContextObject, SpawnerGUID) end

---@param WorldContextObject UObject
function UFS_SaveGameUtils:GetActiveBaseSave(WorldContextObject) end

---@param WorldContextObject UObject
function UFS_SaveGameUtils:GetFSGameInstanceBase(WorldContextObject) end

---@param WorldContextObject UObject
---@param Item UFS_Item
function UFS_SaveGameUtils:GetInventoryItemCount(WorldContextObject, Item) end

---@param WorldContextObject UObject
---@param Item TSoftObjectPtr<UFS_Item>
function UFS_SaveGameUtils:GetInventoryItemCountSoft(WorldContextObject, Item) end

---@param WorldContextObject UObject
---@param Item UFS_Item
---@param Equipped boolean
function UFS_SaveGameUtils:GetItemEquipSlotID(WorldContextObject, Item, Equipped) end

---@param WorldContextObject UObject
---@param Tag FGameplayTag
function UFS_SaveGameUtils:GetItemsWithTagCount(WorldContextObject, Tag) end

---@param WorldContextObject UObject
---@param Name FName
---@param Exists boolean
function UFS_SaveGameUtils:GetNamedSaveData(WorldContextObject, Name, Exists) end

---@param WorldContextObject UObject
---@param Item UFS_Item
function UFS_SaveGameUtils:IsItemEquipped(WorldContextObject, Item) end

---@param WorldContextObject UObject
---@param Tag FGameplayTag
function UFS_SaveGameUtils:IsItemWithTagEquipped(WorldContextObject, Tag) end

---@param WorldContextObject UObject
---@param SpawnerGUID FGuid
function UFS_SaveGameUtils:RetrieveEnemySaveState(WorldContextObject, SpawnerGUID) end

---@param WorldContextObject UObject
---@param SpawnerGUID FGuid
---@param RespawnTime float
---@param HP float
function UFS_SaveGameUtils:StoreEnemySaveState(WorldContextObject, SpawnerGUID, RespawnTime, HP) end

function UFS_StatsContainer:GetDamageMultiplierStat() end

function UFS_StatsContainer:GetDefenseMultiplierStat() end

function UFS_StatsContainer:GetLightRadiusStat() end

function UFS_StatsContainer:GetMoveSpeedMultiplierStat() end

---@param Stat FName
function UFS_StatsContainer:GetSimpleSumStat(Stat) end

function UFS_StatsContainer:Refresh() end

---@param WeaponPose FFS_WeaponViewConfig
---@param BasePose FFS_WeaponViewConfig
---@param GlobalRightArmOffsetTransform FTransform
---@param LocalToMeshAdditiveBlend float
---@param JumpAnimStr float
---@param WalkAnimStr float
---@param IdleAnimStr float
---@param RHandRotationOffset FRotator
---@param RHandLocation FVector
---@param RClavicleOffset FVector
---@param RJointLoc FVector
---@param GlobalRightArmOffsetLoc FVector
---@param GlobalRightArmOffsetRot FRotator
function UFS_WeaponPoseUtil:CalculateFullWeaponPose(WeaponPose, BasePose, GlobalRightArmOffsetTransform, LocalToMeshAdditiveBlend, JumpAnimStr, WalkAnimStr, IdleAnimStr, RHandRotationOffset, RHandLocation, RClavicleOffset, RJointLoc, GlobalRightArmOffsetLoc, GlobalRightArmOffsetRot) end

---@param Point FVector
function UVolumeMesh:IsPointInsideMesh(Point) end
