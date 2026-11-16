---@meta

---@class AGuardian_Fishman_BP_C : AFishManer_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hat UEnemyAttachmentMesh_C
---@field Resurrecting boolean
local AGuardian_Fishman_BP_C = {}

---@param EntryPoint int32
function AGuardian_Fishman_BP_C:ExecuteUbergraph_Guardian_Fishman_BP(EntryPoint) end

function AGuardian_Fishman_BP_C:FinalKill() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AGuardian_Fishman_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnBlendOut_10801FD74049F111968B3A82EEEB0D24(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnBlendOut_1D514C0C42247BED154A3FADB3E205B9(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnCompleted_10801FD74049F111968B3A82EEEB0D24(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnCompleted_1D514C0C42247BED154A3FADB3E205B9(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnInterrupted_10801FD74049F111968B3A82EEEB0D24(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnInterrupted_1D514C0C42247BED154A3FADB3E205B9(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnNotifyBegin_10801FD74049F111968B3A82EEEB0D24(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnNotifyBegin_1D514C0C42247BED154A3FADB3E205B9(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnNotifyEnd_10801FD74049F111968B3A82EEEB0D24(NotifyName) end

---@param NotifyName FName
function AGuardian_Fishman_BP_C:OnNotifyEnd_1D514C0C42247BED154A3FADB3E205B9(NotifyName) end

---@param Delay float
function AGuardian_Fishman_BP_C:Resurrect(Delay) end

---@param ExtraMult float
---@param AttackIndex int32
---@param FB_DamageAttributeSet FFB_DamageAttributeSet
AGuardian_Fishman_BP_C['Get Attack Damage'] = function(self, ExtraMult, AttackIndex, FB_DamageAttributeSet) end
