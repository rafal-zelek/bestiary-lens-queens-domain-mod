---@meta

---@class FTimeSynthClipHandle
---@field ClipName FName
---@field ClipId int32
local FTimeSynthClipHandle = {}

---@class FTimeSynthClipSound
---@field SoundWave USoundWave
---@field RandomWeight float
---@field DistanceRange FVector2D
local FTimeSynthClipSound = {}

---@class FTimeSynthEnvelopeFollowerSettings
---@field AttackTime float
---@field ReleaseTime float
---@field PeakMode ETimeSynthEnvelopeFollowerPeakMode
---@field bIsAnalogMode boolean
local FTimeSynthEnvelopeFollowerSettings = {}

---@class FTimeSynthFilterSettings
---@field FilterType ETimeSynthFilterType
---@field CutoffFrequency float
---@field FilterQ float
local FTimeSynthFilterSettings = {}

---@class FTimeSynthQuantizationSettings
---@field BeatsPerMinute float
---@field BeatsPerBar int32
---@field BeatDivision ETimeSynthBeatDivision
---@field EventDelaySeconds float
---@field GlobalQuantization ETimeSynthEventQuantization
local FTimeSynthQuantizationSettings = {}

---@class FTimeSynthSpectralData
---@field FrequencyHz float
---@field Magnitude float
local FTimeSynthSpectralData = {}

---@class FTimeSynthTimeDef
---@field NumBars int32
---@field NumBeats int32
local FTimeSynthTimeDef = {}

---@class UTimeSynthClip : UObject
---@field Sounds TArray<FTimeSynthClipSound>
---@field VolumeScaleDb FVector2D
---@field PitchScaleSemitones FVector2D
---@field FadeInTime FTimeSynthTimeDef
---@field bApplyFadeOut boolean
---@field FadeOutTime FTimeSynthTimeDef
---@field ClipDuration FTimeSynthTimeDef
---@field ClipQuantization ETimeSynthEventClipQuantization
local UTimeSynthClip = {}

---@class UTimeSynthComponent : USynthComponent
---@field QuantizationSettings FTimeSynthQuantizationSettings
---@field bEnableSpectralAnalysis boolean
---@field FrequenciesToAnalyze TArray<float>
---@field FFTSize ETimeSynthFFTSize
---@field OnPlaybackTime FTimeSynthComponentOnPlaybackTime
---@field bIsFilterAEnabled boolean
---@field bIsFilterBEnabled boolean
---@field FilterASettings FTimeSynthFilterSettings
---@field FilterBSettings FTimeSynthFilterSettings
---@field bIsEnvelopeFollowerEnabled boolean
---@field EnvelopeFollowerSettings FTimeSynthEnvelopeFollowerSettings
---@field MaxPoolSize int32
local UTimeSynthComponent = {}

---@class UTimeSynthVolumeGroup : UObject
---@field DefaultVolume float
local UTimeSynthVolumeGroup = {}

---@param QuantizationType ETimeSynthEventQuantization
---@param OnQuantizationEvent FAddQuantizationEventDelegateOnQuantizationEvent
function UTimeSynthComponent:AddQuantizationEventDelegate(QuantizationType, OnQuantizationEvent) end

function UTimeSynthComponent:GetBPM() end

function UTimeSynthComponent:GetEnvelopeFollowerValue() end

function UTimeSynthComponent:GetMaxActiveClipLimit() end

function UTimeSynthComponent:GetSpectralData() end

function UTimeSynthComponent:HasActiveClips() end

---@param InClip UTimeSynthClip
---@param InVolumeGroup UTimeSynthVolumeGroup
function UTimeSynthComponent:PlayClip(InClip, InVolumeGroup) end

function UTimeSynthComponent:ResetSeed() end

---@param BeatsPerMinute float
function UTimeSynthComponent:SetBPM(BeatsPerMinute) end

---@param bInIsEnabled boolean
function UTimeSynthComponent:SetEnvelopeFollowerEnabled(bInIsEnabled) end

---@param InSettings FTimeSynthEnvelopeFollowerSettings
function UTimeSynthComponent:SetEnvelopeFollowerSettings(InSettings) end

---@param InFFTSize ETimeSynthFFTSize
function UTimeSynthComponent:SetFFTSize(InFFTSize) end

---@param Filter ETimeSynthFilter
---@param BIsEnabled boolean
function UTimeSynthComponent:SetFilterEnabled(Filter, BIsEnabled) end

---@param Filter ETimeSynthFilter
---@param InSettings FTimeSynthFilterSettings
function UTimeSynthComponent:SetFilterSettings(Filter, InSettings) end

---@param InQuantizationSettings FTimeSynthQuantizationSettings
function UTimeSynthComponent:SetQuantizationSettings(InQuantizationSettings) end

---@param InSeed int32
function UTimeSynthComponent:SetSeed(InSeed) end

---@param InVolumeGroup UTimeSynthVolumeGroup
---@param VolumeDb float
---@param FadeTimeSec float
function UTimeSynthComponent:SetVolumeGroup(InVolumeGroup, VolumeDb, FadeTimeSec) end

---@param InClipHandle FTimeSynthClipHandle
---@param EventQuantization ETimeSynthEventClipQuantization
function UTimeSynthComponent:StopClip(InClipHandle, EventQuantization) end

---@param InClipHandle FTimeSynthClipHandle
---@param EventQuantization ETimeSynthEventClipQuantization
---@param FadeTime FTimeSynthTimeDef
function UTimeSynthComponent:StopClipWithFadeOverride(InClipHandle, EventQuantization, FadeTime) end

---@param InVolumeGroup UTimeSynthVolumeGroup
---@param EventQuantization ETimeSynthEventClipQuantization
function UTimeSynthComponent:StopSoundsOnVolumeGroup(InVolumeGroup, EventQuantization) end

---@param InVolumeGroup UTimeSynthVolumeGroup
---@param EventQuantization ETimeSynthEventClipQuantization
---@param FadeTime FTimeSynthTimeDef
function UTimeSynthComponent:StopSoundsOnVolumeGroupWithFadeOverride(InVolumeGroup, EventQuantization, FadeTime) end
