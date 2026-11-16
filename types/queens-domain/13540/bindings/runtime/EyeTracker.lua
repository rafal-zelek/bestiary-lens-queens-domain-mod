---@meta

---@class FEyeTrackerGazeData
---@field GazeOrigin FVector
---@field GazeDirection FVector
---@field FixationPoint FVector
---@field ConfidenceValue float
local FEyeTrackerGazeData = {}

---@class FEyeTrackerStereoGazeData
---@field LeftEyeOrigin FVector
---@field LeftEyeDirection FVector
---@field RightEyeOrigin FVector
---@field RightEyeDirection FVector
---@field FixationPoint FVector
---@field ConfidenceValue float
local FEyeTrackerStereoGazeData = {}

---@class UEyeTrackerFunctionLibrary : UBlueprintFunctionLibrary
local UEyeTrackerFunctionLibrary = {}

---@param OutGazeData FEyeTrackerGazeData
function UEyeTrackerFunctionLibrary:GetGazeData(OutGazeData) end

---@param OutGazeData FEyeTrackerStereoGazeData
function UEyeTrackerFunctionLibrary:GetStereoGazeData(OutGazeData) end

function UEyeTrackerFunctionLibrary:IsEyeTrackerConnected() end

function UEyeTrackerFunctionLibrary:IsStereoGazeDataAvailable() end

---@param PlayerController APlayerController
function UEyeTrackerFunctionLibrary:SetEyeTrackedPlayer(PlayerController) end
