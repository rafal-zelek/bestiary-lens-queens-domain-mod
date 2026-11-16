---@meta

---@class AWindCutter_Pickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AWindCutter_Pickup_C = {}

---@param EntryPoint int32
function AWindCutter_Pickup_C:ExecuteUbergraph_WindCutter_Pickup(EntryPoint) end

---@param DeltaSeconds float
function AWindCutter_Pickup_C:ReceiveTick(DeltaSeconds) end
