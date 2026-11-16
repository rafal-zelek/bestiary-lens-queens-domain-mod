---@meta

---@class AAbilitySystemDebugHUD : AHUD
local AAbilitySystemDebugHUD = {}

---@class AAbilitySystemTestPawn : ADefaultPawn
---@field AbilitySystemComponent UAbilitySystemComponent
local AAbilitySystemTestPawn = {}

---@class AGameplayAbilityTargetActor : AActor
---@field ShouldProduceTargetDataOnServer boolean
---@field StartLocation FGameplayAbilityTargetingLocationInfo
---@field MasterPC APlayerController
---@field OwningAbility UGameplayAbility
---@field bDestroyOnConfirmation boolean
---@field SourceActor AActor
---@field ReticleParams FWorldReticleParameters
---@field ReticleClass TSubclassOf<AGameplayAbilityWorldReticle>
---@field Filter FGameplayTargetDataFilterHandle
---@field bDebug boolean
---@field GenericDelegateBoundASC UAbilitySystemComponent
local AGameplayAbilityTargetActor = {}

---@class AGameplayAbilityTargetActor_ActorPlacement : AGameplayAbilityTargetActor_GroundTrace
---@field PlacedActorClass UClass
---@field PlacedActorMaterial UMaterialInterface
local AGameplayAbilityTargetActor_ActorPlacement = {}

---@class AGameplayAbilityTargetActor_GroundTrace : AGameplayAbilityTargetActor_Trace
---@field CollisionRadius float
---@field CollisionHeight float
local AGameplayAbilityTargetActor_GroundTrace = {}

---@class AGameplayAbilityTargetActor_Radius : AGameplayAbilityTargetActor
---@field Radius float
local AGameplayAbilityTargetActor_Radius = {}

---@class AGameplayAbilityTargetActor_SingleLineTrace : AGameplayAbilityTargetActor_Trace
local AGameplayAbilityTargetActor_SingleLineTrace = {}

---@class AGameplayAbilityTargetActor_Trace : AGameplayAbilityTargetActor
---@field MaxRange float
---@field TraceProfile FCollisionProfileName
---@field bTraceAffectsAimPitch boolean
local AGameplayAbilityTargetActor_Trace = {}

---@class AGameplayAbilityWorldReticle : AActor
---@field Parameters FWorldReticleParameters
---@field bFaceOwnerFlat boolean
---@field bSnapToTargetedActor boolean
---@field bIsTargetValid boolean
---@field bIsTargetAnActor boolean
---@field MasterPC APlayerController
---@field TargetingActor AActor
local AGameplayAbilityWorldReticle = {}

---@class AGameplayAbilityWorldReticle_ActorVisualization : AGameplayAbilityWorldReticle
---@field CollisionComponent UCapsuleComponent
---@field VisualizationComponents TArray<UActorComponent>
local AGameplayAbilityWorldReticle_ActorVisualization = {}

---@class AGameplayCueNotify_Actor : AActor
---@field bAutoDestroyOnRemove boolean
---@field AutoDestroyDelay float
---@field WarnIfTimelineIsStillRunning boolean
---@field WarnIfLatentActionIsStillRunning boolean
---@field GameplayCueTag FGameplayTag
---@field GameplayCueName FName
---@field bAutoAttachToOwner boolean
---@field IsOverride boolean
---@field bUniqueInstancePerInstigator boolean
---@field bUniqueInstancePerSourceObject boolean
---@field bAllowMultipleOnActiveEvents boolean
---@field bAllowMultipleWhileActiveEvents boolean
---@field NumPreallocatedInstances int32
local AGameplayCueNotify_Actor = {}

---@class FAbilityEndedData
---@field AbilityThatEnded UGameplayAbility
---@field AbilitySpecHandle FGameplayAbilitySpecHandle
---@field bReplicateEndAbility boolean
---@field bWasCancelled boolean
local FAbilityEndedData = {}

---@class FAbilityTaskDebugMessage
---@field FromTask UGameplayTask
---@field Message FString
local FAbilityTaskDebugMessage = {}

---@class FAbilityTriggerData
---@field TriggerTag FGameplayTag
---@field TriggerSource EGameplayAbilityTriggerSource::Type
local FAbilityTriggerData = {}

---@class FActiveGameplayCue : FFastArraySerializerItem
---@field GameplayCueTag FGameplayTag
---@field PredictionKey FPredictionKey
---@field Parameters FGameplayCueParameters
---@field bPredictivelyRemoved boolean
local FActiveGameplayCue = {}

---@class FActiveGameplayCueContainer : FFastArraySerializer
---@field GameplayCues TArray<FActiveGameplayCue>
---@field Owner UAbilitySystemComponent
local FActiveGameplayCueContainer = {}

---@class FActiveGameplayEffect : FFastArraySerializerItem
---@field Spec FGameplayEffectSpec
---@field PredictionKey FPredictionKey
---@field StartServerWorldTime float
---@field CachedStartServerWorldTime float
---@field StartWorldTime float
---@field bIsInhibited boolean
local FActiveGameplayEffect = {}

---@class FActiveGameplayEffectHandle
---@field Handle int32
---@field bPassedFiltersAndWasExecuted boolean
local FActiveGameplayEffectHandle = {}

---@class FActiveGameplayEffectQuery
local FActiveGameplayEffectQuery = {}

---@class FActiveGameplayEffectsContainer : FFastArraySerializer
---@field GameplayEffects_Internal TArray<FActiveGameplayEffect>
---@field ApplicationImmunityQueryEffects TArray<UGameplayEffect>
local FActiveGameplayEffectsContainer = {}

---@class FAttributeBasedFloat
---@field Coefficient FScalableFloat
---@field PreMultiplyAdditiveValue FScalableFloat
---@field PostMultiplyAdditiveValue FScalableFloat
---@field BackingAttribute FGameplayEffectAttributeCaptureDefinition
---@field AttributeCurve FCurveTableRowHandle
---@field AttributeCalculationType EAttributeBasedFloatCalculationType
---@field FinalChannel EGameplayModEvaluationChannel
---@field SourceTagFilter FGameplayTagContainer
---@field TargetTagFilter FGameplayTagContainer
local FAttributeBasedFloat = {}

---@class FAttributeDefaults
---@field Attributes TSubclassOf<UAttributeSet>
---@field DefaultStartingTable UDataTable
local FAttributeDefaults = {}

---@class FAttributeMetaData : FTableRowBase
---@field BaseValue float
---@field MinValue float
---@field MaxValue float
---@field DerivedAttributeInfo FString
---@field bCanStack boolean
local FAttributeMetaData = {}

---@class FConditionalGameplayEffect
---@field EffectClass TSubclassOf<UGameplayEffect>
---@field RequiredSourceTags FGameplayTagContainer
local FConditionalGameplayEffect = {}

---@class FCustomCalculationBasedFloat
---@field CalculationClassMagnitude TSubclassOf<UGameplayModMagnitudeCalculation>
---@field Coefficient FScalableFloat
---@field PreMultiplyAdditiveValue FScalableFloat
---@field PostMultiplyAdditiveValue FScalableFloat
---@field FinalLookupCurve FCurveTableRowHandle
local FCustomCalculationBasedFloat = {}

---@class FGameplayAbilityActivationInfo
---@field ActivationMode EGameplayAbilityActivationMode::Type
---@field bCanBeEndedByOtherInstance boolean
---@field PredictionKeyWhenActivated FPredictionKey
local FGameplayAbilityActivationInfo = {}

---@class FGameplayAbilityActorInfo
---@field OwnerActor TWeakObjectPtr<AActor>
---@field AvatarActor TWeakObjectPtr<AActor>
---@field PlayerController TWeakObjectPtr<APlayerController>
---@field AbilitySystemComponent TWeakObjectPtr<UAbilitySystemComponent>
---@field SkeletalMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field AnimInstance TWeakObjectPtr<UAnimInstance>
---@field MovementComponent TWeakObjectPtr<UMovementComponent>
---@field AffectedAnimInstanceTag FName
local FGameplayAbilityActorInfo = {}

---@class FGameplayAbilityBindInfo
---@field Command EGameplayAbilityInputBinds::Type
---@field GameplayAbilityClass TSubclassOf<UGameplayAbility>
local FGameplayAbilityBindInfo = {}

---@class FGameplayAbilityLocalAnimMontage
---@field AnimMontage UAnimMontage
---@field PlayBit boolean
---@field PredictionKey FPredictionKey
---@field AnimatingAbility UGameplayAbility
local FGameplayAbilityLocalAnimMontage = {}

---@class FGameplayAbilityRepAnimMontage
---@field AnimMontage UAnimMontage
---@field PlayRate float
---@field Position float
---@field BlendTime float
---@field NextSectionID uint8
---@field bRepPosition boolean
---@field IsStopped boolean
---@field ForcePlayBit boolean
---@field SkipPositionCorrection boolean
---@field bSkipPlayRate boolean
---@field PredictionKey FPredictionKey
---@field SectionIdToPlay uint8
local FGameplayAbilityRepAnimMontage = {}

---@class FGameplayAbilitySpec : FFastArraySerializerItem
---@field Handle FGameplayAbilitySpecHandle
---@field Ability UGameplayAbility
---@field Level int32
---@field InputID int32
---@field SourceObject UObject
---@field ActiveCount uint8
---@field InputPressed boolean
---@field RemoveAfterActivation boolean
---@field PendingRemove boolean
---@field bActivateOnce boolean
---@field ActivationInfo FGameplayAbilityActivationInfo
---@field DynamicAbilityTags FGameplayTagContainer
---@field NonReplicatedInstances TArray<UGameplayAbility>
---@field ReplicatedInstances TArray<UGameplayAbility>
---@field GameplayEffectHandle FActiveGameplayEffectHandle
local FGameplayAbilitySpec = {}

---@class FGameplayAbilitySpecContainer : FFastArraySerializer
---@field Items TArray<FGameplayAbilitySpec>
---@field Owner UAbilitySystemComponent
local FGameplayAbilitySpecContainer = {}

---@class FGameplayAbilitySpecDef
---@field Ability TSubclassOf<UGameplayAbility>
---@field LevelScalableFloat FScalableFloat
---@field InputID int32
---@field RemovalPolicy EGameplayEffectGrantedAbilityRemovePolicy
---@field SourceObject UObject
---@field AssignedHandle FGameplayAbilitySpecHandle
local FGameplayAbilitySpecDef = {}

---@class FGameplayAbilitySpecHandle
---@field Handle int32
local FGameplayAbilitySpecHandle = {}

---@class FGameplayAbilitySpecHandleAndPredictionKey
---@field AbilityHandle FGameplayAbilitySpecHandle
---@field PredictionKeyAtCreation int32
local FGameplayAbilitySpecHandleAndPredictionKey = {}

---@class FGameplayAbilityTargetData
local FGameplayAbilityTargetData = {}

---@class FGameplayAbilityTargetDataHandle
local FGameplayAbilityTargetDataHandle = {}

---@class FGameplayAbilityTargetData_ActorArray : FGameplayAbilityTargetData
---@field SourceLocation FGameplayAbilityTargetingLocationInfo
---@field TargetActorArray TArray<TWeakObjectPtr<AActor>>
local FGameplayAbilityTargetData_ActorArray = {}

---@class FGameplayAbilityTargetData_LocationInfo : FGameplayAbilityTargetData
---@field SourceLocation FGameplayAbilityTargetingLocationInfo
---@field TargetLocation FGameplayAbilityTargetingLocationInfo
local FGameplayAbilityTargetData_LocationInfo = {}

---@class FGameplayAbilityTargetData_SingleTargetHit : FGameplayAbilityTargetData
---@field HitResult FHitResult
---@field bHitReplaced boolean
local FGameplayAbilityTargetData_SingleTargetHit = {}

---@class FGameplayAbilityTargetingLocationInfo
---@field LocationType EGameplayAbilityTargetingLocationType::Type
---@field LiteralTransform FTransform
---@field SourceActor AActor
---@field SourceComponent UMeshComponent
---@field SourceAbility UGameplayAbility
---@field SourceSocketName FName
local FGameplayAbilityTargetingLocationInfo = {}

---@class FGameplayAttribute
---@field AttributeName FString
---@field Attribute TFieldPath<FProperty>
---@field AttributeOwner UStruct
local FGameplayAttribute = {}

---@class FGameplayAttributeData
---@field BaseValue float
---@field CurrentValue float
local FGameplayAttributeData = {}

---@class FGameplayCueNotifyData
---@field GameplayCueTag FGameplayTag
---@field GameplayCueNotifyObj FSoftObjectPath
---@field LoadedGameplayCueClass UClass
local FGameplayCueNotifyData = {}

---@class FGameplayCueObjectLibrary
---@field Paths TArray<FString>
---@field ActorObjectLibrary UObjectLibrary
---@field StaticObjectLibrary UObjectLibrary
---@field CueSet UGameplayCueSet
---@field bShouldSyncScan boolean
---@field bShouldAsyncLoad boolean
---@field bShouldSyncLoad boolean
---@field bHasBeenInitialized boolean
local FGameplayCueObjectLibrary = {}

---@class FGameplayCueParameters
---@field NormalizedMagnitude float
---@field RawMagnitude float
---@field EffectContext FGameplayEffectContextHandle
---@field MatchedTagName FGameplayTag
---@field OriginalTag FGameplayTag
---@field AggregatedSourceTags FGameplayTagContainer
---@field AggregatedTargetTags FGameplayTagContainer
---@field Location FVector_NetQuantize10
---@field Normal FVector_NetQuantizeNormal
---@field Instigator TWeakObjectPtr<AActor>
---@field EffectCauser TWeakObjectPtr<AActor>
---@field SourceObject TWeakObjectPtr<UObject>
---@field PhysicalMaterial TWeakObjectPtr<UPhysicalMaterial>
---@field GameplayEffectLevel int32
---@field AbilityLevel int32
---@field TargetAttachComponent TWeakObjectPtr<USceneComponent>
---@field bReplicateLocationWhenUsingMinimalRepProxy boolean
local FGameplayCueParameters = {}

---@class FGameplayCuePendingExecute
---@field PredictionKey FPredictionKey
---@field PayloadType EGameplayCuePayloadType
---@field OwningComponent UAbilitySystemComponent
---@field FromSpec FGameplayEffectSpecForRPC
---@field CueParameters FGameplayCueParameters
local FGameplayCuePendingExecute = {}

---@class FGameplayCueTag
---@field GameplayCueTag FGameplayTag
local FGameplayCueTag = {}

---@class FGameplayCueTranslationLink
---@field RulesCDO UGameplayCueTranslator
local FGameplayCueTranslationLink = {}

---@class FGameplayCueTranslationManager
---@field TranslationLUT TArray<FGameplayCueTranslatorNode>
---@field TranslationNameToIndexMap TMap<FName, FGameplayCueTranslatorNodeIndex>
---@field TagManager UGameplayTagsManager
local FGameplayCueTranslationManager = {}

---@class FGameplayCueTranslatorNode
---@field Links TArray<FGameplayCueTranslationLink>
---@field CachedIndex FGameplayCueTranslatorNodeIndex
---@field CachedGameplayTag FGameplayTag
---@field CachedGameplayTagName FName
local FGameplayCueTranslatorNode = {}

---@class FGameplayCueTranslatorNodeIndex
---@field Index int32
local FGameplayCueTranslatorNodeIndex = {}

---@class FGameplayEffectAttributeCaptureDefinition
---@field AttributeToCapture FGameplayAttribute
---@field AttributeSource EGameplayEffectAttributeCaptureSource
---@field bSnapshot boolean
local FGameplayEffectAttributeCaptureDefinition = {}

---@class FGameplayEffectAttributeCaptureSpec
---@field BackingDefinition FGameplayEffectAttributeCaptureDefinition
local FGameplayEffectAttributeCaptureSpec = {}

---@class FGameplayEffectAttributeCaptureSpecContainer
---@field SourceAttributes TArray<FGameplayEffectAttributeCaptureSpec>
---@field TargetAttributes TArray<FGameplayEffectAttributeCaptureSpec>
---@field bHasNonSnapshottedAttributes boolean
local FGameplayEffectAttributeCaptureSpecContainer = {}

---@class FGameplayEffectContext
---@field Instigator TWeakObjectPtr<AActor>
---@field EffectCauser TWeakObjectPtr<AActor>
---@field AbilityCDO TWeakObjectPtr<UGameplayAbility>
---@field AbilityInstanceNotReplicated TWeakObjectPtr<UGameplayAbility>
---@field AbilityLevel int32
---@field SourceObject TWeakObjectPtr<UObject>
---@field InstigatorAbilitySystemComponent TWeakObjectPtr<UAbilitySystemComponent>
---@field Actors TArray<TWeakObjectPtr<AActor>>
---@field WorldOrigin FVector
---@field bHasWorldOrigin boolean
---@field bReplicateSourceObject boolean
local FGameplayEffectContext = {}

---@class FGameplayEffectContextHandle
local FGameplayEffectContextHandle = {}

---@class FGameplayEffectCue
---@field MagnitudeAttribute FGameplayAttribute
---@field MinLevel float
---@field MaxLevel float
---@field GameplayCueTags FGameplayTagContainer
local FGameplayEffectCue = {}

---@class FGameplayEffectCustomExecutionOutput
---@field OutputModifiers TArray<FGameplayModifierEvaluatedData>
---@field bTriggerConditionalGameplayEffects boolean
---@field bHandledStackCountManually boolean
---@field bHandledGameplayCuesManually boolean
local FGameplayEffectCustomExecutionOutput = {}

---@class FGameplayEffectCustomExecutionParameters
local FGameplayEffectCustomExecutionParameters = {}

---@class FGameplayEffectExecutionDefinition
---@field CalculationClass TSubclassOf<UGameplayEffectExecutionCalculation>
---@field PassedInTags FGameplayTagContainer
---@field CalculationModifiers TArray<FGameplayEffectExecutionScopedModifierInfo>
---@field ConditionalGameplayEffectClasses TArray<TSubclassOf<UGameplayEffect>>
---@field ConditionalGameplayEffects TArray<FConditionalGameplayEffect>
local FGameplayEffectExecutionDefinition = {}

---@class FGameplayEffectExecutionScopedModifierInfo
---@field CapturedAttribute FGameplayEffectAttributeCaptureDefinition
---@field TransientAggregatorIdentifier FGameplayTag
---@field AggregatorType EGameplayEffectScopedModifierAggregatorType
---@field ModifierOp EGameplayModOp::Type
---@field ModifierMagnitude FGameplayEffectModifierMagnitude
---@field EvaluationChannelSettings FGameplayModEvaluationChannelSettings
---@field SourceTags FGameplayTagRequirements
---@field TargetTags FGameplayTagRequirements
local FGameplayEffectExecutionScopedModifierInfo = {}

---@class FGameplayEffectModifiedAttribute
---@field Attribute FGameplayAttribute
---@field TotalMagnitude float
local FGameplayEffectModifiedAttribute = {}

---@class FGameplayEffectModifierMagnitude
---@field MagnitudeCalculationType EGameplayEffectMagnitudeCalculation
---@field ScalableFloatMagnitude FScalableFloat
---@field AttributeBasedMagnitude FAttributeBasedFloat
---@field CustomMagnitude FCustomCalculationBasedFloat
---@field SetByCallerMagnitude FSetByCallerFloat
local FGameplayEffectModifierMagnitude = {}

---@class FGameplayEffectQuery
---@field CustomMatchDelegate_BP FGameplayEffectQueryCustomMatchDelegate_BP
---@field OwningTagQuery FGameplayTagQuery
---@field EffectTagQuery FGameplayTagQuery
---@field SourceTagQuery FGameplayTagQuery
---@field ModifyingAttribute FGameplayAttribute
---@field EffectSource UObject
---@field EffectDefinition TSubclassOf<UGameplayEffect>
local FGameplayEffectQuery = {}

---@class FGameplayEffectRemovalInfo
---@field bPrematureRemoval boolean
---@field StackCount int32
---@field EffectContext FGameplayEffectContextHandle
local FGameplayEffectRemovalInfo = {}

---@class FGameplayEffectSpec
---@field Def UGameplayEffect
---@field ModifiedAttributes TArray<FGameplayEffectModifiedAttribute>
---@field CapturedRelevantAttributes FGameplayEffectAttributeCaptureSpecContainer
---@field Duration float
---@field Period float
---@field ChanceToApplyToTarget float
---@field CapturedSourceTags FTagContainerAggregator
---@field CapturedTargetTags FTagContainerAggregator
---@field DynamicGrantedTags FGameplayTagContainer
---@field DynamicAssetTags FGameplayTagContainer
---@field Modifiers TArray<FModifierSpec>
---@field StackCount int32
---@field bCompletedSourceAttributeCapture boolean
---@field bCompletedTargetAttributeCapture boolean
---@field bDurationLocked boolean
---@field GrantedAbilitySpecs TArray<FGameplayAbilitySpecDef>
---@field EffectContext FGameplayEffectContextHandle
---@field Level float
local FGameplayEffectSpec = {}

---@class FGameplayEffectSpecForRPC
---@field Def UGameplayEffect
---@field ModifiedAttributes TArray<FGameplayEffectModifiedAttribute>
---@field EffectContext FGameplayEffectContextHandle
---@field AggregatedSourceTags FGameplayTagContainer
---@field AggregatedTargetTags FGameplayTagContainer
---@field Level float
---@field AbilityLevel float
local FGameplayEffectSpecForRPC = {}

---@class FGameplayEffectSpecHandle
local FGameplayEffectSpecHandle = {}

---@class FGameplayEventData
---@field EventTag FGameplayTag
---@field Instigator AActor
---@field Target AActor
---@field OptionalObject UObject
---@field OptionalObject2 UObject
---@field ContextHandle FGameplayEffectContextHandle
---@field InstigatorTags FGameplayTagContainer
---@field TargetTags FGameplayTagContainer
---@field EventMagnitude float
---@field TargetData FGameplayAbilityTargetDataHandle
local FGameplayEventData = {}

---@class FGameplayModEvaluationChannelSettings
---@field Channel EGameplayModEvaluationChannel
local FGameplayModEvaluationChannelSettings = {}

---@class FGameplayModifierEvaluatedData
---@field Attribute FGameplayAttribute
---@field ModifierOp EGameplayModOp::Type
---@field Magnitude float
---@field Handle FActiveGameplayEffectHandle
---@field IsValid boolean
local FGameplayModifierEvaluatedData = {}

---@class FGameplayModifierInfo
---@field Attribute FGameplayAttribute
---@field ModifierOp EGameplayModOp::Type
---@field Magnitude FScalableFloat
---@field ModifierMagnitude FGameplayEffectModifierMagnitude
---@field EvaluationChannelSettings FGameplayModEvaluationChannelSettings
---@field SourceTags FGameplayTagRequirements
---@field TargetTags FGameplayTagRequirements
local FGameplayModifierInfo = {}

---@class FGameplayTagBlueprintPropertyMap
---@field PropertyMappings TArray<FGameplayTagBlueprintPropertyMapping>
local FGameplayTagBlueprintPropertyMap = {}

---@class FGameplayTagBlueprintPropertyMapping
---@field TagToMap FGameplayTag
---@field PropertyToEdit TFieldPath<FProperty>
---@field PropertyName FName
---@field PropertyGuid FGuid
local FGameplayTagBlueprintPropertyMapping = {}

---@class FGameplayTagReponsePair
---@field Tag FGameplayTag
---@field ResponseGameplayEffect TSubclassOf<UGameplayEffect>
---@field ResponseGameplayEffects TArray<TSubclassOf<UGameplayEffect>>
---@field SoftCountCap int32
local FGameplayTagReponsePair = {}

---@class FGameplayTagRequirements
---@field RequireTags FGameplayTagContainer
---@field IgnoreTags FGameplayTagContainer
local FGameplayTagRequirements = {}

---@class FGameplayTagResponseTableEntry
---@field Positive FGameplayTagReponsePair
---@field Negative FGameplayTagReponsePair
local FGameplayTagResponseTableEntry = {}

---@class FGameplayTargetDataFilter
---@field SelfActor AActor
---@field RequiredActorClass TSubclassOf<AActor>
---@field SelfFilter ETargetDataFilterSelf::Type
---@field bReverseFilter boolean
local FGameplayTargetDataFilter = {}

---@class FGameplayTargetDataFilterHandle
local FGameplayTargetDataFilterHandle = {}

---@class FInheritedTagContainer
---@field CombinedTags FGameplayTagContainer
---@field Added FGameplayTagContainer
---@field Removed FGameplayTagContainer
local FInheritedTagContainer = {}

---@class FMinimalGameplayCueReplicationProxy
---@field Owner UAbilitySystemComponent
local FMinimalGameplayCueReplicationProxy = {}

---@class FMinimalReplicationTagCountMap
---@field Owner UAbilitySystemComponent
local FMinimalReplicationTagCountMap = {}

---@class FModifierSpec
---@field EvaluatedMagnitude float
local FModifierSpec = {}

---@class FMovieSceneGameplayCueChannel : FMovieSceneChannel
---@field KeyTimes TArray<FFrameNumber>
---@field KeyValues TArray<FMovieSceneGameplayCueKey>
local FMovieSceneGameplayCueChannel = {}

---@class FMovieSceneGameplayCueKey
---@field Cue FGameplayCueTag
---@field Location FVector
---@field Normal FVector
---@field AttachSocketName FName
---@field NormalizedMagnitude float
---@field Instigator FMovieSceneObjectBindingID
---@field EffectCauser FMovieSceneObjectBindingID
---@field PhysicalMaterial UPhysicalMaterial
---@field GameplayEffectLevel int32
---@field AbilityLevel int32
---@field bAttachToBinding boolean
local FMovieSceneGameplayCueKey = {}

---@class FNetSerializeScriptStructCache
---@field ScriptStructs TArray<UScriptStruct>
local FNetSerializeScriptStructCache = {}

---@class FPreallocationInfo
---@field ClassesNeedingPreallocation TArray<TSubclassOf<AGameplayCueNotify_Actor>>
local FPreallocationInfo = {}

---@class FPredictionKey
---@field PredictiveConnection UPackageMap
---@field Current int16
---@field Base int16
---@field bIsStale boolean
---@field bIsServerInitiated boolean
local FPredictionKey = {}

---@class FReplicatedPredictionKeyItem : FFastArraySerializerItem
---@field PredictionKey FPredictionKey
local FReplicatedPredictionKeyItem = {}

---@class FReplicatedPredictionKeyMap : FFastArraySerializer
---@field PredictionKeys TArray<FReplicatedPredictionKeyItem>
local FReplicatedPredictionKeyMap = {}

---@class FScalableFloat
---@field Value float
---@field Curve FCurveTableRowHandle
---@field RegistryType FDataRegistryType
local FScalableFloat = {}

---@class FServerAbilityRPCBatch
---@field AbilitySpecHandle FGameplayAbilitySpecHandle
---@field PredictionKey FPredictionKey
---@field TargetData FGameplayAbilityTargetDataHandle
---@field InputPressed boolean
---@field Ended boolean
---@field Started boolean
local FServerAbilityRPCBatch = {}

---@class FSetByCallerFloat
---@field DataName FName
---@field DataTag FGameplayTag
local FSetByCallerFloat = {}

---@class FTagContainerAggregator
---@field CapturedActorTags FGameplayTagContainer
---@field CapturedSpecTags FGameplayTagContainer
---@field ScopedTags FGameplayTagContainer
local FTagContainerAggregator = {}

---@class FWorldReticleParameters
---@field AOEScale FVector
local FWorldReticleParameters = {}

---@class IAbilitySystemInterface : IInterface
local IAbilitySystemInterface = {}

---@class IAbilitySystemReplicationProxyInterface : IInterface
local IAbilitySystemReplicationProxyInterface = {}

---@class IGameplayCueInterface : IInterface
local IGameplayCueInterface = {}

---@class ITickableAttributeSetInterface : IInterface
local ITickableAttributeSetInterface = {}

---@class UAbilityAsync : UBlueprintAsyncActionBase
local UAbilityAsync = {}

---@class UAbilityAsync_WaitGameplayEffectApplied : UAbilityAsync
---@field OnApplied FAbilityAsync_WaitGameplayEffectAppliedOnApplied
local UAbilityAsync_WaitGameplayEffectApplied = {}

---@class UAbilityAsync_WaitGameplayEvent : UAbilityAsync
---@field EventReceived FAbilityAsync_WaitGameplayEventEventReceived
local UAbilityAsync_WaitGameplayEvent = {}

---@class UAbilityAsync_WaitGameplayTag : UAbilityAsync
local UAbilityAsync_WaitGameplayTag = {}

---@class UAbilityAsync_WaitGameplayTagAdded : UAbilityAsync_WaitGameplayTag
---@field Added FAbilityAsync_WaitGameplayTagAddedAdded
local UAbilityAsync_WaitGameplayTagAdded = {}

---@class UAbilityAsync_WaitGameplayTagRemoved : UAbilityAsync_WaitGameplayTag
---@field Removed FAbilityAsync_WaitGameplayTagRemovedRemoved
local UAbilityAsync_WaitGameplayTagRemoved = {}

---@class UAbilitySystemBlueprintLibrary : UBlueprintFunctionLibrary
local UAbilitySystemBlueprintLibrary = {}

---@class UAbilitySystemComponent : UGameplayTasksComponent
---@field DefaultStartingData TArray<FAttributeDefaults>
---@field SpawnedAttributes TArray<UAttributeSet>
---@field AffectedAnimInstanceTag FName
---@field OutgoingDuration float
---@field IncomingDuration float
---@field ClientDebugStrings TArray<FString>
---@field ServerDebugStrings TArray<FString>
---@field UserAbilityActivationInhibited boolean
---@field ReplicationProxyEnabled boolean
---@field bSuppressGrantAbility boolean
---@field bSuppressGameplayCues boolean
---@field SpawnedTargetActors TArray<AGameplayAbilityTargetActor>
---@field OwnerActor AActor
---@field AvatarActor AActor
---@field ActivatableAbilities FGameplayAbilitySpecContainer
---@field AllReplicatedInstancedAbilities TArray<UGameplayAbility>
---@field RepAnimMontageInfo FGameplayAbilityRepAnimMontage
---@field bCachedIsNetSimulated boolean
---@field bPendingMontageRep boolean
---@field LocalAnimMontageInfo FGameplayAbilityLocalAnimMontage
---@field ActiveGameplayEffects FActiveGameplayEffectsContainer
---@field ActiveGameplayCues FActiveGameplayCueContainer
---@field MinimalReplicationGameplayCues FActiveGameplayCueContainer
---@field BlockedAbilityBindings TArray<uint8>
---@field MinimalReplicationTags FMinimalReplicationTagCountMap
---@field ReplicatedPredictionKeyMap FReplicatedPredictionKeyMap
local UAbilitySystemComponent = {}

---@class UAbilitySystemGlobals : UObject
---@field AbilitySystemGlobalsClassName FSoftClassPath
---@field ActivateFailIsDeadTag FGameplayTag
---@field ActivateFailIsDeadName FName
---@field ActivateFailCooldownTag FGameplayTag
---@field ActivateFailCooldownName FName
---@field ActivateFailCostTag FGameplayTag
---@field ActivateFailCostName FName
---@field ActivateFailTagsBlockedTag FGameplayTag
---@field ActivateFailTagsBlockedName FName
---@field ActivateFailTagsMissingTag FGameplayTag
---@field ActivateFailTagsMissingName FName
---@field ActivateFailNetworkingTag FGameplayTag
---@field ActivateFailNetworkingName FName
---@field MinimalReplicationTagCountBits int32
---@field TargetDataStructCache FNetSerializeScriptStructCache
---@field bAllowGameplayModEvaluationChannels boolean
---@field DefaultGameplayModEvaluationChannel EGameplayModEvaluationChannel
---@field GameplayModEvaluationChannelAliases FName
---@field GlobalCurveTableName FSoftObjectPath
---@field GlobalCurveTable UCurveTable
---@field GlobalAttributeMetaDataTableName FSoftObjectPath
---@field GlobalAttributeMetaDataTable UDataTable
---@field GlobalAttributeSetDefaultsTableName FSoftObjectPath
---@field GlobalAttributeSetDefaultsTableNames TArray<FSoftObjectPath>
---@field GlobalAttributeDefaultsTables TArray<UCurveTable>
---@field GlobalGameplayCueManagerClass FSoftObjectPath
---@field GlobalGameplayCueManagerName FSoftObjectPath
---@field GameplayCueNotifyPaths TArray<FString>
---@field GameplayTagResponseTableName FSoftObjectPath
---@field GameplayTagResponseTable UGameplayTagReponseTable
---@field PredictTargetGameplayEffects boolean
---@field GlobalGameplayCueManager UGameplayCueManager
local UAbilitySystemGlobals = {}

---@class UAbilitySystemTestAttributeSet : UAttributeSet
---@field MaxHealth float
---@field Health float
---@field Mana float
---@field MaxMana float
---@field Damage float
---@field SpellDamage float
---@field PhysicalDamage float
---@field CritChance float
---@field CritMultiplier float
---@field ArmorDamageReduction float
---@field DodgeChance float
---@field LifeSteal float
---@field Strength float
---@field StackingAttribute1 float
---@field StackingAttribute2 float
---@field NoStackAttribute float
local UAbilitySystemTestAttributeSet = {}

---@class UAbilityTask : UGameplayTask
---@field Ability UGameplayAbility
---@field AbilitySystemComponent UAbilitySystemComponent
local UAbilityTask = {}

---@class UAbilityTask_ApplyRootMotionConstantForce : UAbilityTask_ApplyRootMotion_Base
---@field OnFinish FAbilityTask_ApplyRootMotionConstantForceOnFinish
---@field WorldDirection FVector
---@field Strength float
---@field Duration float
---@field bIsAdditive boolean
---@field StrengthOverTime UCurveFloat
---@field bEnableGravity boolean
local UAbilityTask_ApplyRootMotionConstantForce = {}

---@class UAbilityTask_ApplyRootMotionJumpForce : UAbilityTask_ApplyRootMotion_Base
---@field OnFinish FAbilityTask_ApplyRootMotionJumpForceOnFinish
---@field OnLanded FAbilityTask_ApplyRootMotionJumpForceOnLanded
---@field Rotation FRotator
---@field Distance float
---@field Height float
---@field Duration float
---@field MinimumLandedTriggerTime float
---@field bFinishOnLanded boolean
---@field PathOffsetCurve UCurveVector
---@field TimeMappingCurve UCurveFloat
local UAbilityTask_ApplyRootMotionJumpForce = {}

---@class UAbilityTask_ApplyRootMotionMoveToActorForce : UAbilityTask_ApplyRootMotion_Base
---@field OnFinished FAbilityTask_ApplyRootMotionMoveToActorForceOnFinished
---@field StartLocation FVector
---@field TargetLocation FVector
---@field TargetActor AActor
---@field TargetLocationOffset FVector
---@field OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@field Duration float
---@field bDisableDestinationReachedInterrupt boolean
---@field bSetNewMovementMode boolean
---@field NewMovementMode EMovementMode
---@field bRestrictSpeedToExpected boolean
---@field PathOffsetCurve UCurveVector
---@field TimeMappingCurve UCurveFloat
---@field TargetLerpSpeedHorizontalCurve UCurveFloat
---@field TargetLerpSpeedVerticalCurve UCurveFloat
local UAbilityTask_ApplyRootMotionMoveToActorForce = {}

---@class UAbilityTask_ApplyRootMotionMoveToForce : UAbilityTask_ApplyRootMotion_Base
---@field OnTimedOut FAbilityTask_ApplyRootMotionMoveToForceOnTimedOut
---@field OnTimedOutAndDestinationReached FAbilityTask_ApplyRootMotionMoveToForceOnTimedOutAndDestinationReached
---@field StartLocation FVector
---@field TargetLocation FVector
---@field Duration float
---@field bSetNewMovementMode boolean
---@field NewMovementMode EMovementMode
---@field bRestrictSpeedToExpected boolean
---@field PathOffsetCurve UCurveVector
local UAbilityTask_ApplyRootMotionMoveToForce = {}

---@class UAbilityTask_ApplyRootMotionRadialForce : UAbilityTask_ApplyRootMotion_Base
---@field OnFinish FAbilityTask_ApplyRootMotionRadialForceOnFinish
---@field Location FVector
---@field LocationActor AActor
---@field Strength float
---@field Duration float
---@field Radius float
---@field bIsPush boolean
---@field bIsAdditive boolean
---@field bNoZForce boolean
---@field StrengthDistanceFalloff UCurveFloat
---@field StrengthOverTime UCurveFloat
---@field bUseFixedWorldDirection boolean
---@field FixedWorldDirection FRotator
local UAbilityTask_ApplyRootMotionRadialForce = {}

---@class UAbilityTask_ApplyRootMotion_Base : UAbilityTask
---@field ForceName FName
---@field FinishVelocityMode ERootMotionFinishVelocityMode
---@field FinishSetVelocity FVector
---@field FinishClampVelocity float
---@field MovementComponent UCharacterMovementComponent
local UAbilityTask_ApplyRootMotion_Base = {}

---@class UAbilityTask_MoveToLocation : UAbilityTask
---@field OnTargetLocationReached FAbilityTask_MoveToLocationOnTargetLocationReached
---@field StartLocation FVector
---@field TargetLocation FVector
---@field DurationOfMovement float
---@field LerpCurve UCurveFloat
---@field LerpCurveVector UCurveVector
local UAbilityTask_MoveToLocation = {}

---@class UAbilityTask_NetworkSyncPoint : UAbilityTask
---@field OnSync FAbilityTask_NetworkSyncPointOnSync
local UAbilityTask_NetworkSyncPoint = {}

---@class UAbilityTask_PlayMontageAndWait : UAbilityTask
---@field OnCompleted FAbilityTask_PlayMontageAndWaitOnCompleted
---@field OnBlendOut FAbilityTask_PlayMontageAndWaitOnBlendOut
---@field OnInterrupted FAbilityTask_PlayMontageAndWaitOnInterrupted
---@field OnCancelled FAbilityTask_PlayMontageAndWaitOnCancelled
---@field MontageToPlay UAnimMontage
---@field Rate float
---@field StartSection FName
---@field AnimRootMotionTranslationScale float
---@field StartTimeSeconds float
---@field bStopWhenAbilityEnds boolean
local UAbilityTask_PlayMontageAndWait = {}

---@class UAbilityTask_Repeat : UAbilityTask
---@field OnPerformAction FAbilityTask_RepeatOnPerformAction
---@field OnFinished FAbilityTask_RepeatOnFinished
local UAbilityTask_Repeat = {}

---@class UAbilityTask_SpawnActor : UAbilityTask
---@field Success FAbilityTask_SpawnActorSuccess
---@field DidNotSpawn FAbilityTask_SpawnActorDidNotSpawn
local UAbilityTask_SpawnActor = {}

---@class UAbilityTask_StartAbilityState : UAbilityTask
---@field OnStateEnded FAbilityTask_StartAbilityStateOnStateEnded
---@field OnStateInterrupted FAbilityTask_StartAbilityStateOnStateInterrupted
local UAbilityTask_StartAbilityState = {}

---@class UAbilityTask_VisualizeTargeting : UAbilityTask
---@field TimeElapsed FAbilityTask_VisualizeTargetingTimeElapsed
local UAbilityTask_VisualizeTargeting = {}

---@class UAbilityTask_WaitAbilityActivate : UAbilityTask
---@field OnActivate FAbilityTask_WaitAbilityActivateOnActivate
local UAbilityTask_WaitAbilityActivate = {}

---@class UAbilityTask_WaitAbilityCommit : UAbilityTask
---@field OnCommit FAbilityTask_WaitAbilityCommitOnCommit
local UAbilityTask_WaitAbilityCommit = {}

---@class UAbilityTask_WaitAttributeChange : UAbilityTask
---@field OnChange FAbilityTask_WaitAttributeChangeOnChange
---@field ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitAttributeChange = {}

---@class UAbilityTask_WaitAttributeChangeRatioThreshold : UAbilityTask
---@field OnChange FAbilityTask_WaitAttributeChangeRatioThresholdOnChange
---@field ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitAttributeChangeRatioThreshold = {}

---@class UAbilityTask_WaitAttributeChangeThreshold : UAbilityTask
---@field OnChange FAbilityTask_WaitAttributeChangeThresholdOnChange
---@field ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitAttributeChangeThreshold = {}

---@class UAbilityTask_WaitCancel : UAbilityTask
---@field OnCancel FAbilityTask_WaitCancelOnCancel
local UAbilityTask_WaitCancel = {}

---@class UAbilityTask_WaitConfirm : UAbilityTask
---@field OnConfirm FAbilityTask_WaitConfirmOnConfirm
local UAbilityTask_WaitConfirm = {}

---@class UAbilityTask_WaitConfirmCancel : UAbilityTask
---@field OnConfirm FAbilityTask_WaitConfirmCancelOnConfirm
---@field OnCancel FAbilityTask_WaitConfirmCancelOnCancel
local UAbilityTask_WaitConfirmCancel = {}

---@class UAbilityTask_WaitDelay : UAbilityTask
---@field OnFinish FAbilityTask_WaitDelayOnFinish
local UAbilityTask_WaitDelay = {}

---@class UAbilityTask_WaitGameplayEffectApplied : UAbilityTask
---@field ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitGameplayEffectApplied = {}

---@class UAbilityTask_WaitGameplayEffectApplied_Self : UAbilityTask_WaitGameplayEffectApplied
---@field OnApplied FAbilityTask_WaitGameplayEffectApplied_SelfOnApplied
local UAbilityTask_WaitGameplayEffectApplied_Self = {}

---@class UAbilityTask_WaitGameplayEffectApplied_Target : UAbilityTask_WaitGameplayEffectApplied
---@field OnApplied FAbilityTask_WaitGameplayEffectApplied_TargetOnApplied
local UAbilityTask_WaitGameplayEffectApplied_Target = {}

---@class UAbilityTask_WaitGameplayEffectBlockedImmunity : UAbilityTask
---@field bLocked FAbilityTask_WaitGameplayEffectBlockedImmunityBLocked
---@field ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitGameplayEffectBlockedImmunity = {}

---@class UAbilityTask_WaitGameplayEffectRemoved : UAbilityTask
---@field OnRemoved FAbilityTask_WaitGameplayEffectRemovedOnRemoved
---@field InvalidHandle FAbilityTask_WaitGameplayEffectRemovedInvalidHandle
local UAbilityTask_WaitGameplayEffectRemoved = {}

---@class UAbilityTask_WaitGameplayEffectStackChange : UAbilityTask
---@field OnChange FAbilityTask_WaitGameplayEffectStackChangeOnChange
---@field InvalidHandle FAbilityTask_WaitGameplayEffectStackChangeInvalidHandle
local UAbilityTask_WaitGameplayEffectStackChange = {}

---@class UAbilityTask_WaitGameplayEvent : UAbilityTask
---@field EventReceived FAbilityTask_WaitGameplayEventEventReceived
---@field OptionalExternalTarget UAbilitySystemComponent
local UAbilityTask_WaitGameplayEvent = {}

---@class UAbilityTask_WaitGameplayTag : UAbilityTask
---@field OptionalExternalTarget UAbilitySystemComponent
local UAbilityTask_WaitGameplayTag = {}

---@class UAbilityTask_WaitGameplayTagAdded : UAbilityTask_WaitGameplayTag
---@field Added FAbilityTask_WaitGameplayTagAddedAdded
local UAbilityTask_WaitGameplayTagAdded = {}

---@class UAbilityTask_WaitGameplayTagRemoved : UAbilityTask_WaitGameplayTag
---@field Removed FAbilityTask_WaitGameplayTagRemovedRemoved
local UAbilityTask_WaitGameplayTagRemoved = {}

---@class UAbilityTask_WaitInputPress : UAbilityTask
---@field OnPress FAbilityTask_WaitInputPressOnPress
local UAbilityTask_WaitInputPress = {}

---@class UAbilityTask_WaitInputRelease : UAbilityTask
---@field OnRelease FAbilityTask_WaitInputReleaseOnRelease
local UAbilityTask_WaitInputRelease = {}

---@class UAbilityTask_WaitMovementModeChange : UAbilityTask
---@field OnChange FAbilityTask_WaitMovementModeChangeOnChange
local UAbilityTask_WaitMovementModeChange = {}

---@class UAbilityTask_WaitOverlap : UAbilityTask
---@field OnOverlap FAbilityTask_WaitOverlapOnOverlap
local UAbilityTask_WaitOverlap = {}

---@class UAbilityTask_WaitTargetData : UAbilityTask
---@field ValidData FAbilityTask_WaitTargetDataValidData
---@field Cancelled FAbilityTask_WaitTargetDataCancelled
---@field TargetClass TSubclassOf<AGameplayAbilityTargetActor>
---@field TargetActor AGameplayAbilityTargetActor
local UAbilityTask_WaitTargetData = {}

---@class UAbilityTask_WaitVelocityChange : UAbilityTask
---@field OnVelocityChage FAbilityTask_WaitVelocityChangeOnVelocityChage
---@field CachedMovementComponent UMovementComponent
local UAbilityTask_WaitVelocityChange = {}

---@class UAttributeSet : UObject
local UAttributeSet = {}

---@class UGameplayAbility : UObject
---@field AbilityTags FGameplayTagContainer
---@field bReplicateInputDirectly boolean
---@field RemoteInstanceEnded boolean
---@field ReplicationPolicy EGameplayAbilityReplicationPolicy::Type
---@field InstancingPolicy EGameplayAbilityInstancingPolicy::Type
---@field bServerRespectsRemoteAbilityCancellation boolean
---@field bRetriggerInstancedAbility boolean
---@field CurrentActivationInfo FGameplayAbilityActivationInfo
---@field CurrentEventData FGameplayEventData
---@field NetExecutionPolicy EGameplayAbilityNetExecutionPolicy::Type
---@field NetSecurityPolicy EGameplayAbilityNetSecurityPolicy::Type
---@field CostGameplayEffectClass TSubclassOf<UGameplayEffect>
---@field AbilityTriggers TArray<FAbilityTriggerData>
---@field CooldownGameplayEffectClass TSubclassOf<UGameplayEffect>
---@field CancelAbilitiesWithTag FGameplayTagContainer
---@field BlockAbilitiesWithTag FGameplayTagContainer
---@field ActivationOwnedTags FGameplayTagContainer
---@field ActivationRequiredTags FGameplayTagContainer
---@field ActivationBlockedTags FGameplayTagContainer
---@field SourceRequiredTags FGameplayTagContainer
---@field SourceBlockedTags FGameplayTagContainer
---@field TargetRequiredTags FGameplayTagContainer
---@field TargetBlockedTags FGameplayTagContainer
---@field ActiveTasks TArray<UGameplayTask>
---@field CurrentMontage UAnimMontage
---@field bIsActive boolean
---@field bIsAbilityEnding boolean
---@field bIsCancelable boolean
---@field bIsBlockingOtherAbilities boolean
---@field bMarkPendingKillOnAbilityEnd boolean
local UGameplayAbility = {}

---@class UGameplayAbilityBlueprint : UBlueprint
local UGameplayAbilityBlueprint = {}

---@class UGameplayAbilitySet : UDataAsset
---@field Abilities TArray<FGameplayAbilityBindInfo>
local UGameplayAbilitySet = {}

---@class UGameplayAbility_CharacterJump : UGameplayAbility
local UGameplayAbility_CharacterJump = {}

---@class UGameplayAbility_Montage : UGameplayAbility
---@field MontageToPlay UAnimMontage
---@field PlayRate float
---@field SectionName FName
---@field GameplayEffectClassesWhileAnimating TArray<TSubclassOf<UGameplayEffect>>
---@field GameplayEffectsWhileAnimating TArray<UGameplayEffect>
local UGameplayAbility_Montage = {}

---@class UGameplayCueManager : UDataAsset
---@field RuntimeGameplayCueObjectLibrary FGameplayCueObjectLibrary
---@field EditorGameplayCueObjectLibrary FGameplayCueObjectLibrary
---@field LoadedGameplayCueNotifyClasses TArray<UClass>
---@field GameplayCueClassesForPreallocation TArray<TSubclassOf<AGameplayCueNotify_Actor>>
---@field PendingExecuteCues TArray<FGameplayCuePendingExecute>
---@field GameplayCueSendContextCount int32
---@field PreallocationInfoList_Internal TArray<FPreallocationInfo>
local UGameplayCueManager = {}

---@class UGameplayCueNotify_HitImpact : UGameplayCueNotify_Static
---@field Sound USoundBase
---@field ParticleSystem UParticleSystem
local UGameplayCueNotify_HitImpact = {}

---@class UGameplayCueNotify_Static : UObject
---@field GameplayCueTag FGameplayTag
---@field GameplayCueName FName
---@field IsOverride boolean
local UGameplayCueNotify_Static = {}

---@class UGameplayCueSet : UDataAsset
---@field GameplayCueData TArray<FGameplayCueNotifyData>
local UGameplayCueSet = {}

---@class UGameplayCueTranslator : UObject
local UGameplayCueTranslator = {}

---@class UGameplayCueTranslator_Test : UGameplayCueTranslator
local UGameplayCueTranslator_Test = {}

---@class UGameplayEffect : UObject
---@field DurationPolicy EGameplayEffectDurationType
---@field DurationMagnitude FGameplayEffectModifierMagnitude
---@field Period FScalableFloat
---@field bExecutePeriodicEffectOnApplication boolean
---@field PeriodicInhibitionPolicy EGameplayEffectPeriodInhibitionRemovedPolicy
---@field Modifiers TArray<FGameplayModifierInfo>
---@field Executions TArray<FGameplayEffectExecutionDefinition>
---@field ChanceToApplyToTarget FScalableFloat
---@field ApplicationRequirements TArray<TSubclassOf<UGameplayEffectCustomApplicationRequirement>>
---@field TargetEffectClasses TArray<TSubclassOf<UGameplayEffect>>
---@field ConditionalGameplayEffects TArray<FConditionalGameplayEffect>
---@field OverflowEffects TArray<TSubclassOf<UGameplayEffect>>
---@field bDenyOverflowApplication boolean
---@field bClearStackOnOverflow boolean
---@field PrematureExpirationEffectClasses TArray<TSubclassOf<UGameplayEffect>>
---@field RoutineExpirationEffectClasses TArray<TSubclassOf<UGameplayEffect>>
---@field bRequireModifierSuccessToTriggerCues boolean
---@field bSuppressStackingCues boolean
---@field GameplayCues TArray<FGameplayEffectCue>
---@field UIData UGameplayEffectUIData
---@field InheritableGameplayEffectTags FInheritedTagContainer
---@field InheritableOwnedTagsContainer FInheritedTagContainer
---@field OngoingTagRequirements FGameplayTagRequirements
---@field ApplicationTagRequirements FGameplayTagRequirements
---@field RemovalTagRequirements FGameplayTagRequirements
---@field RemoveGameplayEffectsWithTags FInheritedTagContainer
---@field GrantedApplicationImmunityTags FGameplayTagRequirements
---@field GrantedApplicationImmunityQuery FGameplayEffectQuery
---@field RemoveGameplayEffectQuery FGameplayEffectQuery
---@field StackingType EGameplayEffectStackingType
---@field StackLimitCount int32
---@field StackDurationRefreshPolicy EGameplayEffectStackingDurationPolicy
---@field StackPeriodResetPolicy EGameplayEffectStackingPeriodPolicy
---@field StackExpirationPolicy EGameplayEffectStackingExpirationPolicy
---@field GrantedAbilities TArray<FGameplayAbilitySpecDef>
local UGameplayEffect = {}

---@class UGameplayEffectCalculation : UObject
---@field RelevantAttributesToCapture TArray<FGameplayEffectAttributeCaptureDefinition>
local UGameplayEffectCalculation = {}

---@class UGameplayEffectCustomApplicationRequirement : UObject
local UGameplayEffectCustomApplicationRequirement = {}

---@class UGameplayEffectExecutionCalculation : UGameplayEffectCalculation
---@field bRequiresPassedInTags boolean
local UGameplayEffectExecutionCalculation = {}

---@class UGameplayEffectUIData : UObject
local UGameplayEffectUIData = {}

---@class UGameplayEffectUIData_TextOnly : UGameplayEffectUIData
---@field Description FText
local UGameplayEffectUIData_TextOnly = {}

---@class UGameplayModMagnitudeCalculation : UGameplayEffectCalculation
---@field bAllowNonNetAuthorityDependencyRegistration boolean
local UGameplayModMagnitudeCalculation = {}

---@class UGameplayTagReponseTable : UDataAsset
---@field Entries TArray<FGameplayTagResponseTableEntry>
local UGameplayTagReponseTable = {}

---@class UMovieSceneGameplayCueSection : UMovieSceneHookSection
---@field Cue FMovieSceneGameplayCueKey
local UMovieSceneGameplayCueSection = {}

---@class UMovieSceneGameplayCueTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneGameplayCueTrack = {}

---@class UMovieSceneGameplayCueTriggerSection : UMovieSceneHookSection
---@field Channel FMovieSceneGameplayCueChannel
local UMovieSceneGameplayCueTriggerSection = {}

function AGameplayAbilityTargetActor:CancelTargeting() end

function AGameplayAbilityTargetActor:ConfirmTargeting() end

---@param bFaceIn2D boolean
function AGameplayAbilityWorldReticle:FaceTowardSource(bFaceIn2D) end

function AGameplayAbilityWorldReticle:OnParametersInitialized() end

---@param bNewValue boolean
function AGameplayAbilityWorldReticle:OnTargetingAnActor(bNewValue) end

---@param bNewValue boolean
function AGameplayAbilityWorldReticle:OnValidTargetChanged(bNewValue) end

---@param ParamName FName
---@param Value float
function AGameplayAbilityWorldReticle:SetReticleMaterialParamFloat(ParamName, Value) end

---@param ParamName FName
---@param Value FVector
function AGameplayAbilityWorldReticle:SetReticleMaterialParamVector(ParamName, Value) end

function AGameplayCueNotify_Actor:K2_EndGameplayCue() end

---@param MyTarget AActor
---@param EventType EGameplayCueEvent::Type
---@param Parameters FGameplayCueParameters
function AGameplayCueNotify_Actor:K2_HandleGameplayCue(MyTarget, EventType, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function AGameplayCueNotify_Actor:OnActive(MyTarget, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function AGameplayCueNotify_Actor:OnExecute(MyTarget, Parameters) end

---@param DestroyedActor AActor
function AGameplayCueNotify_Actor:OnOwnerDestroyed(DestroyedActor) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function AGameplayCueNotify_Actor:OnRemove(MyTarget, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function AGameplayCueNotify_Actor:WhileActive(MyTarget, Parameters) end

---@param EventType EGameplayCueEvent::Type
---@param Parameters FGameplayCueParameters
function IGameplayCueInterface:BlueprintCustomHandler(EventType, Parameters) end

function IGameplayCueInterface:ForwardGameplayCueToParent() end

function UAbilityAsync:EndAction() end

---@param Source AActor
---@param SpecHandle FGameplayEffectSpecHandle
---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilityAsync_WaitGameplayEffectApplied:OnAppliedDelegate__DelegateSignature(Source, SpecHandle, ActiveHandle) end

---@param TargetActor AActor
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param TriggerOnce boolean
---@param ListenForPeriodicEffect boolean
function UAbilityAsync_WaitGameplayEffectApplied:WaitGameplayEffectAppliedToActor(TargetActor, SourceFilter, SourceTagRequirements, TargetTagRequirements, TriggerOnce, ListenForPeriodicEffect) end

---@param Payload FGameplayEventData
function UAbilityAsync_WaitGameplayEvent:EventReceivedDelegate__DelegateSignature(Payload) end

---@param TargetActor AActor
---@param EventTag FGameplayTag
---@param OnlyTriggerOnce boolean
---@param OnlyMatchExact boolean
function UAbilityAsync_WaitGameplayEvent:WaitGameplayEventToActor(TargetActor, EventTag, OnlyTriggerOnce, OnlyMatchExact) end

---@param TargetActor AActor
---@param Tag FGameplayTag
---@param OnlyTriggerOnce boolean
function UAbilityAsync_WaitGameplayTagAdded:WaitGameplayTagAddToActor(TargetActor, Tag, OnlyTriggerOnce) end

---@param TargetActor AActor
---@param Tag FGameplayTag
---@param OnlyTriggerOnce boolean
function UAbilityAsync_WaitGameplayTagRemoved:WaitGameplayTagRemoveFromActor(TargetActor, Tag, OnlyTriggerOnce) end

---@param Actor AActor
function UAbilitySystemBlueprintLibrary:AbilityTargetDataFromActor(Actor) end

---@param ActorArray TArray<AActor>
---@param OneTargetPerHandle boolean
function UAbilitySystemBlueprintLibrary:AbilityTargetDataFromActorArray(ActorArray, OneTargetPerHandle) end

---@param HitResult FHitResult
function UAbilitySystemBlueprintLibrary:AbilityTargetDataFromHitResult(HitResult) end

---@param SourceLocation FGameplayAbilityTargetingLocationInfo
---@param TargetLocation FGameplayAbilityTargetingLocationInfo
function UAbilitySystemBlueprintLibrary:AbilityTargetDataFromLocations(SourceLocation, TargetLocation) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTag FGameplayTag
function UAbilitySystemBlueprintLibrary:AddAssetTag(SpecHandle, NewGameplayTag) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTags FGameplayTagContainer
function UAbilitySystemBlueprintLibrary:AddAssetTags(SpecHandle, NewGameplayTags) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTag FGameplayTag
function UAbilitySystemBlueprintLibrary:AddGrantedTag(SpecHandle, NewGameplayTag) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTags FGameplayTagContainer
function UAbilitySystemBlueprintLibrary:AddGrantedTags(SpecHandle, NewGameplayTags) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param LinkedGameplayEffect TSubclassOf<UGameplayEffect>
function UAbilitySystemBlueprintLibrary:AddLinkedGameplayEffect(SpecHandle, LinkedGameplayEffect) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param LinkedGameplayEffectSpec FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary:AddLinkedGameplayEffectSpec(SpecHandle, LinkedGameplayEffectSpec) end

---@param TargetHandle FGameplayAbilityTargetDataHandle
---@param HandleToAdd FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary:AppendTargetDataHandle(TargetHandle, HandleToAdd) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param DataName FName
---@param Magnitude float
function UAbilitySystemBlueprintLibrary:AssignSetByCallerMagnitude(SpecHandle, DataName, Magnitude) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param DataTag FGameplayTag
---@param Magnitude float
function UAbilitySystemBlueprintLibrary:AssignTagSetByCallerMagnitude(SpecHandle, DataTag, Magnitude) end

---@param Parameters FGameplayCueParameters
---@param NormalizedMagnitude float
---@param RawMagnitude float
---@param EffectContext FGameplayEffectContextHandle
---@param MatchedTagName FGameplayTag
---@param OriginalTag FGameplayTag
---@param AggregatedSourceTags FGameplayTagContainer
---@param AggregatedTargetTags FGameplayTagContainer
---@param Location FVector
---@param Normal FVector
---@param Instigator AActor
---@param EffectCauser AActor
---@param SourceObject UObject
---@param PhysicalMaterial UPhysicalMaterial
---@param GameplayEffectLevel int32
---@param AbilityLevel int32
---@param TargetAttachComponent USceneComponent
---@param bReplicateLocationWhenUsingMinimalRepProxy boolean
function UAbilitySystemBlueprintLibrary:BreakGameplayCueParameters(Parameters, NormalizedMagnitude, RawMagnitude, EffectContext, MatchedTagName, OriginalTag, AggregatedSourceTags, AggregatedTargetTags, Location, Normal, Instigator, EffectCauser, SourceObject, PhysicalMaterial, GameplayEffectLevel, AbilityLevel, TargetAttachComponent, bReplicateLocationWhenUsingMinimalRepProxy) end

---@param InNewInstigator AActor
---@param InEffectCauser AActor
---@param GameplayEffectSpecHandle_Clone FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary:CloneSpecHandle(InNewInstigator, InEffectCauser, GameplayEffectSpecHandle_Clone) end

---@param Parameters FGameplayCueParameters
---@param SourceTagReqs FGameplayTagRequirements
---@param TargetTagReqs FGameplayTagRequirements
function UAbilitySystemBlueprintLibrary:DoesGameplayCueMeetTagRequirements(Parameters, SourceTagReqs, TargetTagReqs) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
---@param Actor AActor
function UAbilitySystemBlueprintLibrary:DoesTargetDataContainActor(TargetData, Index, Actor) end

---@param EffectContext FGameplayEffectContextHandle
---@param HitResult FHitResult
---@param bReset boolean
function UAbilitySystemBlueprintLibrary:EffectContextAddHitResult(EffectContext, HitResult, bReset) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextGetEffectCauser(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextGetHitResult(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextGetInstigatorActor(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextGetOrigin(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextGetOriginalInstigatorActor(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextGetSourceObject(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextHasHitResult(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextIsInstigatorLocallyControlled(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary:EffectContextIsValid(EffectContext) end

---@param EffectContext FGameplayEffectContextHandle
---@param Origin FVector
function UAbilitySystemBlueprintLibrary:EffectContextSetOrigin(EffectContext, Origin) end

---@param AttributeA FGameplayAttribute
---@param AttributeB FGameplayAttribute
function UAbilitySystemBlueprintLibrary:EqualEqual_GameplayAttributeGameplayAttribute(AttributeA, AttributeB) end

---@param AbilitySystem UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param SourceTags FGameplayTagContainer
---@param TargetTags FGameplayTagContainer
---@param bSuccess boolean
function UAbilitySystemBlueprintLibrary:EvaluateAttributeValueWithTags(AbilitySystem, Attribute, SourceTags, TargetTags, bSuccess) end

---@param AbilitySystem UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param SourceTags FGameplayTagContainer
---@param TargetTags FGameplayTagContainer
---@param BaseValue float
---@param bSuccess boolean
function UAbilitySystemBlueprintLibrary:EvaluateAttributeValueWithTagsAndBase(AbilitySystem, Attribute, SourceTags, TargetTags, BaseValue, bSuccess) end

---@param TargetDataHandle FGameplayAbilityTargetDataHandle
---@param ActorFilterClass FGameplayTargetDataFilterHandle
function UAbilitySystemBlueprintLibrary:FilterTargetData(TargetDataHandle, ActorFilterClass) end

---@param TargetCueInterface TScriptInterface<IGameplayCueInterface>
---@param EventType EGameplayCueEvent::Type
---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:ForwardGameplayCueToTarget(TargetCueInterface, EventType, Parameters) end

---@param Actor AActor
function UAbilitySystemBlueprintLibrary:GetAbilitySystemComponent(Actor) end

---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectDebugString(ActiveHandle) end

---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectExpectedEndTime(ActiveHandle) end

---@param WorldContextObject UObject
---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectRemainingDuration(WorldContextObject, ActiveHandle) end

---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectStackCount(ActiveHandle) end

---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectStackLimitCount(ActiveHandle) end

---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectStartTime(ActiveHandle) end

---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilitySystemBlueprintLibrary:GetActiveGameplayEffectTotalDuration(ActiveHandle) end

---@param Parameters FGameplayCueParameters
---@param Index int32
function UAbilitySystemBlueprintLibrary:GetActorByIndex(Parameters, Index) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:GetActorCount(Parameters) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:GetActorsFromTargetData(TargetData, Index) end

---@param TargetData FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary:GetAllActorsFromTargetData(TargetData) end

---@param SpecHandle FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary:GetAllLinkedGameplayEffectSpecHandles(SpecHandle) end

---@param TargetData FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary:GetDataCountFromTargetData(TargetData) end

---@param SpecHandle FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary:GetEffectContext(SpecHandle) end

---@param Actor AActor
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean
function UAbilitySystemBlueprintLibrary:GetFloatAttribute(Actor, Attribute, bSuccessfullyFoundAttribute) end

---@param Actor AActor
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean
function UAbilitySystemBlueprintLibrary:GetFloatAttributeBase(Actor, Attribute, bSuccessfullyFoundAttribute) end

---@param AbilitySystemComponent UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean
function UAbilitySystemBlueprintLibrary:GetFloatAttributeBaseFromAbilitySystemComponent(AbilitySystemComponent, Attribute, bSuccessfullyFoundAttribute) end

---@param AbilitySystem UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean
function UAbilitySystemBlueprintLibrary:GetFloatAttributeFromAbilitySystemComponent(AbilitySystem, Attribute, bSuccessfullyFoundAttribute) end

---@param TargetActor AActor
---@param Parameters FGameplayCueParameters
---@param Direction FVector
function UAbilitySystemBlueprintLibrary:GetGameplayCueDirection(TargetActor, Parameters, Direction) end

---@param TargetActor AActor
---@param Parameters FGameplayCueParameters
---@param Location FVector
---@param Normal FVector
function UAbilitySystemBlueprintLibrary:GetGameplayCueEndLocationAndNormal(TargetActor, Parameters, Location, Normal) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:GetHitResult(Parameters) end

---@param HitResult FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:GetHitResultFromTargetData(HitResult, Index) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:GetInstigatorActor(Parameters) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:GetInstigatorTransform(Parameters) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param Attribute FGameplayAttribute
function UAbilitySystemBlueprintLibrary:GetModifiedAttributeMagnitude(SpecHandle, Attribute) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:GetOrigin(Parameters) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:GetTargetDataEndPoint(TargetData, Index) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:GetTargetDataEndPointTransform(TargetData, Index) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:GetTargetDataOrigin(TargetData, Index) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:HasHitResult(Parameters) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:IsInstigatorLocallyControlled(Parameters) end

---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary:IsInstigatorLocallyControlledPlayer(Parameters) end

---@param Attribute FGameplayAttribute
function UAbilitySystemBlueprintLibrary:IsValid(Attribute) end

---@param Filter FGameplayTargetDataFilter
---@param FilterActor AActor
function UAbilitySystemBlueprintLibrary:MakeFilterHandle(Filter, FilterActor) end

---@param NormalizedMagnitude float
---@param RawMagnitude float
---@param EffectContext FGameplayEffectContextHandle
---@param MatchedTagName FGameplayTag
---@param OriginalTag FGameplayTag
---@param AggregatedSourceTags FGameplayTagContainer
---@param AggregatedTargetTags FGameplayTagContainer
---@param Location FVector
---@param Normal FVector
---@param Instigator AActor
---@param EffectCauser AActor
---@param SourceObject UObject
---@param PhysicalMaterial UPhysicalMaterial
---@param GameplayEffectLevel int32
---@param AbilityLevel int32
---@param TargetAttachComponent USceneComponent
---@param bReplicateLocationWhenUsingMinimalRepProxy boolean
function UAbilitySystemBlueprintLibrary:MakeGameplayCueParameters(NormalizedMagnitude, RawMagnitude, EffectContext, MatchedTagName, OriginalTag, AggregatedSourceTags, AggregatedTargetTags, Location, Normal, Instigator, EffectCauser, SourceObject, PhysicalMaterial, GameplayEffectLevel, AbilityLevel, TargetAttachComponent, bReplicateLocationWhenUsingMinimalRepProxy) end

---@param InGameplayEffect UGameplayEffect
---@param InInstigator AActor
---@param InEffectCauser AActor
---@param InLevel float
function UAbilitySystemBlueprintLibrary:MakeSpecHandle(InGameplayEffect, InInstigator, InEffectCauser, InLevel) end

---@param AttributeA FGameplayAttribute
---@param AttributeB FGameplayAttribute
function UAbilitySystemBlueprintLibrary:NotEqual_GameplayAttributeGameplayAttribute(AttributeA, AttributeB) end

---@param Actor AActor
---@param EventTag FGameplayTag
---@param Payload FGameplayEventData
function UAbilitySystemBlueprintLibrary:SendGameplayEventToActor(Actor, EventTag, Payload) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param Duration float
function UAbilitySystemBlueprintLibrary:SetDuration(SpecHandle, Duration) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param StackCount int32
function UAbilitySystemBlueprintLibrary:SetStackCount(SpecHandle, StackCount) end

---@param SpecHandle FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary:SetStackCountToMax(SpecHandle) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:TargetDataHasActor(TargetData, Index) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:TargetDataHasEndPoint(TargetData, Index) end

---@param HitResult FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:TargetDataHasHitResult(HitResult, Index) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index int32
function UAbilitySystemBlueprintLibrary:TargetDataHasOrigin(TargetData, Index) end

---@param InputID int32
function UAbilitySystemComponent:AbilityAbilityKey__DelegateSignature(InputID) end

function UAbilitySystemComponent:AbilityConfirmOrCancel__DelegateSignature() end

---@param SpecHandle FGameplayEffectSpecHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectSpecToSelf(SpecHandle) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param Target UAbilitySystemComponent
function UAbilitySystemComponent:BP_ApplyGameplayEffectSpecToTarget(SpecHandle, Target) end

---@param GameplayEffectClass TSubclassOf<UGameplayEffect>
---@param Level float
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectToSelf(GameplayEffectClass, Level, EffectContext) end

---@param GameplayEffectClass TSubclassOf<UGameplayEffect>
---@param Target UAbilitySystemComponent
---@param Level float
---@param Context FGameplayEffectContextHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectToTarget(GameplayEffectClass, Target, Level, Context) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param PredictionKey int16
function UAbilitySystemComponent:ClientActivateAbilityFailed(AbilityToActivate, PredictionKey) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:ClientActivateAbilitySucceed(AbilityToActivate, PredictionKey) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param PredictionKey FPredictionKey
---@param TriggerEventData FGameplayEventData
function UAbilitySystemComponent:ClientActivateAbilitySucceedWithEventData(AbilityToActivate, PredictionKey, TriggerEventData) end

---@param AbilityToCancel FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
function UAbilitySystemComponent:ClientCancelAbility(AbilityToCancel, ActivationInfo) end

---@param AbilityToEnd FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
function UAbilitySystemComponent:ClientEndAbility(AbilityToEnd, ActivationInfo) end

---@param Strings TArray<FString>
---@param GameFlags int32
function UAbilitySystemComponent:ClientPrintDebug_Response(Strings, GameFlags) end

---@param EventType EAbilityGenericReplicatedEvent::Type
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
function UAbilitySystemComponent:ClientSetReplicatedEvent(EventType, AbilityHandle, AbilityOriginalPredictionKey) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ClientTryActivateAbility(AbilityToActivate) end

---@param Query FGameplayEffectQuery
function UAbilitySystemComponent:GetActiveEffects(Query) end

---@param Tags FGameplayTagContainer
function UAbilitySystemComponent:GetActiveEffectsWithAllTags(Tags) end

---@param SourceGameplayEffect TSubclassOf<UGameplayEffect>
---@param OptionalInstigatorFilterComponent UAbilitySystemComponent
---@param bEnforceOnGoingCheck boolean
function UAbilitySystemComponent:GetGameplayEffectCount(SourceGameplayEffect, OptionalInstigatorFilterComponent, bEnforceOnGoingCheck) end

---@param Handle FActiveGameplayEffectHandle
---@param Attribute FGameplayAttribute
function UAbilitySystemComponent:GetGameplayEffectMagnitude(Handle, Attribute) end

function UAbilitySystemComponent:GetUserAbilityActivationInhibited() end

---@param GameplayCueTag FGameplayTag
function UAbilitySystemComponent:IsGameplayCueActive(GameplayCueTag) end

---@param Attributes TSubclassOf<UAttributeSet>
---@param DataTable UDataTable
function UAbilitySystemComponent:K2_InitStats(Attributes, DataTable) end

function UAbilitySystemComponent:MakeEffectContext() end

---@param GameplayEffectClass TSubclassOf<UGameplayEffect>
---@param Level float
---@param Context FGameplayEffectContextHandle
function UAbilitySystemComponent:MakeOutgoingSpec(GameplayEffectClass, Level, Context) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAdded(GameplayCueTag, PredictionKey, EffectContext) end

---@param Spec FGameplayEffectSpecForRPC
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAddedAndWhileActive_FromSpec(Spec, PredictionKey) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAddedAndWhileActive_WithParams(GameplayCueTag, PredictionKey, GameplayCueParameters) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param Parameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAdded_WithParams(GameplayCueTag, PredictionKey, Parameters) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueExecuted(GameplayCueTag, PredictionKey, EffectContext) end

---@param Spec FGameplayEffectSpecForRPC
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueExecuted_FromSpec(Spec, PredictionKey) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueExecuted_WithParams(GameplayCueTag, PredictionKey, GameplayCueParameters) end

---@param GameplayCueTags FGameplayTagContainer
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCuesAddedAndWhileActive_WithParams(GameplayCueTags, PredictionKey, GameplayCueParameters) end

---@param GameplayCueTags FGameplayTagContainer
---@param PredictionKey FPredictionKey
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCuesExecuted(GameplayCueTags, PredictionKey, EffectContext) end

---@param GameplayCueTags FGameplayTagContainer
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCuesExecuted_WithParams(GameplayCueTags, PredictionKey, GameplayCueParameters) end

function UAbilitySystemComponent:OnRep_ActivateAbilities() end

function UAbilitySystemComponent:OnRep_ClientDebugString() end

function UAbilitySystemComponent:OnRep_OwningActor() end

function UAbilitySystemComponent:OnRep_ReplicatedAnimMontage() end

function UAbilitySystemComponent:OnRep_ServerDebugString() end

---@param Tags FGameplayTagContainer
function UAbilitySystemComponent:RemoveActiveEffectsWithAppliedTags(Tags) end

---@param Tags FGameplayTagContainer
function UAbilitySystemComponent:RemoveActiveEffectsWithGrantedTags(Tags) end

---@param Tags FGameplayTagContainer
function UAbilitySystemComponent:RemoveActiveEffectsWithSourceTags(Tags) end

---@param Tags FGameplayTagContainer
function UAbilitySystemComponent:RemoveActiveEffectsWithTags(Tags) end

---@param Handle FActiveGameplayEffectHandle
---@param StacksToRemove int32
function UAbilitySystemComponent:RemoveActiveGameplayEffect(Handle, StacksToRemove) end

---@param GameplayEffect TSubclassOf<UGameplayEffect>
---@param InstigatorAbilitySystemComponent UAbilitySystemComponent
---@param StacksToRemove int32
function UAbilitySystemComponent:RemoveActiveGameplayEffectBySourceEffect(GameplayEffect, InstigatorAbilitySystemComponent, StacksToRemove) end

---@param BatchInfo FServerAbilityRPCBatch
function UAbilitySystemComponent:ServerAbilityRPCBatch(BatchInfo) end

---@param AbilityToCancel FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
function UAbilitySystemComponent:ServerCancelAbility(AbilityToCancel, ActivationInfo) end

---@param ClientAnimMontage UAnimMontage
---@param SectionName FName
function UAbilitySystemComponent:ServerCurrentMontageJumpToSectionName(ClientAnimMontage, SectionName) end

---@param ClientAnimMontage UAnimMontage
---@param ClientPosition float
---@param SectionName FName
---@param NextSectionName FName
function UAbilitySystemComponent:ServerCurrentMontageSetNextSectionName(ClientAnimMontage, ClientPosition, SectionName, NextSectionName) end

---@param ClientAnimMontage UAnimMontage
---@param InPlayRate float
function UAbilitySystemComponent:ServerCurrentMontageSetPlayRate(ClientAnimMontage, InPlayRate) end

---@param AbilityToEnd FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:ServerEndAbility(AbilityToEnd, ActivationInfo, PredictionKey) end

function UAbilitySystemComponent:ServerPrintDebug_Request() end

---@param Strings TArray<FString>
function UAbilitySystemComponent:ServerPrintDebug_RequestWithStrings(Strings) end

---@param AbilityHandle FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ServerSetInputPressed(AbilityHandle) end

---@param AbilityHandle FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ServerSetInputReleased(AbilityHandle) end

---@param EventType EAbilityGenericReplicatedEvent::Type
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param CurrentPredictionKey FPredictionKey
function UAbilitySystemComponent:ServerSetReplicatedEvent(EventType, AbilityHandle, AbilityOriginalPredictionKey, CurrentPredictionKey) end

---@param EventType EAbilityGenericReplicatedEvent::Type
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param CurrentPredictionKey FPredictionKey
---@param VectorPayload FVector_NetQuantize100
function UAbilitySystemComponent:ServerSetReplicatedEventWithPayload(EventType, AbilityHandle, AbilityOriginalPredictionKey, CurrentPredictionKey, VectorPayload) end

---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param ReplicatedTargetDataHandle FGameplayAbilityTargetDataHandle
---@param ApplicationTag FGameplayTag
---@param CurrentPredictionKey FPredictionKey
function UAbilitySystemComponent:ServerSetReplicatedTargetData(AbilityHandle, AbilityOriginalPredictionKey, ReplicatedTargetDataHandle, ApplicationTag, CurrentPredictionKey) end

---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param CurrentPredictionKey FPredictionKey
function UAbilitySystemComponent:ServerSetReplicatedTargetDataCancelled(AbilityHandle, AbilityOriginalPredictionKey, CurrentPredictionKey) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param InputPressed boolean
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:ServerTryActivateAbility(AbilityToActivate, InputPressed, PredictionKey) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param InputPressed boolean
---@param PredictionKey FPredictionKey
---@param TriggerEventData FGameplayEventData
function UAbilitySystemComponent:ServerTryActivateAbilityWithEventData(AbilityToActivate, InputPressed, PredictionKey, TriggerEventData) end

---@param ActiveHandle FActiveGameplayEffectHandle
---@param NewLevel int32
function UAbilitySystemComponent:SetActiveGameplayEffectLevel(ActiveHandle, NewLevel) end

---@param Query FGameplayEffectQuery
---@param NewLevel int32
function UAbilitySystemComponent:SetActiveGameplayEffectLevelUsingQuery(Query, NewLevel) end

---@param NewInhibit boolean
function UAbilitySystemComponent:SetUserAbilityActivationInhibited(NewInhibit) end

function UAbilitySystemComponent:TargetCancel() end

function UAbilitySystemComponent:TargetConfirm() end

---@param GameplayTagContainer FGameplayTagContainer
---@param bAllowRemoteActivation boolean
function UAbilitySystemComponent:TryActivateAbilitiesByTag(GameplayTagContainer, bAllowRemoteActivation) end

---@param InAbilityToActivate TSubclassOf<UGameplayAbility>
---@param bAllowRemoteActivation boolean
function UAbilitySystemComponent:TryActivateAbilityByClass(InAbilityToActivate, bAllowRemoteActivation) end

function UAbilitySystemGlobals:ListPlayerAbilities() end

---@param AbilityNameMatch FString
function UAbilitySystemGlobals:ServerActivatePlayerAbility(AbilityNameMatch) end

---@param AbilityNameMatch FString
function UAbilitySystemGlobals:ServerCancelPlayerAbility(AbilityNameMatch) end

---@param AbilityNameMatch FString
function UAbilitySystemGlobals:ServerEndPlayerAbility(AbilityNameMatch) end

function UAbilitySystemGlobals:ToggleIgnoreAbilitySystemCooldowns() end

function UAbilitySystemGlobals:ToggleIgnoreAbilitySystemCosts() end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param WorldDirection FVector
---@param Strength float
---@param Duration float
---@param bIsAdditive boolean
---@param StrengthOverTime UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish float
---@param bEnableGravity boolean
function UAbilityTask_ApplyRootMotionConstantForce:ApplyRootMotionConstantForce(OwningAbility, TaskInstanceName, WorldDirection, Strength, Duration, bIsAdditive, StrengthOverTime, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bEnableGravity) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param Rotation FRotator
---@param Distance float
---@param Height float
---@param Duration float
---@param MinimumLandedTriggerTime float
---@param bFinishOnLanded boolean
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish float
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
function UAbilityTask_ApplyRootMotionJumpForce:ApplyRootMotionJumpForce(OwningAbility, TaskInstanceName, Rotation, Distance, Height, Duration, MinimumLandedTriggerTime, bFinishOnLanded, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, PathOffsetCurve, TimeMappingCurve) end

function UAbilityTask_ApplyRootMotionJumpForce:Finish() end

---@param Hit FHitResult
function UAbilityTask_ApplyRootMotionJumpForce:OnLandedCallback(Hit) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param TargetActor AActor
---@param TargetLocationOffset FVector
---@param OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@param Duration float
---@param TargetLerpSpeedHorizontal UCurveFloat
---@param TargetLerpSpeedVertical UCurveFloat
---@param bSetNewMovementMode boolean
---@param MovementMode EMovementMode
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish float
---@param bDisableDestinationReachedInterrupt boolean
function UAbilityTask_ApplyRootMotionMoveToActorForce:ApplyRootMotionMoveToActorForce(OwningAbility, TaskInstanceName, TargetActor, TargetLocationOffset, OffsetAlignment, Duration, TargetLerpSpeedHorizontal, TargetLerpSpeedVertical, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, TimeMappingCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bDisableDestinationReachedInterrupt) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param TargetDataHandle FGameplayAbilityTargetDataHandle
---@param TargetDataIndex int32
---@param TargetActorIndex int32
---@param TargetLocationOffset FVector
---@param OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@param Duration float
---@param TargetLerpSpeedHorizontal UCurveFloat
---@param TargetLerpSpeedVertical UCurveFloat
---@param bSetNewMovementMode boolean
---@param MovementMode EMovementMode
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish float
---@param bDisableDestinationReachedInterrupt boolean
function UAbilityTask_ApplyRootMotionMoveToActorForce:ApplyRootMotionMoveToTargetDataActorForce(OwningAbility, TaskInstanceName, TargetDataHandle, TargetDataIndex, TargetActorIndex, TargetLocationOffset, OffsetAlignment, Duration, TargetLerpSpeedHorizontal, TargetLerpSpeedVertical, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, TimeMappingCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bDisableDestinationReachedInterrupt) end

function UAbilityTask_ApplyRootMotionMoveToActorForce:OnRep_TargetLocation() end

---@param OriginalTarget AActor
---@param NewTarget AActor
function UAbilityTask_ApplyRootMotionMoveToActorForce:OnTargetActorSwapped(OriginalTarget, NewTarget) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param TargetLocation FVector
---@param Duration float
---@param bSetNewMovementMode boolean
---@param MovementMode EMovementMode
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish float
function UAbilityTask_ApplyRootMotionMoveToForce:ApplyRootMotionMoveToForce(OwningAbility, TaskInstanceName, TargetLocation, Duration, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param Location FVector
---@param LocationActor AActor
---@param Strength float
---@param Duration float
---@param Radius float
---@param bIsPush boolean
---@param bIsAdditive boolean
---@param bNoZForce boolean
---@param StrengthDistanceFalloff UCurveFloat
---@param StrengthOverTime UCurveFloat
---@param bUseFixedWorldDirection boolean
---@param FixedWorldDirection FRotator
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish float
function UAbilityTask_ApplyRootMotionRadialForce:ApplyRootMotionRadialForce(OwningAbility, TaskInstanceName, Location, LocationActor, Strength, Duration, Radius, bIsPush, bIsAdditive, bNoZForce, StrengthDistanceFalloff, StrengthOverTime, bUseFixedWorldDirection, FixedWorldDirection, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param Location FVector
---@param Duration float
---@param OptionalInterpolationCurve UCurveFloat
---@param OptionalVectorInterpolationCurve UCurveVector
function UAbilityTask_MoveToLocation:MoveToLocation(OwningAbility, TaskInstanceName, Location, Duration, OptionalInterpolationCurve, OptionalVectorInterpolationCurve) end

function UAbilityTask_NetworkSyncPoint:OnSignalCallback() end

---@param OwningAbility UGameplayAbility
---@param SyncType EAbilityTaskNetSyncType
function UAbilityTask_NetworkSyncPoint:WaitNetSync(OwningAbility, SyncType) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param MontageToPlay UAnimMontage
---@param Rate float
---@param StartSection FName
---@param bStopWhenAbilityEnds boolean
---@param AnimRootMotionTranslationScale float
---@param StartTimeSeconds float
function UAbilityTask_PlayMontageAndWait:CreatePlayMontageAndWaitProxy(OwningAbility, TaskInstanceName, MontageToPlay, Rate, StartSection, bStopWhenAbilityEnds, AnimRootMotionTranslationScale, StartTimeSeconds) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UAbilityTask_PlayMontageAndWait:OnMontageBlendingOut(Montage, bInterrupted) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UAbilityTask_PlayMontageAndWait:OnMontageEnded(Montage, bInterrupted) end

function UAbilityTask_PlayMontageAndWait:OnMontageInterrupted() end

---@param OwningAbility UGameplayAbility
---@param TimeBetweenActions float
---@param TotalActionCount int32
function UAbilityTask_Repeat:RepeatAction(OwningAbility, TimeBetweenActions, TotalActionCount) end

---@param OwningAbility UGameplayAbility
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Class TSubclassOf<AActor>
---@param SpawnedActor AActor
function UAbilityTask_SpawnActor:BeginSpawningActor(OwningAbility, TargetData, Class, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param TargetData FGameplayAbilityTargetDataHandle
---@param SpawnedActor AActor
function UAbilityTask_SpawnActor:FinishSpawningActor(OwningAbility, TargetData, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Class TSubclassOf<AActor>
function UAbilityTask_SpawnActor:SpawnActor(OwningAbility, TargetData, Class) end

---@param OwningAbility UGameplayAbility
---@param StateName FName
---@param bEndCurrentState boolean
function UAbilityTask_StartAbilityState:StartAbilityState(OwningAbility, StateName, bEndCurrentState) end

---@param OwningAbility UGameplayAbility
---@param Class TSubclassOf<AGameplayAbilityTargetActor>
---@param SpawnedActor AGameplayAbilityTargetActor
function UAbilityTask_VisualizeTargeting:BeginSpawningActor(OwningAbility, Class, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param SpawnedActor AGameplayAbilityTargetActor
function UAbilityTask_VisualizeTargeting:FinishSpawningActor(OwningAbility, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param Class TSubclassOf<AGameplayAbilityTargetActor>
---@param TaskInstanceName FName
---@param Duration float
function UAbilityTask_VisualizeTargeting:VisualizeTargeting(OwningAbility, Class, TaskInstanceName, Duration) end

---@param OwningAbility UGameplayAbility
---@param TargetActor AGameplayAbilityTargetActor
---@param TaskInstanceName FName
---@param Duration float
function UAbilityTask_VisualizeTargeting:VisualizeTargetingUsingActor(OwningAbility, TargetActor, TaskInstanceName, Duration) end

---@param ActivatedAbility UGameplayAbility
function UAbilityTask_WaitAbilityActivate:OnAbilityActivate(ActivatedAbility) end

---@param OwningAbility UGameplayAbility
---@param WithTag FGameplayTag
---@param WithoutTag FGameplayTag
---@param IncludeTriggeredAbilities boolean
---@param TriggerOnce boolean
function UAbilityTask_WaitAbilityActivate:WaitForAbilityActivate(OwningAbility, WithTag, WithoutTag, IncludeTriggeredAbilities, TriggerOnce) end

---@param OwningAbility UGameplayAbility
---@param TagRequirements FGameplayTagRequirements
---@param IncludeTriggeredAbilities boolean
---@param TriggerOnce boolean
function UAbilityTask_WaitAbilityActivate:WaitForAbilityActivateWithTagRequirements(OwningAbility, TagRequirements, IncludeTriggeredAbilities, TriggerOnce) end

---@param OwningAbility UGameplayAbility
---@param Query FGameplayTagQuery
---@param IncludeTriggeredAbilities boolean
---@param TriggerOnce boolean
function UAbilityTask_WaitAbilityActivate:WaitForAbilityActivate_Query(OwningAbility, Query, IncludeTriggeredAbilities, TriggerOnce) end

---@param ActivatedAbility UGameplayAbility
function UAbilityTask_WaitAbilityCommit:OnAbilityCommit(ActivatedAbility) end

---@param OwningAbility UGameplayAbility
---@param WithTag FGameplayTag
---@param WithoutTage FGameplayTag
---@param TriggerOnce boolean
function UAbilityTask_WaitAbilityCommit:WaitForAbilityCommit(OwningAbility, WithTag, WithoutTage, TriggerOnce) end

---@param OwningAbility UGameplayAbility
---@param Query FGameplayTagQuery
---@param TriggerOnce boolean
function UAbilityTask_WaitAbilityCommit:WaitForAbilityCommit_Query(OwningAbility, Query, TriggerOnce) end

---@param OwningAbility UGameplayAbility
---@param Attribute FGameplayAttribute
---@param WithSrcTag FGameplayTag
---@param WithoutSrcTag FGameplayTag
---@param TriggerOnce boolean
---@param OptionalExternalOwner AActor
function UAbilityTask_WaitAttributeChange:WaitForAttributeChange(OwningAbility, Attribute, WithSrcTag, WithoutSrcTag, TriggerOnce, OptionalExternalOwner) end

---@param OwningAbility UGameplayAbility
---@param InAttribute FGameplayAttribute
---@param InWithTag FGameplayTag
---@param InWithoutTag FGameplayTag
---@param InComparisonType EWaitAttributeChangeComparison::Type
---@param InComparisonValue float
---@param TriggerOnce boolean
---@param OptionalExternalOwner AActor
function UAbilityTask_WaitAttributeChange:WaitForAttributeChangeWithComparison(OwningAbility, InAttribute, InWithTag, InWithoutTag, InComparisonType, InComparisonValue, TriggerOnce, OptionalExternalOwner) end

---@param OwningAbility UGameplayAbility
---@param AttributeNumerator FGameplayAttribute
---@param AttributeDenominator FGameplayAttribute
---@param ComparisonType EWaitAttributeChangeComparison::Type
---@param ComparisonValue float
---@param bTriggerOnce boolean
---@param OptionalExternalOwner AActor
function UAbilityTask_WaitAttributeChangeRatioThreshold:WaitForAttributeChangeRatioThreshold(OwningAbility, AttributeNumerator, AttributeDenominator, ComparisonType, ComparisonValue, bTriggerOnce, OptionalExternalOwner) end

---@param OwningAbility UGameplayAbility
---@param Attribute FGameplayAttribute
---@param ComparisonType EWaitAttributeChangeComparison::Type
---@param ComparisonValue float
---@param bTriggerOnce boolean
---@param OptionalExternalOwner AActor
function UAbilityTask_WaitAttributeChangeThreshold:WaitForAttributeChangeThreshold(OwningAbility, Attribute, ComparisonType, ComparisonValue, bTriggerOnce, OptionalExternalOwner) end

function UAbilityTask_WaitCancel:OnCancelCallback() end

function UAbilityTask_WaitCancel:OnLocalCancelCallback() end

---@param OwningAbility UGameplayAbility
function UAbilityTask_WaitCancel:WaitCancel(OwningAbility) end

---@param InAbility UGameplayAbility
function UAbilityTask_WaitConfirm:OnConfirmCallback(InAbility) end

---@param OwningAbility UGameplayAbility
function UAbilityTask_WaitConfirm:WaitConfirm(OwningAbility) end

function UAbilityTask_WaitConfirmCancel:OnCancelCallback() end

function UAbilityTask_WaitConfirmCancel:OnConfirmCallback() end

function UAbilityTask_WaitConfirmCancel:OnLocalCancelCallback() end

function UAbilityTask_WaitConfirmCancel:OnLocalConfirmCallback() end

---@param OwningAbility UGameplayAbility
function UAbilityTask_WaitConfirmCancel:WaitConfirmCancel(OwningAbility) end

---@param OwningAbility UGameplayAbility
---@param Time float
function UAbilityTask_WaitDelay:WaitDelay(OwningAbility, Time) end

---@param Target UAbilitySystemComponent
---@param SpecApplied FGameplayEffectSpec
---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilityTask_WaitGameplayEffectApplied:OnApplyGameplayEffectCallback(Target, SpecApplied, ActiveHandle) end

---@param OwningAbility UGameplayAbility
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param TriggerOnce boolean
---@param OptionalExternalOwner AActor
---@param ListenForPeriodicEffect boolean
function UAbilityTask_WaitGameplayEffectApplied_Self:WaitGameplayEffectAppliedToSelf(OwningAbility, SourceFilter, SourceTagRequirements, TargetTagRequirements, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffect) end

---@param OwningAbility UGameplayAbility
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagQuery FGameplayTagQuery
---@param TargetTagQuery FGameplayTagQuery
---@param TriggerOnce boolean
---@param OptionalExternalOwner AActor
---@param ListenForPeriodicEffect boolean
function UAbilityTask_WaitGameplayEffectApplied_Self:WaitGameplayEffectAppliedToSelf_Query(OwningAbility, SourceFilter, SourceTagQuery, TargetTagQuery, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffect) end

---@param OwningAbility UGameplayAbility
---@param TargetFilter FGameplayTargetDataFilterHandle
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param TriggerOnce boolean
---@param OptionalExternalOwner AActor
---@param ListenForPeriodicEffects boolean
function UAbilityTask_WaitGameplayEffectApplied_Target:WaitGameplayEffectAppliedToTarget(OwningAbility, TargetFilter, SourceTagRequirements, TargetTagRequirements, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffects) end

---@param OwningAbility UGameplayAbility
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagQuery FGameplayTagQuery
---@param TargetTagQuery FGameplayTagQuery
---@param TriggerOnce boolean
---@param OptionalExternalOwner AActor
---@param ListenForPeriodicEffect boolean
function UAbilityTask_WaitGameplayEffectApplied_Target:WaitGameplayEffectAppliedToTarget_Query(OwningAbility, SourceFilter, SourceTagQuery, TargetTagQuery, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffect) end

---@param OwningAbility UGameplayAbility
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param OptionalExternalTarget AActor
---@param OnlyTriggerOnce boolean
function UAbilityTask_WaitGameplayEffectBlockedImmunity:WaitGameplayEffectBlockedByImmunity(OwningAbility, SourceTagRequirements, TargetTagRequirements, OptionalExternalTarget, OnlyTriggerOnce) end

---@param InGameplayEffectRemovalInfo FGameplayEffectRemovalInfo
function UAbilityTask_WaitGameplayEffectRemoved:OnGameplayEffectRemoved(InGameplayEffectRemovalInfo) end

---@param OwningAbility UGameplayAbility
---@param Handle FActiveGameplayEffectHandle
function UAbilityTask_WaitGameplayEffectRemoved:WaitForGameplayEffectRemoved(OwningAbility, Handle) end

---@param Handle FActiveGameplayEffectHandle
---@param NewCount int32
---@param OldCount int32
function UAbilityTask_WaitGameplayEffectStackChange:OnGameplayEffectStackChange(Handle, NewCount, OldCount) end

---@param OwningAbility UGameplayAbility
---@param Handle FActiveGameplayEffectHandle
function UAbilityTask_WaitGameplayEffectStackChange:WaitForGameplayEffectStackChange(OwningAbility, Handle) end

---@param OwningAbility UGameplayAbility
---@param EventTag FGameplayTag
---@param OptionalExternalTarget AActor
---@param OnlyTriggerOnce boolean
---@param OnlyMatchExact boolean
function UAbilityTask_WaitGameplayEvent:WaitGameplayEvent(OwningAbility, EventTag, OptionalExternalTarget, OnlyTriggerOnce, OnlyMatchExact) end

---@param Tag FGameplayTag
---@param NewCount int32
function UAbilityTask_WaitGameplayTag:GameplayTagCallback(Tag, NewCount) end

---@param OwningAbility UGameplayAbility
---@param Tag FGameplayTag
---@param InOptionalExternalTarget AActor
---@param OnlyTriggerOnce boolean
function UAbilityTask_WaitGameplayTagAdded:WaitGameplayTagAdd(OwningAbility, Tag, InOptionalExternalTarget, OnlyTriggerOnce) end

---@param OwningAbility UGameplayAbility
---@param Tag FGameplayTag
---@param InOptionalExternalTarget AActor
---@param OnlyTriggerOnce boolean
function UAbilityTask_WaitGameplayTagRemoved:WaitGameplayTagRemove(OwningAbility, Tag, InOptionalExternalTarget, OnlyTriggerOnce) end

function UAbilityTask_WaitInputPress:OnPressCallback() end

---@param OwningAbility UGameplayAbility
---@param bTestAlreadyPressed boolean
function UAbilityTask_WaitInputPress:WaitInputPress(OwningAbility, bTestAlreadyPressed) end

function UAbilityTask_WaitInputRelease:OnReleaseCallback() end

---@param OwningAbility UGameplayAbility
---@param bTestAlreadyReleased boolean
function UAbilityTask_WaitInputRelease:WaitInputRelease(OwningAbility, bTestAlreadyReleased) end

---@param OwningAbility UGameplayAbility
---@param NewMode EMovementMode
function UAbilityTask_WaitMovementModeChange:CreateWaitMovementModeChange(OwningAbility, NewMode) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UAbilityTask_WaitMovementModeChange:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UAbilityTask_WaitOverlap:OnHitCallback(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param OwningAbility UGameplayAbility
function UAbilityTask_WaitOverlap:WaitForOverlap(OwningAbility) end

---@param OwningAbility UGameplayAbility
---@param Class TSubclassOf<AGameplayAbilityTargetActor>
---@param SpawnedActor AGameplayAbilityTargetActor
function UAbilityTask_WaitTargetData:BeginSpawningActor(OwningAbility, Class, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param SpawnedActor AGameplayAbilityTargetActor
function UAbilityTask_WaitTargetData:FinishSpawningActor(OwningAbility, SpawnedActor) end

---@param Data FGameplayAbilityTargetDataHandle
function UAbilityTask_WaitTargetData:OnTargetDataCancelledCallback(Data) end

---@param Data FGameplayAbilityTargetDataHandle
function UAbilityTask_WaitTargetData:OnTargetDataReadyCallback(Data) end

---@param Data FGameplayAbilityTargetDataHandle
---@param ActivationTag FGameplayTag
function UAbilityTask_WaitTargetData:OnTargetDataReplicatedCallback(Data, ActivationTag) end

function UAbilityTask_WaitTargetData:OnTargetDataReplicatedCancelledCallback() end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param ConfirmationType EGameplayTargetingConfirmation::Type
---@param Class TSubclassOf<AGameplayAbilityTargetActor>
function UAbilityTask_WaitTargetData:WaitTargetData(OwningAbility, TaskInstanceName, ConfirmationType, Class) end

---@param OwningAbility UGameplayAbility
---@param TaskInstanceName FName
---@param ConfirmationType EGameplayTargetingConfirmation::Type
---@param TargetActor AGameplayAbilityTargetActor
function UAbilityTask_WaitTargetData:WaitTargetDataUsingActor(OwningAbility, TaskInstanceName, ConfirmationType, TargetActor) end

---@param OwningAbility UGameplayAbility
---@param Direction FVector
---@param MinimumMagnitude float
function UAbilityTask_WaitVelocityChange:CreateWaitVelocityChange(OwningAbility, Direction, MinimumMagnitude) end

---@param GameplayEffectClass TSubclassOf<UGameplayEffect>
---@param GameplayEffectLevel int32
---@param Stacks int32
function UGameplayAbility:BP_ApplyGameplayEffectToOwner(GameplayEffectClass, GameplayEffectLevel, Stacks) end

---@param TargetData FGameplayAbilityTargetDataHandle
---@param GameplayEffectClass TSubclassOf<UGameplayEffect>
---@param GameplayEffectLevel int32
---@param Stacks int32
function UGameplayAbility:BP_ApplyGameplayEffectToTarget(TargetData, GameplayEffectClass, GameplayEffectLevel, Stacks) end

---@param WithAssetTags FGameplayTagContainer
---@param StacksToRemove int32
function UGameplayAbility:BP_RemoveGameplayEffectFromOwnerWithAssetTags(WithAssetTags, StacksToRemove) end

---@param WithGrantedTags FGameplayTagContainer
---@param StacksToRemove int32
function UGameplayAbility:BP_RemoveGameplayEffectFromOwnerWithGrantedTags(WithGrantedTags, StacksToRemove) end

---@param Handle FActiveGameplayEffectHandle
---@param StacksToRemove int32
function UGameplayAbility:BP_RemoveGameplayEffectFromOwnerWithHandle(Handle, StacksToRemove) end

---@param InstanceName FName
function UGameplayAbility:CancelTaskByInstanceName(InstanceName) end

---@param InstanceName FName
---@param bEndTask boolean
function UGameplayAbility:ConfirmTaskByInstanceName(InstanceName, bEndTask) end

---@param OptionalStateNameToEnd FName
function UGameplayAbility:EndAbilityState(OptionalStateNameToEnd) end

---@param InstanceName FName
function UGameplayAbility:EndTaskByInstanceName(InstanceName) end

function UGameplayAbility:GetAbilityLevel() end

---@param Handle FGameplayAbilitySpecHandle
---@param ActorInfo FGameplayAbilityActorInfo
function UGameplayAbility:GetAbilityLevel_BP(Handle, ActorInfo) end

function UGameplayAbility:GetAbilitySystemComponentFromActorInfo() end

function UGameplayAbility:GetActorInfo() end

function UGameplayAbility:GetAvatarActorFromActorInfo() end

---@param OptionalTargetData FGameplayAbilityTargetDataHandle
function UGameplayAbility:GetContextFromOwner(OptionalTargetData) end

function UGameplayAbility:GetCooldownTimeRemaining() end

function UGameplayAbility:GetCurrentMontage() end

function UGameplayAbility:GetCurrentSourceObject() end

function UGameplayAbility:GetGrantedByEffectContext() end

function UGameplayAbility:GetOwningActorFromActorInfo() end

function UGameplayAbility:GetOwningComponentFromActorInfo() end

---@param Handle FGameplayAbilitySpecHandle
---@param ActorInfo FGameplayAbilityActorInfo
function UGameplayAbility:GetSourceObject_BP(Handle, ActorInfo) end

function UGameplayAbility:InvalidateClientPredictionKey() end

function UGameplayAbility:IsLocallyControlled() end

function UGameplayAbility:K2_ActivateAbility() end

---@param EventData FGameplayEventData
function UGameplayAbility:K2_ActivateAbilityFromEvent(EventData) end

---@param GameplayCueTag FGameplayTag
---@param Context FGameplayEffectContextHandle
---@param bRemoveOnAbilityEnd boolean
function UGameplayAbility:K2_AddGameplayCue(GameplayCueTag, Context, bRemoveOnAbilityEnd) end

---@param GameplayCueTag FGameplayTag
---@param GameplayCueParameter FGameplayCueParameters
---@param bRemoveOnAbilityEnd boolean
function UGameplayAbility:K2_AddGameplayCueWithParams(GameplayCueTag, GameplayCueParameter, bRemoveOnAbilityEnd) end

---@param EffectSpecHandle FGameplayEffectSpecHandle
function UGameplayAbility:K2_ApplyGameplayEffectSpecToOwner(EffectSpecHandle) end

---@param EffectSpecHandle FGameplayEffectSpecHandle
---@param TargetData FGameplayAbilityTargetDataHandle
function UGameplayAbility:K2_ApplyGameplayEffectSpecToTarget(EffectSpecHandle, TargetData) end

---@param ActorInfo FGameplayAbilityActorInfo
---@param Handle FGameplayAbilitySpecHandle
---@param RelevantTags FGameplayTagContainer
function UGameplayAbility:K2_CanActivateAbility(ActorInfo, Handle, RelevantTags) end

function UGameplayAbility:K2_CancelAbility() end

function UGameplayAbility:K2_CheckAbilityCooldown() end

function UGameplayAbility:K2_CheckAbilityCost() end

function UGameplayAbility:K2_CommitAbility() end

---@param BroadcastCommitEvent boolean
---@param ForceCooldown boolean
function UGameplayAbility:K2_CommitAbilityCooldown(BroadcastCommitEvent, ForceCooldown) end

---@param BroadcastCommitEvent boolean
function UGameplayAbility:K2_CommitAbilityCost(BroadcastCommitEvent) end

function UGameplayAbility:K2_CommitExecute() end

function UGameplayAbility:K2_EndAbility() end

---@param GameplayCueTag FGameplayTag
---@param Context FGameplayEffectContextHandle
function UGameplayAbility:K2_ExecuteGameplayCue(GameplayCueTag, Context) end

---@param GameplayCueTag FGameplayTag
---@param GameplayCueParameters FGameplayCueParameters
function UGameplayAbility:K2_ExecuteGameplayCueWithParams(GameplayCueTag, GameplayCueParameters) end

function UGameplayAbility:K2_HasAuthority() end

---@param bWasCancelled boolean
function UGameplayAbility:K2_OnEndAbility(bWasCancelled) end

---@param GameplayCueTag FGameplayTag
function UGameplayAbility:K2_RemoveGameplayCue(GameplayCueTag) end

---@param ActorInfo FGameplayAbilityActorInfo
---@param Payload FGameplayEventData
function UGameplayAbility:K2_ShouldAbilityRespondToEvent(ActorInfo, Payload) end

---@param GameplayEffectClass TSubclassOf<UGameplayEffect>
---@param Level float
function UGameplayAbility:MakeOutgoingGameplayEffectSpec(GameplayEffectClass, Level) end

function UGameplayAbility:MakeTargetLocationInfoFromOwnerActor() end

---@param SocketName FName
function UGameplayAbility:MakeTargetLocationInfoFromOwnerSkeletalMeshComponent(SocketName) end

---@param SectionName FName
function UGameplayAbility:MontageJumpToSection(SectionName) end

---@param FromSectionName FName
---@param ToSectionName FName
function UGameplayAbility:MontageSetNextSectionName(FromSectionName, ToSectionName) end

---@param OverrideBlendOutTime float
function UGameplayAbility:MontageStop(OverrideBlendOutTime) end

function UGameplayAbility:RemoveGrantedByEffect() end

---@param EventTag FGameplayTag
---@param Payload FGameplayEventData
function UGameplayAbility:SendGameplayEvent(EventTag, Payload) end

---@param bCanBeCanceled boolean
function UGameplayAbility:SetCanBeCanceled(bCanBeCanceled) end

---@param bShouldBlockAbilities boolean
function UGameplayAbility:SetShouldBlockOtherAbilities(bShouldBlockAbilities) end

---@param MyTarget AActor
---@param EventType EGameplayCueEvent::Type
---@param Parameters FGameplayCueParameters
function UGameplayCueNotify_Static:K2_HandleGameplayCue(MyTarget, EventType, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function UGameplayCueNotify_Static:OnActive(MyTarget, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function UGameplayCueNotify_Static:OnExecute(MyTarget, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function UGameplayCueNotify_Static:OnRemove(MyTarget, Parameters) end

---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
function UGameplayCueNotify_Static:WhileActive(MyTarget, Parameters) end

---@param GameplayEffect UGameplayEffect
---@param Spec FGameplayEffectSpec
---@param ASC UAbilitySystemComponent
function UGameplayEffectCustomApplicationRequirement:CanApplyGameplayEffect(GameplayEffect, Spec, ASC) end

---@param ExecutionParams FGameplayEffectCustomExecutionParameters
---@param OutExecutionOutput FGameplayEffectCustomExecutionOutput
function UGameplayEffectExecutionCalculation:Execute(ExecutionParams, OutExecutionOutput) end

---@param Spec FGameplayEffectSpec
function UGameplayModMagnitudeCalculation:CalculateBaseMagnitude(Spec) end

---@param Tag FGameplayTag
---@param NewCount int32
---@param ASC UAbilitySystemComponent
---@param idx int32
function UGameplayTagReponseTable:TagResponseEvent(Tag, NewCount, ASC, idx) end

---@param InGameplayCueTrackHandler FSetSequencerTrackHandlerInGameplayCueTrackHandler
function UMovieSceneGameplayCueTrack:SetSequencerTrackHandler(InGameplayCueTrackHandler) end
