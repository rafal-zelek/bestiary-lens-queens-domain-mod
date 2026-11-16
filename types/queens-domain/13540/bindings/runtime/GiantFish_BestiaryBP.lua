---@meta

---@class AGiantFish_BestiaryBP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local AGiantFish_BestiaryBP_C = {}

---@param EntryPoint int32
function AGiantFish_BestiaryBP_C:ExecuteUbergraph_GiantFish_BestiaryBP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AGiantFish_BestiaryBP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AGiantFish_BestiaryBP_C:Interact(PlayerInteracting) end
