---@meta

---@class ARibber_Boss_00_BP_C : ARibber_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AOEHitbox USphereComponent
---@field Crown UEnemyAttachmentMesh_C
---@field ChanceToUseAOE float
local ARibber_Boss_00_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ARibber_Boss_00_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ARibber_Boss_00_BP_C:ExecuteUbergraph_Ribber_Boss_00_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ARibber_Boss_00_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ARibber_Boss_00_BP_C:OnBlendOut_AA564AB1498633F33150C290DFBE845D(NotifyName) end

---@param NotifyName FName
function ARibber_Boss_00_BP_C:OnCompleted_AA564AB1498633F33150C290DFBE845D(NotifyName) end

---@param NotifyName FName
function ARibber_Boss_00_BP_C:OnInterrupted_AA564AB1498633F33150C290DFBE845D(NotifyName) end

---@param NotifyName FName
function ARibber_Boss_00_BP_C:OnNotifyBegin_AA564AB1498633F33150C290DFBE845D(NotifyName) end

---@param NotifyName FName
function ARibber_Boss_00_BP_C:OnNotifyEnd_AA564AB1498633F33150C290DFBE845D(NotifyName) end

---@param ParameterValue float
function ARibber_Boss_00_BP_C:UpdatePoisonFade(ParameterValue) end
