---@meta

---@class AGargler_GraveWarden_BP_C : AGargler_Halberd_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RemainingLightningStrikes int32
---@field LightningDamage FFB_DamageAttributeSet
local AGargler_GraveWarden_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AGargler_GraveWarden_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AGargler_GraveWarden_BP_C:ExecuteUbergraph_Gargler_GraveWarden_BP(EntryPoint) end

---@param NotifyName FName
function AGargler_GraveWarden_BP_C:OnBlendOut_82C5FD6C43792DB9BBB11388BB3A21FB(NotifyName) end

---@param NotifyName FName
function AGargler_GraveWarden_BP_C:OnCompleted_82C5FD6C43792DB9BBB11388BB3A21FB(NotifyName) end

---@param NotifyName FName
function AGargler_GraveWarden_BP_C:OnInterrupted_82C5FD6C43792DB9BBB11388BB3A21FB(NotifyName) end

---@param NotifyName FName
function AGargler_GraveWarden_BP_C:OnNotifyBegin_82C5FD6C43792DB9BBB11388BB3A21FB(NotifyName) end

---@param NotifyName FName
function AGargler_GraveWarden_BP_C:OnNotifyEnd_82C5FD6C43792DB9BBB11388BB3A21FB(NotifyName) end

function AGargler_GraveWarden_BP_C:StrikeLoop() end
