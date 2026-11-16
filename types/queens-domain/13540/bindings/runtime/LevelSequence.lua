---@meta

---@class ALevelSequenceActor : AActor
---@field PlaybackSettings FMovieSceneSequencePlaybackSettings
---@field SequencePlayer ULevelSequencePlayer
---@field LevelSequence FSoftObjectPath
---@field CameraSettings FLevelSequenceCameraSettings
---@field BurnInOptions ULevelSequenceBurnInOptions
---@field BindingOverrides UMovieSceneBindingOverrides
---@field bAutoPlay boolean
---@field bOverrideInstanceData boolean
---@field bReplicatePlayback boolean
---@field DefaultInstanceData UObject
---@field BurnInInstance ULevelSequenceBurnIn
---@field bShowBurnin boolean
local ALevelSequenceActor = {}

---@class ALevelSequenceMediaController : AActor
---@field Sequence ALevelSequenceActor
---@field MediaComponent UMediaComponent
---@field ServerStartTimeSeconds float
local ALevelSequenceMediaController = {}

---@class FBoundActorProxy
local FBoundActorProxy = {}

---@class FLevelSequenceAnimSequenceLinkItem
---@field SkelTrackGuid FGuid
---@field PathToAnimSequence FSoftObjectPath
---@field bExportTransforms boolean
---@field bExportCurves boolean
---@field bRecordInWorldSpace boolean
local FLevelSequenceAnimSequenceLinkItem = {}

---@class FLevelSequenceBindingReference
---@field PackageName FString
---@field ExternalObjectPath FSoftObjectPath
---@field ObjectPath FString
local FLevelSequenceBindingReference = {}

---@class FLevelSequenceBindingReferenceArray
---@field References TArray<FLevelSequenceBindingReference>
local FLevelSequenceBindingReferenceArray = {}

---@class FLevelSequenceBindingReferences
---@field BindingIdToReferences TMap<FGuid, FLevelSequenceBindingReferenceArray>
---@field AnimSequenceInstances TSet<FGuid>
local FLevelSequenceBindingReferences = {}

---@class FLevelSequenceCameraSettings
---@field bOverrideAspectRatioAxisConstraint boolean
---@field AspectRatioAxisConstraint EAspectRatioAxisConstraint
local FLevelSequenceCameraSettings = {}

---@class FLevelSequenceLegacyObjectReference
local FLevelSequenceLegacyObjectReference = {}

---@class FLevelSequenceObject
---@field ObjectOrOwner TLazyObjectPtr<UObject>
---@field ComponentName FString
---@field CachedComponent TWeakObjectPtr<UObject>
local FLevelSequenceObject = {}

---@class FLevelSequenceObjectReferenceMap
local FLevelSequenceObjectReferenceMap = {}

---@class FLevelSequencePlayerSnapshot
---@field MasterName FString
---@field MasterTime FQualifiedFrameTime
---@field SourceTime FQualifiedFrameTime
---@field CurrentShotName FString
---@field CurrentShotLocalTime FQualifiedFrameTime
---@field CurrentShotSourceTime FQualifiedFrameTime
---@field SourceTimecode FString
---@field CameraComponent TSoftObjectPtr<UCameraComponent>
---@field Settings FLevelSequenceSnapshotSettings
---@field ActiveShot ULevelSequence
---@field ShotID FMovieSceneSequenceID
local FLevelSequencePlayerSnapshot = {}

---@class FLevelSequenceSnapshotSettings
---@field ZeroPadAmount uint8
---@field FrameRate FFrameRate
local FLevelSequenceSnapshotSettings = {}

---@class ILevelSequenceMetaData : IInterface
local ILevelSequenceMetaData = {}

---@class UAnimSequenceLevelSequenceLink : UAssetUserData
---@field SkelTrackGuid FGuid
---@field PathToLevelSequence FSoftObjectPath
local UAnimSequenceLevelSequenceLink = {}

---@class UDefaultLevelSequenceInstanceData : UObject
---@field TransformOriginActor AActor
---@field TransformOrigin FTransform
local UDefaultLevelSequenceInstanceData = {}

---@class ULegacyLevelSequenceDirectorBlueprint : UBlueprint
local ULegacyLevelSequenceDirectorBlueprint = {}

---@class ULevelSequence : UMovieSceneSequence
---@field MovieScene UMovieScene
---@field ObjectReferences FLevelSequenceObjectReferenceMap
---@field BindingReferences FLevelSequenceBindingReferences
---@field PossessedObjects TMap<FString, FLevelSequenceObject>
---@field DirectorClass UClass
---@field AssetUserData TArray<UAssetUserData>
local ULevelSequence = {}

---@class ULevelSequenceAnimSequenceLink : UAssetUserData
---@field AnimSequenceLinks TArray<FLevelSequenceAnimSequenceLinkItem>
local ULevelSequenceAnimSequenceLink = {}

---@class ULevelSequenceBurnIn : UUserWidget
---@field FrameInformation FLevelSequencePlayerSnapshot
---@field LevelSequenceActor ALevelSequenceActor
local ULevelSequenceBurnIn = {}

---@class ULevelSequenceBurnInInitSettings : UObject
local ULevelSequenceBurnInInitSettings = {}

---@class ULevelSequenceBurnInOptions : UObject
---@field bUseBurnIn boolean
---@field BurnInClass FSoftClassPath
---@field Settings ULevelSequenceBurnInInitSettings
local ULevelSequenceBurnInOptions = {}

---@class ULevelSequenceDirector : UObject
---@field Player ULevelSequencePlayer
---@field SubSequenceID int32
---@field MovieScenePlayerIndex int32
local ULevelSequenceDirector = {}

---@class ULevelSequencePlayer : UMovieSceneSequencePlayer
---@field OnCameraCut FLevelSequencePlayerOnCameraCut
local ULevelSequencePlayer = {}

---@class ULevelSequenceProjectSettings : UDeveloperSettings
---@field bDefaultLockEngineToDisplayRate boolean
---@field DefaultDisplayRate FString
---@field DefaultTickResolution FString
---@field DefaultClockSource EUpdateClockSource
local ULevelSequenceProjectSettings = {}

---@param Binding FMovieSceneObjectBindingID
---@param Actor AActor
---@param bAllowBindingsFromAsset boolean
function ALevelSequenceActor:AddBinding(Binding, Actor, bAllowBindingsFromAsset) end

---@param BindingTag FName
---@param Actor AActor
---@param bAllowBindingsFromAsset boolean
function ALevelSequenceActor:AddBindingByTag(BindingTag, Actor, bAllowBindingsFromAsset) end

---@param Tag FName
function ALevelSequenceActor:FindNamedBinding(Tag) end

---@param Tag FName
function ALevelSequenceActor:FindNamedBindings(Tag) end

function ALevelSequenceActor:GetSequence() end

function ALevelSequenceActor:GetSequencePlayer() end

function ALevelSequenceActor:HideBurnin() end

function ALevelSequenceActor:LoadSequence() end

function ALevelSequenceActor:OnLevelSequenceLoaded__DelegateSignature() end

---@param Binding FMovieSceneObjectBindingID
---@param Actor AActor
function ALevelSequenceActor:RemoveBinding(Binding, Actor) end

---@param Tag FName
---@param Actor AActor
function ALevelSequenceActor:RemoveBindingByTag(Tag, Actor) end

---@param Binding FMovieSceneObjectBindingID
function ALevelSequenceActor:ResetBinding(Binding) end

function ALevelSequenceActor:ResetBindings() end

---@param Binding FMovieSceneObjectBindingID
---@param Actors TArray<AActor>
---@param bAllowBindingsFromAsset boolean
function ALevelSequenceActor:SetBinding(Binding, Actors, bAllowBindingsFromAsset) end

---@param BindingTag FName
---@param Actors TArray<AActor>
---@param bAllowBindingsFromAsset boolean
function ALevelSequenceActor:SetBindingByTag(BindingTag, Actors, bAllowBindingsFromAsset) end

---@param ReplicatePlayback boolean
function ALevelSequenceActor:SetReplicatePlayback(ReplicatePlayback) end

---@param InSequence ULevelSequence
function ALevelSequenceActor:SetSequence(InSequence) end

function ALevelSequenceActor:ShowBurnin() end

function ALevelSequenceMediaController:GetMediaComponent() end

function ALevelSequenceMediaController:GetSequence() end

function ALevelSequenceMediaController:OnRep_ServerStartTimeSeconds() end

function ALevelSequenceMediaController:Play() end

---@param DesyncThresholdSeconds float
function ALevelSequenceMediaController:SynchronizeToServer(DesyncThresholdSeconds) end

---@param InMetaData UObject
function ULevelSequence:CopyMetaData(InMetaData) end

---@param InClass UClass
function ULevelSequence:FindMetaDataByClass(InClass) end

---@param InClass UClass
function ULevelSequence:FindOrAddMetaDataByClass(InClass) end

---@param InClass UClass
function ULevelSequence:RemoveMetaDataByClass(InClass) end

function ULevelSequenceBurnIn:GetSettingsClass() end

---@param InSettings UObject
function ULevelSequenceBurnIn:SetSettings(InSettings) end

---@param InBurnInClass FSoftClassPath
function ULevelSequenceBurnInOptions:SetBurnIn(InBurnInClass) end

---@param ObjectBinding FMovieSceneObjectBindingID
function ULevelSequenceDirector:GetBoundActor(ObjectBinding) end

---@param ObjectBinding FMovieSceneObjectBindingID
function ULevelSequenceDirector:GetBoundActors(ObjectBinding) end

---@param ObjectBinding FMovieSceneObjectBindingID
function ULevelSequenceDirector:GetBoundObject(ObjectBinding) end

---@param ObjectBinding FMovieSceneObjectBindingID
function ULevelSequenceDirector:GetBoundObjects(ObjectBinding) end

function ULevelSequenceDirector:GetSequence() end

function ULevelSequenceDirector:OnCreated() end

---@param WorldContextObject UObject
---@param LevelSequence ULevelSequence
---@param Settings FMovieSceneSequencePlaybackSettings
---@param OutActor ALevelSequenceActor
function ULevelSequencePlayer:CreateLevelSequencePlayer(WorldContextObject, LevelSequence, Settings, OutActor) end

function ULevelSequencePlayer:GetActiveCameraComponent() end
