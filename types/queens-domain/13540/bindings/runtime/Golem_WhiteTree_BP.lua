---@meta

---@class AGolem_WhiteTree_BP_C : AGolem_Tree_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field nutattachpoint USceneComponent
---@field InteractBox UBoxComponent
---@field RiseStart FVector
---@field Pickup AItemPickup_Base_C
local AGolem_WhiteTree_BP_C = {}

---@param Damaged boolean
function AGolem_WhiteTree_BP_C:ActivateTrap(Damaged) end

---@param Allow_Multi_Drop boolean
---@param Force boolean
function AGolem_WhiteTree_BP_C:DropItem(Allow_Multi_Drop, Force) end

function AGolem_WhiteTree_BP_C:Ended() end

---@param EntryPoint int32
function AGolem_WhiteTree_BP_C:ExecuteUbergraph_Golem_WhiteTree_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AGolem_WhiteTree_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AGolem_WhiteTree_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AGolem_WhiteTree_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AGolem_WhiteTree_BP_C:OnBlendOut_DBE298D54DACB3DB3B230EAA12C1D56E(NotifyName) end

---@param NotifyName FName
function AGolem_WhiteTree_BP_C:OnCompleted_DBE298D54DACB3DB3B230EAA12C1D56E(NotifyName) end

---@param NotifyName FName
function AGolem_WhiteTree_BP_C:OnInterrupted_DBE298D54DACB3DB3B230EAA12C1D56E(NotifyName) end

---@param NotifyName FName
function AGolem_WhiteTree_BP_C:OnNotifyBegin_DBE298D54DACB3DB3B230EAA12C1D56E(NotifyName) end

---@param NotifyName FName
function AGolem_WhiteTree_BP_C:OnNotifyEnd_DBE298D54DACB3DB3B230EAA12C1D56E(NotifyName) end

function AGolem_WhiteTree_BP_C:ReceiveBeginPlay() end

function AGolem_WhiteTree_BP_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function AGolem_WhiteTree_BP_C:ReceiveTick(DeltaSeconds) end
