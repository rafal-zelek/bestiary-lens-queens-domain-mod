---@meta

---@class Amealticket_BP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_FoodCharm_SM UStaticMeshComponent
local Amealticket_BP_C = {}

---@param EntryPoint int32
function Amealticket_BP_C:ExecuteUbergraph_mealticket_BP(EntryPoint) end

---@param DialoguePickup boolean
function Amealticket_BP_C:Pickup(DialoguePickup) end
