---@meta

---@class URusted_GreatAxe_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field SlamImpactSFX USoundBase
---@field SlamMontage UAnimMontage
local URusted_GreatAxe_WeaponScript_C = {}

function URusted_GreatAxe_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function URusted_GreatAxe_WeaponScript_C:ExecuteUbergraph_Rusted_GreatAxe_WeaponScript(EntryPoint) end

---@param NotifyName FName
function URusted_GreatAxe_WeaponScript_C:OnBlendOut_C5F073924C7CB161DE3832B99170EB61(NotifyName) end

---@param NotifyName FName
function URusted_GreatAxe_WeaponScript_C:OnCompleted_C5F073924C7CB161DE3832B99170EB61(NotifyName) end

---@param NotifyName FName
function URusted_GreatAxe_WeaponScript_C:OnInterrupted_C5F073924C7CB161DE3832B99170EB61(NotifyName) end

---@param NotifyName FName
function URusted_GreatAxe_WeaponScript_C:OnNotifyBegin_C5F073924C7CB161DE3832B99170EB61(NotifyName) end

---@param NotifyName FName
function URusted_GreatAxe_WeaponScript_C:OnNotifyEnd_C5F073924C7CB161DE3832B99170EB61(NotifyName) end
