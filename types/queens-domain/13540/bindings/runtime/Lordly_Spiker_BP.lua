---@meta

---@class ALordly_Spiker_BP_C : ASpiker_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FootHitbox USphereComponent
---@field HeadHitbox USphereComponent
local ALordly_Spiker_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function ALordly_Spiker_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function ALordly_Spiker_BP_C:ExecuteUbergraph_Lordly_Spiker_BP(EntryPoint) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A572C30B1(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A93FE258C(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A572C30B1(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A93FE258C(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A572C30B1(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A93FE258C(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A572C30B1(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A93FE258C(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A572C30B1(NotifyName) end

---@param NotifyName FName
function ALordly_Spiker_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A93FE258C(NotifyName) end
