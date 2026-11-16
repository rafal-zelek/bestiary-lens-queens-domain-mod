---@meta

---@class ADragonfly_Swamp_BP_C : ADragonfly_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local ADragonfly_Swamp_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ADragonfly_Swamp_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ADragonfly_Swamp_BP_C:ExecuteUbergraph_Dragonfly_Swamp_BP(EntryPoint) end

---@param NotifyName FName
function ADragonfly_Swamp_BP_C:OnBlendOut_FB19762449EA13F01BC5FF80CFA455D6(NotifyName) end

---@param NotifyName FName
function ADragonfly_Swamp_BP_C:OnCompleted_FB19762449EA13F01BC5FF80CFA455D6(NotifyName) end

---@param NotifyName FName
function ADragonfly_Swamp_BP_C:OnInterrupted_FB19762449EA13F01BC5FF80CFA455D6(NotifyName) end

---@param NotifyName FName
function ADragonfly_Swamp_BP_C:OnNotifyBegin_FB19762449EA13F01BC5FF80CFA455D6(NotifyName) end

---@param NotifyName FName
function ADragonfly_Swamp_BP_C:OnNotifyEnd_FB19762449EA13F01BC5FF80CFA455D6(NotifyName) end
