---@meta

---@class ASkullKeyRelic_BP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RC_SkullCharm_SM UStaticMeshComponent
local ASkullKeyRelic_BP_C = {}

---@param EntryPoint int32
function ASkullKeyRelic_BP_C:ExecuteUbergraph_SkullKeyRelic_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ASkullKeyRelic_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ASkullKeyRelic_BP_C:Interact(PlayerInteracting) end

---@param AlreadyAcquired boolean
function ASkullKeyRelic_BP_C:SetState(AlreadyAcquired) end
