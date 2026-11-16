---@meta

---@class FSoundVariation
---@field SoundWave USoundWave
---@field ProbabilityWeight float
---@field VolumeRange FVector2D
---@field PitchRange FVector2D
local FSoundVariation = {}

---@class USoundSimple : USoundBase
---@field Variations TArray<FSoundVariation>
---@field SoundWave USoundWave
local USoundSimple = {}

---@class USoundUtilitiesBPFunctionLibrary : UBlueprintFunctionLibrary
local USoundUtilitiesBPFunctionLibrary = {}

---@param InDecibels float
function USoundUtilitiesBPFunctionLibrary:ConvertDecibelsToLinear(InDecibels) end

---@param InLinear float
---@param InFloor float
function USoundUtilitiesBPFunctionLibrary:ConvertLinearToDecibels(InLinear, InFloor) end

---@param InQ float
function USoundUtilitiesBPFunctionLibrary:GetBandwidthFromQ(InQ) end

---@param BeatsPerMinute float
---@param BeatMultiplier int32
---@param DivisionsOfWholeNote int32
function USoundUtilitiesBPFunctionLibrary:GetBeatTempo(BeatsPerMinute, BeatMultiplier, DivisionsOfWholeNote) end

---@param MidiNote int32
function USoundUtilitiesBPFunctionLibrary:GetFrequencyFromMIDIPitch(MidiNote) end

---@param InPitchSemitones float
function USoundUtilitiesBPFunctionLibrary:GetFrequencyMultiplierFromSemitones(InPitchSemitones) end

---@param InVelocity int32
function USoundUtilitiesBPFunctionLibrary:GetGainFromMidiVelocity(InVelocity) end

---@param InValue float
---@param InDomain FVector2D
---@param InRange FVector2D
function USoundUtilitiesBPFunctionLibrary:GetLinearFrequencyClamped(InValue, InDomain, InRange) end

---@param InValue float
---@param InDomain FVector2D
---@param InRange FVector2D
function USoundUtilitiesBPFunctionLibrary:GetLogFrequencyClamped(InValue, InDomain, InRange) end

---@param Frequency float
function USoundUtilitiesBPFunctionLibrary:GetMIDIPitchFromFrequency(Frequency) end

---@param BaseMidiNote int32
---@param TargetMidiNote int32
function USoundUtilitiesBPFunctionLibrary:GetPitchScaleFromMIDIPitch(BaseMidiNote, TargetMidiNote) end

---@param InBandwidth float
function USoundUtilitiesBPFunctionLibrary:GetQFromBandwidth(InBandwidth) end
