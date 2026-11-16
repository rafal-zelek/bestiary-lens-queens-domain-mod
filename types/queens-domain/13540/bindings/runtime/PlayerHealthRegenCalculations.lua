---@meta

---@class UPlayerHealthRegenCalculations_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NextTickBuildup float
local UPlayerHealthRegenCalculations_C = {}

---@param EntryPoint int32
function UPlayerHealthRegenCalculations_C:ExecuteUbergraph_PlayerHealthRegenCalculations(EntryPoint) end

---@param DeltaSeconds float
function UPlayerHealthRegenCalculations_C:ReceiveTick(DeltaSeconds) end
