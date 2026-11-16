---@meta

---@class UHempBlade_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field AltAttackCharging boolean
---@field ['Alt Attack Running'] boolean
local UHempBlade_WeaponScript_C = {}

function UHempBlade_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UHempBlade_WeaponScript_C:ExecuteUbergraph_HempBlade_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UHempBlade_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UHempBlade_WeaponScript_C:OnBlendOut_F568A8FB473223D5627B158732FE722E(NotifyName) end

---@param NotifyName FName
function UHempBlade_WeaponScript_C:OnCompleted_F568A8FB473223D5627B158732FE722E(NotifyName) end

---@param NotifyName FName
function UHempBlade_WeaponScript_C:OnInterrupted_F568A8FB473223D5627B158732FE722E(NotifyName) end

---@param NotifyName FName
function UHempBlade_WeaponScript_C:OnNotifyBegin_F568A8FB473223D5627B158732FE722E(NotifyName) end

---@param NotifyName FName
function UHempBlade_WeaponScript_C:OnNotifyEnd_F568A8FB473223D5627B158732FE722E(NotifyName) end
