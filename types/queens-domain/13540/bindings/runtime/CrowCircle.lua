---@meta

---@class ACrowCircle_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spline USplineComponent
---@field DefaultSceneRoot USceneComponent
---@field StartingCrowCount int32
---@field StarterCrowLoc FVector
---@field BirdClass TSubclassOf<ACrow_Bp_C>
---@field RandomDirections boolean
---@field Fog UENVControlData_C
local ACrowCircle_C = {}

---@param EntryPoint int32
function ACrowCircle_C:ExecuteUbergraph_CrowCircle(EntryPoint) end

function ACrowCircle_C:ReceiveBeginPlay() end
