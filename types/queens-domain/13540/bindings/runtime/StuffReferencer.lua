---@meta

---@class AStuffReferencer_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field StuffToReference TSet<UObject>
local AStuffReferencer_C = {}

---@param Loaded TArray<UObject>
function AStuffReferencer_C:Completed_02EB695D4B7556247A0E7E8A30DDF6C9(Loaded) end

---@param Loaded TArray<UObject>
function AStuffReferencer_C:Completed_3C21D2C64D9D201FCC8887BC28646331(Loaded) end

---@param Loaded TArray<UObject>
function AStuffReferencer_C:Completed_420633E2492C2E0C85219F8667308658(Loaded) end

---@param Loaded TArray<UObject>
function AStuffReferencer_C:Completed_7047911848786B9E8A25549C86718163(Loaded) end

---@param EntryPoint int32
function AStuffReferencer_C:ExecuteUbergraph_StuffReferencer(EntryPoint) end

function AStuffReferencer_C:FillReferenceList() end

function AStuffReferencer_C:ReceiveBeginPlay() end
