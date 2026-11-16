---@meta

---@class FTimedDataChannelSampleTime
local FTimedDataChannelSampleTime = {}

---@class FTimedDataInputEvaluationData
---@field DistanceToNewestSampleSeconds float
---@field DistanceToOldestSampleSeconds float
local FTimedDataInputEvaluationData = {}

---@class UFixedFrameRateCustomTimeStep : UEngineCustomTimeStep
local UFixedFrameRateCustomTimeStep = {}

---@class UGenlockedCustomTimeStep : UFixedFrameRateCustomTimeStep
local UGenlockedCustomTimeStep = {}

---@class UGenlockedFixedRateCustomTimeStep : UGenlockedCustomTimeStep
---@field FrameRate FFrameRate
local UGenlockedFixedRateCustomTimeStep = {}

---@class UGenlockedTimecodeProvider : UTimecodeProvider
---@field bUseGenlockToCount boolean
local UGenlockedTimecodeProvider = {}

---@class UTimeManagementBlueprintLibrary : UBlueprintFunctionLibrary
local UTimeManagementBlueprintLibrary = {}

---@class UTimeSynchronizationSource : UObject
---@field bUseForSynchronization boolean
---@field FrameOffset int32
local UTimeSynchronizationSource = {}

---@param A FFrameNumber
---@param B FFrameNumber
function UTimeManagementBlueprintLibrary:Add_FrameNumberFrameNumber(A, B) end

---@param A FFrameNumber
---@param B int32
function UTimeManagementBlueprintLibrary:Add_FrameNumberInteger(A, B) end

---@param InFrameNumber FFrameNumber
function UTimeManagementBlueprintLibrary:Conv_FrameNumberToInteger(InFrameNumber) end

---@param InFrameRate FFrameRate
function UTimeManagementBlueprintLibrary:Conv_FrameRateToSeconds(InFrameRate) end

---@param InFrameTime FQualifiedFrameTime
function UTimeManagementBlueprintLibrary:Conv_QualifiedFrameTimeToSeconds(InFrameTime) end

---@param InTimecode FTimecode
---@param bForceSignDisplay boolean
function UTimeManagementBlueprintLibrary:Conv_TimecodeToString(InTimecode, bForceSignDisplay) end

---@param A FFrameNumber
---@param B int32
function UTimeManagementBlueprintLibrary:Divide_FrameNumberInteger(A, B) end

function UTimeManagementBlueprintLibrary:GetTimecode() end

function UTimeManagementBlueprintLibrary:GetTimecodeFrameRate() end

---@param InFrameRate FFrameRate
function UTimeManagementBlueprintLibrary:IsValid_Framerate(InFrameRate) end

---@param InFrameRate FFrameRate
---@param OtherFramerate FFrameRate
function UTimeManagementBlueprintLibrary:IsValid_MultipleOf(InFrameRate, OtherFramerate) end

---@param A FFrameNumber
---@param B int32
function UTimeManagementBlueprintLibrary:Multiply_FrameNumberInteger(A, B) end

---@param TimeInSeconds float
---@param FrameRate FFrameRate
function UTimeManagementBlueprintLibrary:Multiply_SecondsFrameRate(TimeInSeconds, FrameRate) end

---@param SourceTime FFrameTime
---@param SourceRate FFrameRate
---@param SnapToRate FFrameRate
function UTimeManagementBlueprintLibrary:SnapFrameTimeToRate(SourceTime, SourceRate, SnapToRate) end

---@param A FFrameNumber
---@param B FFrameNumber
function UTimeManagementBlueprintLibrary:Subtract_FrameNumberFrameNumber(A, B) end

---@param A FFrameNumber
---@param B int32
function UTimeManagementBlueprintLibrary:Subtract_FrameNumberInteger(A, B) end

---@param SourceTime FFrameTime
---@param SourceRate FFrameRate
---@param DestinationRate FFrameRate
function UTimeManagementBlueprintLibrary:TransformTime(SourceTime, SourceRate, DestinationRate) end
