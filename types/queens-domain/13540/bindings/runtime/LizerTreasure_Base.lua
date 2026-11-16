---@meta

---@class ALizerTreasure_Base_C : ATreasurePickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_LizerCharm_SM UStaticMeshComponent
local ALizerTreasure_Base_C = {}

---@param EntryPoint int32
function ALizerTreasure_Base_C:ExecuteUbergraph_LizerTreasure_Base(EntryPoint) end

---@param PlayerInteracting AActor
function ALizerTreasure_Base_C:Interact(PlayerInteracting) end
