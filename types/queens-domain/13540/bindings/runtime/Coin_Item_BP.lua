---@meta

---@class ACoin_Item_BP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TreasureSparkleComp UTreasureSparkleComp_C
local ACoin_Item_BP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ACoin_Item_BP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ACoin_Item_BP_C:ExecuteUbergraph_Coin_Item_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ACoin_Item_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ACoin_Item_BP_C:HideToWaitForActivation() end

---@param PlayerInteracting AActor
function ACoin_Item_BP_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function ACoin_Item_BP_C:Pickup(DialoguePickup) end

---@param AlreadyAcquired boolean
function ACoin_Item_BP_C:SetState(AlreadyAcquired) end

function ACoin_Item_BP_C:UserConstructionScript() end
