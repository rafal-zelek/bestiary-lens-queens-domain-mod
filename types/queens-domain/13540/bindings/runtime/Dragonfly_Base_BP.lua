---@meta

---@class ADragonfly_Base_BP_C : AFlyingEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TailHitbox2 USphereComponent
---@field TailHitbox1 USphereComponent
---@field TailHitbox USphereComponent
---@field DeadWignsMat UMaterialInterface
local ADragonfly_Base_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADragonfly_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ADragonfly_Base_BP_C:ExecuteUbergraph_Dragonfly_Base_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ADragonfly_Base_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ADragonfly_Base_BP_C:OnBlendOut_C4148B314605A5BB20C18E8F97243F1E(NotifyName) end

---@param NotifyName FName
function ADragonfly_Base_BP_C:OnCompleted_C4148B314605A5BB20C18E8F97243F1E(NotifyName) end

---@param NotifyName FName
function ADragonfly_Base_BP_C:OnInterrupted_C4148B314605A5BB20C18E8F97243F1E(NotifyName) end

---@param NotifyName FName
function ADragonfly_Base_BP_C:OnNotifyBegin_C4148B314605A5BB20C18E8F97243F1E(NotifyName) end

---@param NotifyName FName
function ADragonfly_Base_BP_C:OnNotifyEnd_C4148B314605A5BB20C18E8F97243F1E(NotifyName) end
