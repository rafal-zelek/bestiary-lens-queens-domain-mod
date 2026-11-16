---@meta

---@class URebornClub_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field SlamMontage UAnimMontage
---@field SlamImpactSFX USoundBase
local URebornClub_WeaponScript_C = {}

function URebornClub_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function URebornClub_WeaponScript_C:ExecuteUbergraph_RebornClub_WeaponScript(EntryPoint) end

---@param NotifyName FName
function URebornClub_WeaponScript_C:OnBlendOut_D8F0715C4A54E22758F79CA3F8721444(NotifyName) end

---@param NotifyName FName
function URebornClub_WeaponScript_C:OnCompleted_D8F0715C4A54E22758F79CA3F8721444(NotifyName) end

---@param NotifyName FName
function URebornClub_WeaponScript_C:OnInterrupted_D8F0715C4A54E22758F79CA3F8721444(NotifyName) end

---@param NotifyName FName
function URebornClub_WeaponScript_C:OnNotifyBegin_D8F0715C4A54E22758F79CA3F8721444(NotifyName) end

---@param NotifyName FName
function URebornClub_WeaponScript_C:OnNotifyEnd_D8F0715C4A54E22758F79CA3F8721444(NotifyName) end
