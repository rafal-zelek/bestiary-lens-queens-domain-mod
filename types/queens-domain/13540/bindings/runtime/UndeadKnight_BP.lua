---@meta

---@class AUndeadKnight_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
---@field SwordHitbox USphereComponent
---@field WeaponMesh UEnemyAttachmentMesh_C
---@field SwordHitbox2 USphereComponent
---@field SwordHitbox1 USphereComponent
local AUndeadKnight_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AUndeadKnight_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AUndeadKnight_BP_C:ExecuteUbergraph_UndeadKnight_BP(EntryPoint) end

function AUndeadKnight_BP_C:InitDeathFade() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AUndeadKnight_BP_C:Kill(NoRewards, SupressDeathSound) end

---@param NotifyName FName
function AUndeadKnight_BP_C:OnBlendOut_3FC1824A44C568AAB1AF7CAA9B122670(NotifyName) end

---@param NotifyName FName
function AUndeadKnight_BP_C:OnCompleted_3FC1824A44C568AAB1AF7CAA9B122670(NotifyName) end

---@param NotifyName FName
function AUndeadKnight_BP_C:OnInterrupted_3FC1824A44C568AAB1AF7CAA9B122670(NotifyName) end

---@param NotifyName FName
function AUndeadKnight_BP_C:OnNotifyBegin_3FC1824A44C568AAB1AF7CAA9B122670(NotifyName) end

---@param NotifyName FName
function AUndeadKnight_BP_C:OnNotifyEnd_3FC1824A44C568AAB1AF7CAA9B122670(NotifyName) end

function AUndeadKnight_BP_C:ReceiveBeginPlay() end
