---@meta

---@class AGoldCrab_Pickup_C : ATreasurePickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TreasureSparkleComp1 UTreasureSparkleComp_C
---@field SkeletalMesh USkeletalMeshComponent
local AGoldCrab_Pickup_C = {}

---@param EntryPoint int32
function AGoldCrab_Pickup_C:ExecuteUbergraph_GoldCrab_Pickup(EntryPoint) end

function AGoldCrab_Pickup_C:HideToWaitForActivation() end

---@param PlayerInteracting AActor
function AGoldCrab_Pickup_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function AGoldCrab_Pickup_C:Pickup(DialoguePickup) end
