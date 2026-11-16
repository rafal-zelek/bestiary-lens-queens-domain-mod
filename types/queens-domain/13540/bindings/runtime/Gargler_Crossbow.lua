---@meta

---@class AGargler_Crossbow_C : AGargler_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyAttachmentMesh UEnemyAttachmentMesh_C
---@field StabOnCooldown boolean
---@field Projectile TSubclassOf<AEnemy_Projectile_Base_C>
local AGargler_Crossbow_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AGargler_Crossbow_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

function AGargler_Crossbow_C:CheckChase() end

---@param EntryPoint int32
function AGargler_Crossbow_C:ExecuteUbergraph_Gargler_Crossbow(EntryPoint) end

---@param NotifyName FName
function AGargler_Crossbow_C:OnBlendOut_0246E661426B009094325B9A07C8444B(NotifyName) end

---@param NotifyName FName
function AGargler_Crossbow_C:OnCompleted_0246E661426B009094325B9A07C8444B(NotifyName) end

---@param NotifyName FName
function AGargler_Crossbow_C:OnInterrupted_0246E661426B009094325B9A07C8444B(NotifyName) end

---@param NotifyName FName
function AGargler_Crossbow_C:OnNotifyBegin_0246E661426B009094325B9A07C8444B(NotifyName) end

---@param NotifyName FName
function AGargler_Crossbow_C:OnNotifyEnd_0246E661426B009094325B9A07C8444B(NotifyName) end

---@param DeltaSeconds float
function AGargler_Crossbow_C:ReceiveTick(DeltaSeconds) end

---@param Dissolve float
function AGargler_Crossbow_C:SetTrapDissolve(Dissolve) end

function AGargler_Crossbow_C:StartWandering() end
