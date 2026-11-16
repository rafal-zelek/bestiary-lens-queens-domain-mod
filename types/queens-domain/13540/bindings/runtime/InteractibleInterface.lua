---@meta

---@class IInteractibleInterface_C : IInterface
local IInteractibleInterface_C = {}

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function IInteractibleInterface_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function IInteractibleInterface_C:Interact(PlayerInteracting) end
