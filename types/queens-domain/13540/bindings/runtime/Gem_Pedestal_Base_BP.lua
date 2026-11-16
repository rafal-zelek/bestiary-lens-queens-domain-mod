---@meta

---@class AGem_Pedestal_Base_BP_C : AItemPickup_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field PointLight UPointLightComponent
---@field Sword_Pedestal UStaticMeshComponent
---@field PutAwayItem_MoveUp_7B9D90C7421217E6116D2E8D592C9E36 float
---@field PutAwayItem_PutAway_7B9D90C7421217E6116D2E8D592C9E36 float
---@field PutAwayItem_PutInFront_7B9D90C7421217E6116D2E8D592C9E36 float
---@field PutAwayItem__Direction_7B9D90C7421217E6116D2E8D592C9E36 ETimelineDirection::Type
---@field PutAwayItem UTimelineComponent
---@field PickupItem_MoveUp_53FCF1DD4D19F579272611814195F2A9 float
---@field PickupItem_PutAway_53FCF1DD4D19F579272611814195F2A9 float
---@field PickupItem_PutInFront_53FCF1DD4D19F579272611814195F2A9 float
---@field PickupItem__Direction_53FCF1DD4D19F579272611814195F2A9 ETimelineDirection::Type
---@field PickupItem UTimelineComponent
---@field InitialPullUpHeight FVector
local AGem_Pedestal_Base_BP_C = {}

---@param PutInFront float
---@param MoveUp float
---@param PutAway float
function AGem_Pedestal_Base_BP_C:Animation(PutInFront, MoveUp, PutAway) end

---@param EntryPoint int32
function AGem_Pedestal_Base_BP_C:ExecuteUbergraph_Gem_Pedestal_Base_BP(EntryPoint) end

---@param PlayerInteracting AActor
function AGem_Pedestal_Base_BP_C:Interact(PlayerInteracting) end

---@param DialoguePickup boolean
function AGem_Pedestal_Base_BP_C:Pickup(DialoguePickup) end

function AGem_Pedestal_Base_BP_C:PickupItem__FinishedFunc() end

function AGem_Pedestal_Base_BP_C:PickupItem__Grant__EventFunc() end

function AGem_Pedestal_Base_BP_C:PickupItem__UpdateFunc() end

function AGem_Pedestal_Base_BP_C:PutAway() end

function AGem_Pedestal_Base_BP_C:PutAwayItem__FinishedFunc() end

function AGem_Pedestal_Base_BP_C:PutAwayItem__Grant__EventFunc() end

function AGem_Pedestal_Base_BP_C:PutAwayItem__UpdateFunc() end

function AGem_Pedestal_Base_BP_C:UpdateFogDAValues() end

function AGem_Pedestal_Base_BP_C:UserConstructionScript() end
