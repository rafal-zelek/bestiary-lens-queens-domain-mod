---@meta

---@class AGameInstanceTicker_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
local AGameInstanceTicker_C = {}

---@param EntryPoint int32
function AGameInstanceTicker_C:ExecuteUbergraph_GameInstanceTicker(EntryPoint) end

---@param DeltaSeconds float
function AGameInstanceTicker_C:ReceiveTick(DeltaSeconds) end
