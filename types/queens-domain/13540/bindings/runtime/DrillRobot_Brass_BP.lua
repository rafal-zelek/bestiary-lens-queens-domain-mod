---@meta

---@class ADrillRobot_Brass_BP_C : ADrillRobot_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
local ADrillRobot_Brass_BP_C = {}

---@param Allow_Multi_Drop boolean
---@param Force boolean
function ADrillRobot_Brass_BP_C:DropItem(Allow_Multi_Drop, Force) end

function ADrillRobot_Brass_BP_C:Ended() end

---@param EntryPoint int32
function ADrillRobot_Brass_BP_C:ExecuteUbergraph_DrillRobot_Brass_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function ADrillRobot_Brass_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function ADrillRobot_Brass_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADrillRobot_Brass_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ADrillRobot_Brass_BP_C:OnBlendOut_1A850E4C42E0584C552BD084F70C26A0(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Brass_BP_C:OnCompleted_1A850E4C42E0584C552BD084F70C26A0(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Brass_BP_C:OnInterrupted_1A850E4C42E0584C552BD084F70C26A0(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Brass_BP_C:OnNotifyBegin_1A850E4C42E0584C552BD084F70C26A0(NotifyName) end

---@param NotifyName FName
function ADrillRobot_Brass_BP_C:OnNotifyEnd_1A850E4C42E0584C552BD084F70C26A0(NotifyName) end
