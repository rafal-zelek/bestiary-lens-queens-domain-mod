---@meta

---@class AAggroLizard_Iron_BP_C : AAggroLizard_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SlamHitbox USphereComponent
local AAggroLizard_Iron_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AAggroLizard_Iron_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function AAggroLizard_Iron_BP_C:ExecuteUbergraph_AggroLizard_Iron_BP(EntryPoint) end

---@param NotifyName FName
function AAggroLizard_Iron_BP_C:OnBlendOut_D0A0F0F245EC77D46601B1A7899FDD5F(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Iron_BP_C:OnCompleted_D0A0F0F245EC77D46601B1A7899FDD5F(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Iron_BP_C:OnInterrupted_D0A0F0F245EC77D46601B1A7899FDD5F(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Iron_BP_C:OnNotifyBegin_D0A0F0F245EC77D46601B1A7899FDD5F(NotifyName) end

---@param NotifyName FName
function AAggroLizard_Iron_BP_C:OnNotifyEnd_D0A0F0F245EC77D46601B1A7899FDD5F(NotifyName) end
