---@meta

---@class AFishmaner_Boss_00_BP_C : AFishManer_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AOEHitbox USphereComponent
---@field CrownAttachment UEnemyAttachmentMesh_C
---@field ChanceToUseAOE float
local AFishmaner_Boss_00_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AFishmaner_Boss_00_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AFishmaner_Boss_00_BP_C:ExecuteUbergraph_Fishmaner_Boss_00_BP(EntryPoint) end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AFishmaner_Boss_00_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AFishmaner_Boss_00_BP_C:OnBlendOut_A920B3CD442570AA464E329448EB4903(NotifyName) end

---@param NotifyName FName
function AFishmaner_Boss_00_BP_C:OnCompleted_A920B3CD442570AA464E329448EB4903(NotifyName) end

---@param NotifyName FName
function AFishmaner_Boss_00_BP_C:OnInterrupted_A920B3CD442570AA464E329448EB4903(NotifyName) end

---@param NotifyName FName
function AFishmaner_Boss_00_BP_C:OnNotifyBegin_A920B3CD442570AA464E329448EB4903(NotifyName) end

---@param NotifyName FName
function AFishmaner_Boss_00_BP_C:OnNotifyEnd_A920B3CD442570AA464E329448EB4903(NotifyName) end

function AFishmaner_Boss_00_BP_C:ReceiveBeginPlay() end

---@param ParameterValue float
function AFishmaner_Boss_00_BP_C:UpdatePoisonFade(ParameterValue) end

function AFishmaner_Boss_00_BP_C:UserConstructionScript() end
