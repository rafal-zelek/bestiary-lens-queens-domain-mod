---@meta

---@class ABugDBNoteActor : AActor
---@field Contents FString
---@field Key FString
local ABugDBNoteActor = {}

---@class AFB_HUD_Base : AHUD
---@field DebugFont UFont
local AFB_HUD_Base = {}

---@class AFB_PlayerController : APlayerController
---@field LeftStickHandler UFB_AnalogueStickHandler
---@field RightStickHandler UFB_AnalogueStickHandler
---@field LeftAnalogueOut FFB_PlayerControllerLeftAnalogueOut
---@field RightAnalogueOut FFB_PlayerControllerRightAnalogueOut
local AFB_PlayerController = {}

---@class AFB_StaticMeshActor : AStaticMeshActor
local AFB_StaticMeshActor = {}

---@class AFS_NiagaraEnvironmentFX : ANiagaraActor
---@field DeactivateDistance float
---@field Hysterisis float
local AFS_NiagaraEnvironmentFX = {}

---@class FFB_BugDBEntry
---@field Location FTransform
---@field Contents FString
---@field Key FString
---@field bDeleted boolean
local FFB_BugDBEntry = {}

---@class FFB_RandomPoolInitSettings
---@field bAutoRandomizeOnGameStart boolean
local FFB_RandomPoolInitSettings = {}

---@class FFB_UnrealXoshiroContainer
local FFB_UnrealXoshiroContainer = {}

---@class FSHA256Hash
local FSHA256Hash = {}

---@class UBugDBAPI : UObject
---@field FullListRequestReturnDelegate FBugDBAPIFullListRequestReturnDelegate
---@field ReportBugReturnDelegate FBugDBAPIReportBugReturnDelegate
---@field DeleteBugReturnDelegate FBugDBAPIDeleteBugReturnDelegate
local UBugDBAPI = {}

---@class UBugDB_Utils : UBlueprintFunctionLibrary
local UBugDB_Utils = {}

---@class UFB_AnalogueStickHandler : UActorComponent
---@field Output FFB_AnalogueStickHandlerOutput
---@field bInternalYFlip boolean
---@field InnerDeadzone float
---@field OuterDeadzone float
---@field IntensityCurve UCurveFloat
---@field AngleCurve UCurveFloat
---@field AccelerationCurve UCurveFloat
---@field bEnableAcceleration boolean
---@field MinAccelerationSpeed float
---@field MaxAccelerationSpeed float
---@field bDisableTuning boolean
---@field DebugSize float
---@field DebugPos FVector2D
---@field DebugIndex int32
---@field HudRef AFB_HUD_Base
local UFB_AnalogueStickHandler = {}

---@class UFB_AnimationUtils : UBlueprintFunctionLibrary
local UFB_AnimationUtils = {}

---@class UFB_BPHelpers : UBlueprintFunctionLibrary
local UFB_BPHelpers = {}

---@class UFB_CollisionUtils : UBlueprintFunctionLibrary
local UFB_CollisionUtils = {}

---@class UFB_GraphicsUtils : UBlueprintFunctionLibrary
local UFB_GraphicsUtils = {}

---@class UFB_HashingUtils : UBlueprintFunctionLibrary
local UFB_HashingUtils = {}

---@class UFB_InputSubsystem : UGameInstanceSubsystem
---@field CachedPreUIKeyStates TMap<FKey, boolean>
---@field OnButtonDown FFB_InputSubsystemOnButtonDown
---@field OnButtonUp FFB_InputSubsystemOnButtonUp
---@field OnMouseButtonDown FFB_InputSubsystemOnMouseButtonDown
---@field OnMouseButtonUp FFB_InputSubsystemOnMouseButtonUp
---@field OnAnalogue FFB_InputSubsystemOnAnalogue
---@field OnMouseMove FFB_InputSubsystemOnMouseMove
local UFB_InputSubsystem = {}

---@class UFB_LocUtils_Funcs : UBlueprintFunctionLibrary
local UFB_LocUtils_Funcs = {}

---@class UFB_MusicComponent : UActorComponent
---@field Cue USoundCue
---@field Concurrency USoundConcurrency
---@field ClockHandle UQuartzClockHandle
---@field IntroComponent UAudioComponent
---@field LoopComponent UAudioComponent
local UFB_MusicComponent = {}

---@class UFB_PropertyHelpers : UBlueprintFunctionLibrary
local UFB_PropertyHelpers = {}

---@class UFB_RandomSubsystem : UEngineSubsystem
local UFB_RandomSubsystem = {}

---@class UFB_RandomUtils : UBlueprintFunctionLibrary
local UFB_RandomUtils = {}

---@class UFB_Settings : UDeveloperSettings
---@field RandomPools TMap<FName, FFB_RandomPoolInitSettings>
local UFB_Settings = {}

---@class UFB_SlateNavUtils : UBlueprintFunctionLibrary
local UFB_SlateNavUtils = {}

---@class UFB_SoundNodeDelayConcatenator : USoundNode
---@field InputVolume TArray<float>
---@field SegmentDelays TArray<float>
local UFB_SoundNodeDelayConcatenator = {}

---@class UFB_TimerHelpers : UBlueprintFunctionLibrary
local UFB_TimerHelpers = {}

---@class UTickGroupComponent : UActorComponent
---@field OnTick FTickGroupComponentOnTick
local UTickGroupComponent = {}

function ABugDBNoteActor:Delete() end

function AFB_PlayerController:IsCursorCaptured() end

---@param Val FVector2D
function AFB_PlayerController:RecieveLeftAnalogue(Val) end

---@param Val FVector2D
function AFB_PlayerController:RecieveRightAnalogue(Val) end

---@param bEnabled boolean
function AFB_StaticMeshActor:SetClusteringEnabled(bEnabled) end

---@param Key FString
function UBugDBAPI:DeleteBug(Key) end

---@param Location FTransform
---@param Contents FString
function UBugDBAPI:ReportBug(Location, Contents) end

function UBugDBAPI:RequestDBList() end

---@param WorldContext UObject
---@param Content FString
---@param Key FString
---@param Location FTransform
---@param Class TSubclassOf<ABugDBNoteActor>
function UBugDB_Utils:CreateBugDBNote(WorldContext, Content, Key, Location, Class) end

---@param WorldContext UObject
---@param Base UAnimMontage
---@param Curve FRuntimeFloatCurve
---@param bNormalizeToMontageLength boolean
function UFB_AnimationUtils:CreateMontageWithCustomTimeStretchCurve(WorldContext, Base, Curve, bNormalizeToMontageLength) end

---@param Actor AActor
function UFB_BPHelpers:ActorQuickLoc(Actor) end

---@param Actor AActor
function UFB_BPHelpers:ActorQuickRot(Actor) end

---@param Actor AActor
function UFB_BPHelpers:ActorQuickTrans(Actor) end

---@param ViewOrigin FVector
---@param ScreenWidth float
---@param FOV float
---@param BoostFactor float
---@param bOverrideLocation boolean
---@param Duration float
---@param ActorToBoost AActor
function UFB_BPHelpers:AddViewOriginToStreaming(ViewOrigin, ScreenWidth, FOV, BoostFactor, bOverrideLocation, Duration, ActorToBoost) end

---@param Target UObject
function UFB_BPHelpers:CancelAllCancellableLatentActions(Target) end

---@param Target UObject
function UFB_BPHelpers:CancelAllLatentActions(Target) end

---@param Comp USceneComponent
function UFB_BPHelpers:ComponentQuickLoc(Comp) end

---@param Comp USceneComponent
function UFB_BPHelpers:ComponentQuickRot(Comp) end

---@param Comp USceneComponent
function UFB_BPHelpers:ComponentQuickTrans(Comp) end

---@param From UWidget
---@param To UWidget
function UFB_BPHelpers:CopyWidgetNavigation(From, To) end

---@param In UObject
---@param Return EFastValidReturn
function UFB_BPHelpers:FB_FastIsValid(In, Return) end

---@param AnyAssetPath FString
---@param OutFailureReason FString
function UFB_BPHelpers:FB_FindAssetData(AnyAssetPath, OutFailureReason) end

---@param WorldContextObject UObject
---@param inString FString
---@param bPrintToScreen boolean
---@param bPrintEvenInTest boolean
---@param bPrintToLog boolean
---@param TextColor FLinearColor
---@param Duration float
function UFB_BPHelpers:FB_PrintString(WorldContextObject, inString, bPrintToScreen, bPrintEvenInTest, bPrintToLog, TextColor, Duration) end

---@param WorldContextObject UObject
---@param InText FText
---@param bPrintToScreen boolean
---@param bPrintEvenInTest boolean
---@param bPrintToLog boolean
---@param TextColor FLinearColor
---@param Duration float
function UFB_BPHelpers:FB_PrintText(WorldContextObject, InText, bPrintToScreen, bPrintEvenInTest, bPrintToLog, TextColor, Duration) end

---@param Vol float
function UFB_BPHelpers:FB_SetUnfocusedVolumeMultiplier(Vol) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param TraceChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHits TArray<FHitResult>
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_LineTraceMulti(WorldContextObject, TraceType, A, B, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHits TArray<FHitResult>
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_LineTraceMultiForObjects(WorldContextObject, TraceType, A, B, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param TraceChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHit FHitResult
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_LineTraceSingle(WorldContextObject, TraceType, A, B, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHit FHitResult
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_LineTraceSingleForObjects(WorldContextObject, TraceType, A, B, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param Radius float
---@param TraceChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHits TArray<FHitResult>
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_SphereTraceMulti(WorldContextObject, TraceType, A, B, Radius, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param Radius float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHits TArray<FHitResult>
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_SphereTraceMultiForObjects(WorldContextObject, TraceType, A, B, Radius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param Radius float
---@param TraceChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHit FHitResult
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_SphereTraceSingle(WorldContextObject, TraceType, A, B, Radius, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
---@param TraceType EFS_TraceType
---@param A FVector
---@param B FVector
---@param Radius float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHit FHitResult
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
function UFB_BPHelpers:FS_SphereTraceSingleForObjects(WorldContextObject, TraceType, A, B, Radius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param LevelStreaming ULevelStreaming
---@param Class TSubclassOf<AActor>
---@param OutActors TArray<AActor>
function UFB_BPHelpers:FindActorsOfClassInLevelInstance(LevelStreaming, Class, OutActors) end

---@param Component UAudioComponent
function UFB_BPHelpers:GetAudioPlaybackTime(Component) end

---@param Comp UNavLinkCustomComponent
function UFB_BPHelpers:GetCustomLinkID(Comp) end

---@param Root FName
function UFB_BPHelpers:GetDependenciesRecursively(Root) end

---@param Root FName
---@param ClassFilter TArray<UClass>
function UFB_BPHelpers:GetDependenciesRecursivelyFiltered(Root, ClassFilter) end

function UFB_BPHelpers:GetEngineGlobalGamma() end

---@param ActionName FName
function UFB_BPHelpers:GetInputActionMapping(ActionName) end

---@param Component UActorComponent
function UFB_BPHelpers:GetIsNavigationRelevant(Component) end

---@param Light ULightComponent
function UFB_BPHelpers:GetLightMaxDrawDistance(Light) end

---@param Light ULightComponent
function UFB_BPHelpers:GetLightMaxDrawDistanceFade(Light) end

---@param WorldContextObject UObject
function UFB_BPHelpers:GetPlayerProjectionMatrix(WorldContextObject) end

---@param Volume APostProcessVolume
---@param WeightCheckPos FVector
function UFB_BPHelpers:GetPostProcessVolumeLocalWeight(Volume, WeightCheckPos) end

---@param Cue USoundCue
function UFB_BPHelpers:GetWavesFromFBConcatenator(Cue) end

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
function UFB_BPHelpers:InteractTrace(WorldContextObject, Start, End, InteractThroughDistance, Radius, InteractChannel, VisibilityChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, SelectedTarget, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UObject
function UFB_BPHelpers:IsFocusFixEnabled(WorldContextObject) end

---@param WorldContextObject UObject
function UFB_BPHelpers:IsInUIInputMode(WorldContextObject) end

---@param ActionName FName
---@param Key FKey
function UFB_BPHelpers:IsKeyUsedByAction(ActionName, Key) end

---@param WorldContextObject UObject
---@param bReturnFalseInNonEditor boolean
function UFB_BPHelpers:IsPIERunning(WorldContextObject, bReturnFalseInNonEditor) end

---@param SequencePlayer ULevelSequencePlayer
---@param MarkedFrameLabel FString
---@param Method EUpdatePositionMethod
function UFB_BPHelpers:JumpToMarkedFrameRecursively(SequencePlayer, MarkedFrameLabel, Method) end

---@param Path FString
---@param Contents FString
function UFB_BPHelpers:LoadTextFile(Path, Contents) end

---@param Object UObject
function UFB_BPHelpers:MarkObjectDirty(Object) end

---@param Rotation FRotator
---@param Plane FPlane
function UFB_BPHelpers:MirrorRotationAcrossPlane(Rotation, Plane) end

---@param Pos FVector
---@param Offset FVector
---@param OffsetMult float
function UFB_BPHelpers:OffsetVector(Pos, Offset, OffsetMult) end

---@param In FRotator
function UFB_BPHelpers:OnlyPitch(In) end

---@param In FRotator
function UFB_BPHelpers:OnlyRoll(In) end

---@param In FRotator
function UFB_BPHelpers:OnlyYaw(In) end

---@param Path FString
function UFB_BPHelpers:OpenFileExplorer(Path) end

---@param Texture UTexture2D
function UFB_BPHelpers:RefreshTextureProps(Texture) end

---@param WorldContextObject UObject
---@param Constraint EAspectRatioAxisConstraint
function UFB_BPHelpers:SetAspectRatioAxisConstraint(WorldContextObject, Constraint) end

---@param Comp UPathFollowingComponent
---@param DistanceThreshold float
---@param Interval float
---@param NumSamples int32
function UFB_BPHelpers:SetBlockDetectionParams(Comp, DistanceThreshold, Interval, NumSamples) end

---@param Target UActorComponent
---@param bTickInEditor boolean
function UFB_BPHelpers:SetComponentTickInEditor(Target, bTickInEditor) end

---@param Component USceneComponent
---@param Velocity FVector
---@param bSetOnAllChildren boolean
function UFB_BPHelpers:SetComponentVelocity(Component, Velocity, bSetOnAllChildren) end

---@param NewGamma float
function UFB_BPHelpers:SetEngineGlobalGamma(NewGamma) end

---@param Cur FFloatSpringState
---@param State float
function UFB_BPHelpers:SetFFloatSpringValue(Cur, State) end

---@param Cur FFloatSpringState
---@param Velocity float
function UFB_BPHelpers:SetFFloatSpringVelocity(Cur, Velocity) end

---@param Component UActorComponent
---@param bRelevant boolean
function UFB_BPHelpers:SetIsNavigationRelevant(Component, bRelevant) end

---@param Light ULightComponent
---@param Distance float
function UFB_BPHelpers:SetLightMaxDrawDistance(Light, Distance) end

---@param Light ULightComponent
---@param Fade float
function UFB_BPHelpers:SetLightMaxDrawDistanceFade(Light, Fade) end

---@param Object UObject
function UFB_BPHelpers:SetObjectTransient(Object) end

---@param Submix USoundSubmix
---@param Dry float
function UFB_BPHelpers:SetSubmixDry(Submix, Dry) end

---@param Submix USoundSubmix
---@param Wet float
function UFB_BPHelpers:SetSubmixWet(Submix, Wet) end

---@param Target AActor
function UFB_BPHelpers:StopTimelinesAndDelays(Target) end

---@param ThumbstickNavigationEnabled boolean
function UFB_BPHelpers:ToggleThumbstickUINavigation(ThumbstickNavigationEnabled) end

---@param Weights TArray<float>
function UFB_BPHelpers:WeightedRandomSmall(Weights) end

---@param WorldContextObject UObject
---@param BoxPos FVector
---@param BoxExtent FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ActorClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutActors TArray<AActor>
---@param bDrawDebug boolean
---@param DebugDuration float
---@param DebugColor FLinearColor
function UFB_CollisionUtils:BoxOverlapActors(WorldContextObject, BoxPos, BoxExtent, ObjectTypes, ActorClassFilter, ActorsToIgnore, OutActors, bDrawDebug, DebugDuration, DebugColor) end

---@param WorldContextObject UObject
---@param BoxPos FVector
---@param Extent FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ComponentClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutComponents TArray<UPrimitiveComponent>
---@param bDrawDebug boolean
---@param DebugDuration float
---@param DebugColor FLinearColor
function UFB_CollisionUtils:BoxOverlapComponents(WorldContextObject, BoxPos, Extent, ObjectTypes, ComponentClassFilter, ActorsToIgnore, OutComponents, bDrawDebug, DebugDuration, DebugColor) end

---@param WorldContextObject UObject
---@param CapsulePos FVector
---@param Radius float
---@param HalfHeight float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ActorClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutActors TArray<AActor>
---@param bDrawDebug boolean
---@param DebugDuration float
---@param DebugColor FLinearColor
function UFB_CollisionUtils:CapsuleOverlapActors(WorldContextObject, CapsulePos, Radius, HalfHeight, ObjectTypes, ActorClassFilter, ActorsToIgnore, OutActors, bDrawDebug, DebugDuration, DebugColor) end

---@param WorldContextObject UObject
---@param CapsulePos FVector
---@param Radius float
---@param HalfHeight float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ComponentClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutComponents TArray<UPrimitiveComponent>
---@param bDrawDebug boolean
---@param DebugDuration float
---@param DebugColor FLinearColor
function UFB_CollisionUtils:CapsuleOverlapComponents(WorldContextObject, CapsulePos, Radius, HalfHeight, ObjectTypes, ComponentClassFilter, ActorsToIgnore, OutComponents, bDrawDebug, DebugDuration, DebugColor) end

---@param WorldContextObject UObject
---@param Component UPrimitiveComponent
---@param bDynamicModsOnly boolean
function UFB_CollisionUtils:RequestNavUpdateAroundComponent(WorldContextObject, Component, bDynamicModsOnly) end

---@param WorldContextObject UObject
---@param Area FBox
---@param bDynamicModsOnly boolean
function UFB_CollisionUtils:RequestNavUpdateInArea(WorldContextObject, Area, bDynamicModsOnly) end

---@param WorldContextObject UObject
---@param SpherePos FVector
---@param SphereRadius float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ActorClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutActors TArray<AActor>
---@param bDrawDebug boolean
---@param DebugDuration float
---@param DebugColor FLinearColor
function UFB_CollisionUtils:SphereOverlapActors(WorldContextObject, SpherePos, SphereRadius, ObjectTypes, ActorClassFilter, ActorsToIgnore, OutActors, bDrawDebug, DebugDuration, DebugColor) end

---@param WorldContextObject UObject
---@param SpherePos FVector
---@param SphereRadius float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ComponentClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutComponents TArray<UPrimitiveComponent>
---@param bDrawDebug boolean
---@param DebugDuration float
---@param DebugColor FLinearColor
function UFB_CollisionUtils:SphereOverlapComponents(WorldContextObject, SpherePos, SphereRadius, ObjectTypes, ComponentClassFilter, ActorsToIgnore, OutComponents, bDrawDebug, DebugDuration, DebugColor) end

---@param Comp UPrimitiveComponent
---@param Index int32
---@param Value float
function UFB_GraphicsUtils:GetCustomPrimitiveData(Comp, Index, Value) end

---@param Comp UPrimitiveComponent
---@param Index int32
---@param Value float
function UFB_GraphicsUtils:GetDefaultCustomPrimitiveData(Comp, Index, Value) end

---@param RT UTextureRenderTarget2D
---@param SizeX int32
---@param SizeY int32
function UFB_GraphicsUtils:ResizeRenderTarget(RT, SizeX, SizeY) end

---@param RT UTextureRenderTarget2D
function UFB_GraphicsUtils:WaitForRTToBeReady(RT) end

---@param Bytes TArray<uint8>
function UFB_HashingUtils:SHA256HashBytes(Bytes) end

---@param Str FString
function UFB_HashingUtils:SHA256HashString(Str) end

---@param WorldContextObject UObject
---@param MappingsToIgnore TSet<FName>
function UFB_InputSubsystem:CacheInputStatePreUIMode(WorldContextObject, MappingsToIgnore) end

---@param WorldContexObject UObject
---@param Key FKey
function UFB_InputSubsystem:GetAnalogueValue(WorldContexObject, Key) end

---@param WorldContextObject UObject
---@param Action FName
function UFB_InputSubsystem:GetInputAxisValue(WorldContextObject, Action) end

---@param WorldContextObject UObject
---@param Action FName
---@param bIsGamepadKey boolean
function UFB_InputSubsystem:IsInputActionKeyDown(WorldContextObject, Action, bIsGamepadKey) end

---@param WorldContextObject UObject
---@param Key FKey
function UFB_InputSubsystem:IsKeyDown(WorldContextObject, Key) end

---@param WorldContextObject UObject
function UFB_InputSubsystem:TickKeyStates(WorldContextObject) end

---@param WorldContextObject UObject
---@param MappingsToIgnore TSet<FName>
function UFB_InputSubsystem:UpdateInputComponentsPostUIMode(WorldContextObject, MappingsToIgnore) end

function UFB_LocUtils_Funcs:FB_DisableGameCultureOverride() end

function UFB_LocUtils_Funcs:FB_GetGameCulture() end

---@param CultureCode FString
---@param bSaveToConfig boolean
function UFB_LocUtils_Funcs:FB_SetGameCulture(CultureCode, bSaveToConfig) end

function UFB_MusicComponent:OnIntroFinished() end

function UFB_MusicComponent:OnLoopFinished() end

---@param Volume float
function UFB_MusicComponent:SetVolume(Volume) end

function UFB_MusicComponent:Stop() end

---@param Object UObject
---@param PropertyName FName
---@param Out boolean
function UFB_PropertyHelpers:GetBoolProperty(Object, PropertyName, Out) end

---@param Class UClass
---@param PropertyName FName
---@param Out boolean
function UFB_PropertyHelpers:GetDefaultBoolProperty(Class, PropertyName, Out) end

---@param Class UClass
---@param PropertyName FName
---@param Out float
function UFB_PropertyHelpers:GetDefaultFloatProperty(Class, PropertyName, Out) end

---@param Class UClass
---@param PropertyName FName
---@param Out int32
function UFB_PropertyHelpers:GetDefaultIntProperty(Class, PropertyName, Out) end

---@param Class UClass
---@param PropertyName FName
---@param Out FString
function UFB_PropertyHelpers:GetDefaultStringProperty(Class, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param Out float
function UFB_PropertyHelpers:GetFloatProperty(Object, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param Out int32
function UFB_PropertyHelpers:GetIntProperty(Object, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param Out FString
function UFB_PropertyHelpers:GetStringProperty(Object, PropertyName, Out) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue boolean
function UFB_PropertyHelpers:SetBoolProperty(Object, PropertyName, NewValue) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue float
function UFB_PropertyHelpers:SetFloatProperty(Object, PropertyName, NewValue) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue int32
function UFB_PropertyHelpers:SetIntProperty(Object, PropertyName, NewValue) end

---@param Object UObject
---@param PropertyName FName
---@param NewValue FString
function UFB_PropertyHelpers:SetStringProperty(Object, PropertyName, NewValue) end

function UFB_RandomSubsystem:ResetRandomPools() end

---@param Pool FName
---@param Weight float
function UFB_RandomUtils:FB_GetRandomBool(Pool, Weight) end

---@param Pool FName
function UFB_RandomUtils:FB_GetRandomFloat(Pool) end

---@param Pool FName
---@param Min float
---@param Max float
function UFB_RandomUtils:FB_GetRandomFloatInRange(Pool, Min, Max) end

function UFB_SlateNavUtils:InitFBGamepadSupport() end

function UFB_SlateNavUtils:IsSlateGamepadEnabled() end

---@param bEnabled boolean
function UFB_SlateNavUtils:SetSlateGamepadEnabled(bEnabled) end

---@param Target UObject
function UFB_TimerHelpers:CancelAllCancellableLatentActions(Target) end

---@param Target UObject
function UFB_TimerHelpers:CancelAllLatentActions(Target) end

---@param WorldContextObject UObject
---@param Mode EFB_CancellableDelayMode
---@param Duration float
---@param bIgnoreTimeDilation boolean
---@param bRetriggerable boolean
---@param LatentInfo FLatentActionInfo
function UFB_TimerHelpers:CancellableDelay(WorldContextObject, Mode, Duration, bIgnoreTimeDilation, bRetriggerable, LatentInfo) end

---@param WorldContextObject UObject
---@param Mode EFB_CancellableDelayMode
---@param Return EFB_CooldownReturn
---@param Duration float
---@param LatentInfo FLatentActionInfo
function UFB_TimerHelpers:Cooldown(WorldContextObject, Mode, Return, Duration, LatentInfo) end

---@param WorldContextObject UObject
---@param Mode EFB_QuickTLMode
---@param Return EFB_QuickTLReturn
---@param Progress float
---@param Duration float
---@param bIgnoreTimeDilation boolean
---@param Curve EAlphaBlendOption
---@param OptionalCustomCurve UCurveFloat
---@param LatentInfo FLatentActionInfo
function UFB_TimerHelpers:QuickTimeline(WorldContextObject, Mode, Return, Progress, Duration, bIgnoreTimeDilation, Curve, OptionalCustomCurve, LatentInfo) end

---@param Target AActor
function UFB_TimerHelpers:StopTimelinesAndDelays(Target) end
