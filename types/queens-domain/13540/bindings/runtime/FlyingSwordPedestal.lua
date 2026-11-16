---@meta

---@class AFlyingSwordPedestal_C : AGem_Pedestal_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FS_Gem_Sword_SM UStaticMeshComponent
local AFlyingSwordPedestal_C = {}

---@param EntryPoint int32
function AFlyingSwordPedestal_C:ExecuteUbergraph_FlyingSwordPedestal(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AFlyingSwordPedestal_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param DialoguePickup boolean
function AFlyingSwordPedestal_C:Pickup(DialoguePickup) end
