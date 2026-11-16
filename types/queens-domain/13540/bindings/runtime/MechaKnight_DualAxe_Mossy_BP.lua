---@meta

---@class AMechaKnight_DualAxe_Mossy_BP_C : AMechaKnight_DualAxe_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractBox UBoxComponent
---@field EnemyAttachmentMesh1 UEnemyAttachmentMesh_C
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
local AMechaKnight_DualAxe_Mossy_BP_C = {}

---@param Allow_Multi_Drop boolean
---@param Force boolean
function AMechaKnight_DualAxe_Mossy_BP_C:DropItem(Allow_Multi_Drop, Force) end

function AMechaKnight_DualAxe_Mossy_BP_C:Ended() end

---@param EntryPoint int32
function AMechaKnight_DualAxe_Mossy_BP_C:ExecuteUbergraph_MechaKnight_DualAxe_Mossy_BP(EntryPoint) end

---@param InteractingPlayer AActor
---@param IsInteractible boolean
---@param EnableInteractDistanceOverride boolean
---@param InteractDistanceOverride float
function AMechaKnight_DualAxe_Mossy_BP_C:GetInteractInfo(InteractingPlayer, IsInteractible, EnableInteractDistanceOverride, InteractDistanceOverride) end

---@param PlayerInteracting AActor
function AMechaKnight_DualAxe_Mossy_BP_C:Interact(PlayerInteracting) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AMechaKnight_DualAxe_Mossy_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Mossy_BP_C:OnBlendOut_E57089DB4F8E8B9036C4C999250BC082(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Mossy_BP_C:OnCompleted_E57089DB4F8E8B9036C4C999250BC082(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Mossy_BP_C:OnInterrupted_E57089DB4F8E8B9036C4C999250BC082(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Mossy_BP_C:OnNotifyBegin_E57089DB4F8E8B9036C4C999250BC082(NotifyName) end

---@param NotifyName FName
function AMechaKnight_DualAxe_Mossy_BP_C:OnNotifyEnd_E57089DB4F8E8B9036C4C999250BC082(NotifyName) end
