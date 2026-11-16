---@meta

---@class URusted_Great_MorningStar_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field SlamImpactSFX USoundBase
---@field SlamMontage UAnimMontage
local URusted_Great_MorningStar_WeaponScript_C = {}

function URusted_Great_MorningStar_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function URusted_Great_MorningStar_WeaponScript_C:ExecuteUbergraph_Rusted_Great_MorningStar_WeaponScript(EntryPoint) end

---@param NotifyName FName
function URusted_Great_MorningStar_WeaponScript_C:OnBlendOut_C8B84BEE414C3BE37FF6EABD0301BF44(NotifyName) end

---@param NotifyName FName
function URusted_Great_MorningStar_WeaponScript_C:OnCompleted_C8B84BEE414C3BE37FF6EABD0301BF44(NotifyName) end

---@param NotifyName FName
function URusted_Great_MorningStar_WeaponScript_C:OnInterrupted_C8B84BEE414C3BE37FF6EABD0301BF44(NotifyName) end

---@param NotifyName FName
function URusted_Great_MorningStar_WeaponScript_C:OnNotifyBegin_C8B84BEE414C3BE37FF6EABD0301BF44(NotifyName) end

---@param NotifyName FName
function URusted_Great_MorningStar_WeaponScript_C:OnNotifyEnd_C8B84BEE414C3BE37FF6EABD0301BF44(NotifyName) end
