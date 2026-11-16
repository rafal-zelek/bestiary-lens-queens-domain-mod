---@meta

---@class UPoisonPiercer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DOingAlt boolean
---@field ProjectileMult int32
local UPoisonPiercer_WeaponScript_C = {}

function UPoisonPiercer_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UPoisonPiercer_WeaponScript_C:ExecuteUbergraph_PoisonPiercer_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UPoisonPiercer_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UPoisonPiercer_WeaponScript_C:OnBlendOut_57874ABA4461B21742AE3FAD7359CCA2(NotifyName) end

---@param NotifyName FName
function UPoisonPiercer_WeaponScript_C:OnCompleted_57874ABA4461B21742AE3FAD7359CCA2(NotifyName) end

---@param NotifyName FName
function UPoisonPiercer_WeaponScript_C:OnInterrupted_57874ABA4461B21742AE3FAD7359CCA2(NotifyName) end

---@param NotifyName FName
function UPoisonPiercer_WeaponScript_C:OnNotifyBegin_57874ABA4461B21742AE3FAD7359CCA2(NotifyName) end

---@param NotifyName FName
function UPoisonPiercer_WeaponScript_C:OnNotifyEnd_57874ABA4461B21742AE3FAD7359CCA2(NotifyName) end
