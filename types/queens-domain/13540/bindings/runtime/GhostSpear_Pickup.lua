---@meta

---@class AGhostSpear_Pickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractibleBox UBoxComponent
---@field FishManSpawner AFishManerSpawner_Base_C
local AGhostSpear_Pickup_C = {}

---@param EntryPoint int32
function AGhostSpear_Pickup_C:ExecuteUbergraph_GhostSpear_Pickup(EntryPoint) end

---@param DialoguePickup boolean
function AGhostSpear_Pickup_C:Pickup(DialoguePickup) end
