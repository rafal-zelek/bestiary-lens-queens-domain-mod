---@meta

---@class AKingSword_Remnant_BP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field King_Sword_Dead_SM UStaticMeshComponent
local AKingSword_Remnant_BP_C = {}

---@param EntryPoint int32
function AKingSword_Remnant_BP_C:ExecuteUbergraph_KingSword_Remnant_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AKingSword_Remnant_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param DialoguePickup boolean
function AKingSword_Remnant_BP_C:Pickup(DialoguePickup) end
