---@meta

---@class ARustySword_Shop_Pickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractibleBox UBoxComponent
---@field FishManSpawner AFishManerSpawner_Base_C
local ARustySword_Shop_Pickup_C = {}

---@param EntryPoint int32
function ARustySword_Shop_Pickup_C:ExecuteUbergraph_RustySword_Shop_Pickup(EntryPoint) end

---@param DialoguePickup boolean
function ARustySword_Shop_Pickup_C:Pickup(DialoguePickup) end
