---@meta

---@class AB0Blade_Pickup_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractibleBox UBoxComponent
---@field FishManSpawner AFishManerSpawner_Base_C
local AB0Blade_Pickup_C = {}

---@param EntryPoint int32
function AB0Blade_Pickup_C:ExecuteUbergraph_B0Blade_Pickup(EntryPoint) end

---@param DialoguePickup boolean
function AB0Blade_Pickup_C:Pickup(DialoguePickup) end
