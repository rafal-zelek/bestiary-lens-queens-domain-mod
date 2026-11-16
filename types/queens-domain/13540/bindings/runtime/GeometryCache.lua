---@meta

---@class AGeometryCacheActor : AActor
---@field GeometryCacheComponent UGeometryCacheComponent
local AGeometryCacheActor = {}

---@class FGeometryCacheMeshBatchInfo
local FGeometryCacheMeshBatchInfo = {}

---@class FGeometryCacheMeshData
local FGeometryCacheMeshData = {}

---@class FGeometryCacheVertexInfo
local FGeometryCacheVertexInfo = {}

---@class FTrackRenderData
local FTrackRenderData = {}

---@class UDEPRECATED_GeometryCacheTrack_FlipbookAnimation : UGeometryCacheTrack
---@field NumMeshSamples uint32
local UDEPRECATED_GeometryCacheTrack_FlipbookAnimation = {}

---@class UDEPRECATED_GeometryCacheTrack_TransformAnimation : UGeometryCacheTrack
local UDEPRECATED_GeometryCacheTrack_TransformAnimation = {}

---@class UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation : UGeometryCacheTrack
local UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation = {}

---@class UGeometryCache : UObject
---@field Materials TArray<UMaterialInterface>
---@field Tracks TArray<UGeometryCacheTrack>
---@field StartFrame int32
---@field EndFrame int32
---@field Hash uint64
local UGeometryCache = {}

---@class UGeometryCacheCodecBase : UObject
---@field TopologyRanges TArray<int32>
local UGeometryCacheCodecBase = {}

---@class UGeometryCacheCodecRaw : UGeometryCacheCodecBase
---@field DummyProperty int32
local UGeometryCacheCodecRaw = {}

---@class UGeometryCacheCodecV1 : UGeometryCacheCodecBase
local UGeometryCacheCodecV1 = {}

---@class UGeometryCacheComponent : UMeshComponent
---@field GeometryCache UGeometryCache
---@field bRunning boolean
---@field bLooping boolean
---@field bExtrapolateFrames boolean
---@field StartTimeOffset float
---@field PlaybackSpeed float
---@field MotionVectorScale float
---@field NumTracks int32
---@field ElapsedTime float
---@field Duration float
---@field bManualTick boolean
local UGeometryCacheComponent = {}

---@class UGeometryCacheTrack : UObject
---@field Duration float
local UGeometryCacheTrack = {}

---@class UGeometryCacheTrackStreamable : UGeometryCacheTrack
---@field Codec UGeometryCacheCodecBase
---@field StartSampleTime float
local UGeometryCacheTrackStreamable = {}

function AGeometryCacheActor:GetGeometryCacheComponent() end

---@param MeshData FGeometryCacheMeshData
---@param SampleTime float
function UDEPRECATED_GeometryCacheTrack_FlipbookAnimation:AddMeshSample(MeshData, SampleTime) end

---@param NewMeshData FGeometryCacheMeshData
function UDEPRECATED_GeometryCacheTrack_TransformAnimation:SetMesh(NewMeshData) end

---@param NewMeshData FGeometryCacheMeshData
function UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation:SetMesh(NewMeshData) end

function UGeometryCacheComponent:GetAnimationTime() end

function UGeometryCacheComponent:GetDuration() end

function UGeometryCacheComponent:GetMotionVectorScale() end

function UGeometryCacheComponent:GetNumberOfFrames() end

function UGeometryCacheComponent:GetPlaybackDirection() end

function UGeometryCacheComponent:GetPlaybackSpeed() end

function UGeometryCacheComponent:GetStartTimeOffset() end

function UGeometryCacheComponent:IsExtrapolatingFrames() end

function UGeometryCacheComponent:IsLooping() end

function UGeometryCacheComponent:IsPlaying() end

function UGeometryCacheComponent:IsPlayingReversed() end

function UGeometryCacheComponent:Pause() end

function UGeometryCacheComponent:Play() end

function UGeometryCacheComponent:PlayFromStart() end

function UGeometryCacheComponent:PlayReversed() end

function UGeometryCacheComponent:PlayReversedFromEnd() end

---@param bNewExtrapolating boolean
function UGeometryCacheComponent:SetExtrapolateFrames(bNewExtrapolating) end

---@param NewGeomCache UGeometryCache
function UGeometryCacheComponent:SetGeometryCache(NewGeomCache) end

---@param bNewLooping boolean
function UGeometryCacheComponent:SetLooping(bNewLooping) end

---@param NewMotionVectorScale float
function UGeometryCacheComponent:SetMotionVectorScale(NewMotionVectorScale) end

---@param NewPlaybackSpeed float
function UGeometryCacheComponent:SetPlaybackSpeed(NewPlaybackSpeed) end

---@param NewStartTimeOffset float
function UGeometryCacheComponent:SetStartTimeOffset(NewStartTimeOffset) end

function UGeometryCacheComponent:Stop() end

---@param Time float
---@param bInIsRunning boolean
---@param bInBackwards boolean
---@param bInIsLooping boolean
function UGeometryCacheComponent:TickAtThisTime(Time, bInIsRunning, bInBackwards, bInIsLooping) end
