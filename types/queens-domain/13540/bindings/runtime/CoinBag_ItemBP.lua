---@meta

---@class ACoinBag_ItemBP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TreasureSparkleComp UTreasureSparkleComp_C
---@field DoNormalPickup boolean
local ACoinBag_ItemBP_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ACoinBag_ItemBP_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ACoinBag_ItemBP_C:ExecuteUbergraph_CoinBag_ItemBP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ACoinBag_ItemBP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

function ACoinBag_ItemBP_C:HideToWaitForActivation() end

---@param PlayerInteracting AActor
function ACoinBag_ItemBP_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function ACoinBag_ItemBP_C:Pickup(DialoguePickup) end

---@param AlreadyAcquired boolean
function ACoinBag_ItemBP_C:SetState(AlreadyAcquired) end

function ACoinBag_ItemBP_C:UserConstructionScript() end
