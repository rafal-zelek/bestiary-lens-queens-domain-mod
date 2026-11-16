---@meta

---@class APoison_Fishman_SZ_BP_C : AFishManer_Base_BP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GasProjectile TSubclassOf<AEnemy_Projectile_Base_C>
local APoison_Fishman_SZ_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function APoison_Fishman_SZ_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param EntryPoint int32
function APoison_Fishman_SZ_BP_C:ExecuteUbergraph_Poison_Fishman_SZ_BP(EntryPoint) end

---@param NotifyName FName
function APoison_Fishman_SZ_BP_C:OnBlendOut_F710BEB34E1B2A54374A5B9A0BE8B2A0(NotifyName) end

---@param NotifyName FName
function APoison_Fishman_SZ_BP_C:OnCompleted_F710BEB34E1B2A54374A5B9A0BE8B2A0(NotifyName) end

---@param NotifyName FName
function APoison_Fishman_SZ_BP_C:OnInterrupted_F710BEB34E1B2A54374A5B9A0BE8B2A0(NotifyName) end

---@param NotifyName FName
function APoison_Fishman_SZ_BP_C:OnNotifyBegin_F710BEB34E1B2A54374A5B9A0BE8B2A0(NotifyName) end

---@param NotifyName FName
function APoison_Fishman_SZ_BP_C:OnNotifyEnd_F710BEB34E1B2A54374A5B9A0BE8B2A0(NotifyName) end
