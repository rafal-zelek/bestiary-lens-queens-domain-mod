---@meta

---@class UWoodClubEvolved_HealEffect_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field remainingDuration float
---@field HealingPerSecond float
---@field TickBuildup float
local UWoodClubEvolved_HealEffect_C = {}

---@param EntryPoint int32
function UWoodClubEvolved_HealEffect_C:ExecuteUbergraph_WoodClubEvolved_HealEffect(EntryPoint) end

---@param DeltaSeconds float
function UWoodClubEvolved_HealEffect_C:ReceiveTick(DeltaSeconds) end
