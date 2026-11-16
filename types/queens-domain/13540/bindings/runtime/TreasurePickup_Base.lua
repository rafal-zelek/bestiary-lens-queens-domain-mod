---@meta

---@class ATreasurePickup_Base_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TreasureSparkleComp UTreasureSparkleComp_C
---@field Sparkliness float
local ATreasurePickup_Base_C = {}

---@param ActivateByLoad boolean
---@param ActorThatTriggered AActor
function ATreasurePickup_Base_C:Activate(ActivateByLoad, ActorThatTriggered) end

---@param EntryPoint int32
function ATreasurePickup_Base_C:ExecuteUbergraph_TreasurePickup_Base(EntryPoint) end

function ATreasurePickup_Base_C:HideToWaitForActivation() end

---@param PlayerInteracting AActor
function ATreasurePickup_Base_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function ATreasurePickup_Base_C:Pickup(DialoguePickup) end

function ATreasurePickup_Base_C:ReceiveBeginPlay() end
