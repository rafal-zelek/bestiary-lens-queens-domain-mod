---@meta

---@class ABoner_DualSword_Base_BP_C : ABoner_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SwordHitbox4 USphereComponent
---@field SwordHitbox7 USphereComponent
---@field SwordHitbox6 USphereComponent
---@field SwordHitbox5 USphereComponent
---@field SwordHitbox3 USphereComponent
---@field OffhandSword UEnemyAttachmentMesh_C
local ABoner_DualSword_Base_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ABoner_DualSword_Base_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ABoner_DualSword_Base_BP_C:ExecuteUbergraph_Boner_DualSword_Base_BP(EntryPoint) end

---@param NotifyName FName
function ABoner_DualSword_Base_BP_C:OnBlendOut_9E39F3FE4E9AF33380BA34A368AE4155(NotifyName) end

---@param NotifyName FName
function ABoner_DualSword_Base_BP_C:OnCompleted_9E39F3FE4E9AF33380BA34A368AE4155(NotifyName) end

---@param NotifyName FName
function ABoner_DualSword_Base_BP_C:OnInterrupted_9E39F3FE4E9AF33380BA34A368AE4155(NotifyName) end

---@param NotifyName FName
function ABoner_DualSword_Base_BP_C:OnNotifyBegin_9E39F3FE4E9AF33380BA34A368AE4155(NotifyName) end

---@param NotifyName FName
function ABoner_DualSword_Base_BP_C:OnNotifyEnd_9E39F3FE4E9AF33380BA34A368AE4155(NotifyName) end
