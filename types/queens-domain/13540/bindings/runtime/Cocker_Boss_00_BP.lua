---@meta

---@class ACocker_Boss_00_BP_C : ACocker_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AOEHitbox USphereComponent
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
---@field ChanceToUseAOE float
local ACocker_Boss_00_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ACocker_Boss_00_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ACocker_Boss_00_BP_C:ExecuteUbergraph_Cocker_Boss_00_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function ACocker_Boss_00_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function ACocker_Boss_00_BP_C:OnBlendOut_45EF346243CDA3A29A5CF4B982154209(NotifyName) end

---@param NotifyName FName
function ACocker_Boss_00_BP_C:OnCompleted_45EF346243CDA3A29A5CF4B982154209(NotifyName) end

---@param NotifyName FName
function ACocker_Boss_00_BP_C:OnInterrupted_45EF346243CDA3A29A5CF4B982154209(NotifyName) end

---@param NotifyName FName
function ACocker_Boss_00_BP_C:OnNotifyBegin_45EF346243CDA3A29A5CF4B982154209(NotifyName) end

---@param NotifyName FName
function ACocker_Boss_00_BP_C:OnNotifyEnd_45EF346243CDA3A29A5CF4B982154209(NotifyName) end

---@param ParameterValue float
function ACocker_Boss_00_BP_C:UpdatePoisonFade(ParameterValue) end
