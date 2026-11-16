---@meta

---@class FSoundCueCrossfadeInfo
---@field DistanceInfo FDistanceDatum
---@field Sound USoundWave
local FSoundCueCrossfadeInfo = {}

---@class FSoundCueTemplateQualitySettings
---@field DisplayName FText
---@field MaxConcatenatedVariations int32
---@field MaxRandomizedVariations int32
---@field MaxMixVariations int32
local FSoundCueTemplateQualitySettings = {}

---@class USoundCueContainer : USoundCueTemplate
local USoundCueContainer = {}

---@class USoundCueDistanceCrossfade : USoundCueTemplate
local USoundCueDistanceCrossfade = {}

---@class USoundCueTemplate : USoundCue
local USoundCueTemplate = {}

---@class USoundCueTemplateSettings : UDeveloperSettings
local USoundCueTemplateSettings = {}
