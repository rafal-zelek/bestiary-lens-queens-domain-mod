---@meta

---@class UHagDagger_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
local UHagDagger_WeaponScript_C = {}

function UHagDagger_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UHagDagger_WeaponScript_C:ExecuteUbergraph_HagDagger_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UHagDagger_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UHagDagger_WeaponScript_C:OnBlendOut_86F478FC46A47A5E64A560AF7A3C6BC7(NotifyName) end

---@param NotifyName FName
function UHagDagger_WeaponScript_C:OnCompleted_86F478FC46A47A5E64A560AF7A3C6BC7(NotifyName) end

---@param NotifyName FName
function UHagDagger_WeaponScript_C:OnInterrupted_86F478FC46A47A5E64A560AF7A3C6BC7(NotifyName) end

---@param NotifyName FName
function UHagDagger_WeaponScript_C:OnNotifyBegin_86F478FC46A47A5E64A560AF7A3C6BC7(NotifyName) end

---@param NotifyName FName
function UHagDagger_WeaponScript_C:OnNotifyEnd_86F478FC46A47A5E64A560AF7A3C6BC7(NotifyName) end
