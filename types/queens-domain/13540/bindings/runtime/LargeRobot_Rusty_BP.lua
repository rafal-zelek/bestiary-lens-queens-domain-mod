---@meta

---@class ALargeRobot_Rusty_BP_C : ALargeRobot_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
local ALargeRobot_Rusty_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALargeRobot_Rusty_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function ALargeRobot_Rusty_BP_C:CanUseAttack(bIgnoreWeight, Index) end

---@param EntryPoint int32
function ALargeRobot_Rusty_BP_C:ExecuteUbergraph_LargeRobot_Rusty_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ALargeRobot_Rusty_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ALargeRobot_Rusty_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ALargeRobot_Rusty_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnBlendOut_53CBBDA54C551B8A4453BC84EE16B159(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnBlendOut_7BF4586C4B5A5D1FB96AA886EC7BBCA1(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnCompleted_53CBBDA54C551B8A4453BC84EE16B159(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnCompleted_7BF4586C4B5A5D1FB96AA886EC7BBCA1(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnInterrupted_53CBBDA54C551B8A4453BC84EE16B159(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnInterrupted_7BF4586C4B5A5D1FB96AA886EC7BBCA1(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnNotifyBegin_53CBBDA54C551B8A4453BC84EE16B159(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnNotifyBegin_7BF4586C4B5A5D1FB96AA886EC7BBCA1(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnNotifyEnd_53CBBDA54C551B8A4453BC84EE16B159(NotifyName) end

---@param NotifyName FName
function ALargeRobot_Rusty_BP_C:OnNotifyEnd_7BF4586C4B5A5D1FB96AA886EC7BBCA1(NotifyName) end

function ALargeRobot_Rusty_BP_C:RewardDialogueEnded() end
