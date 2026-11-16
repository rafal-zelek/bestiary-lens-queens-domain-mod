---@meta

---@class AFireball_Pickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AFireball_Pickup_C = {}

---@param EntryPoint int32
function AFireball_Pickup_C:ExecuteUbergraph_Fireball_Pickup(EntryPoint) end

---@param DeltaSeconds float
function AFireball_Pickup_C:ReceiveTick(DeltaSeconds) end
