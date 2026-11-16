---@meta

---@class UBloodyClaw_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
local UBloodyClaw_WeaponScript_C = {}

function UBloodyClaw_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UBloodyClaw_WeaponScript_C:ExecuteUbergraph_BloodyClaw_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UBloodyClaw_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UBloodyClaw_WeaponScript_C:OnBlendOut_A779B7CE48194BAB58E14A8A1A192786(NotifyName) end

---@param NotifyName FName
function UBloodyClaw_WeaponScript_C:OnCompleted_A779B7CE48194BAB58E14A8A1A192786(NotifyName) end

---@param NotifyName FName
function UBloodyClaw_WeaponScript_C:OnInterrupted_A779B7CE48194BAB58E14A8A1A192786(NotifyName) end

---@param NotifyName FName
function UBloodyClaw_WeaponScript_C:OnNotifyBegin_A779B7CE48194BAB58E14A8A1A192786(NotifyName) end

---@param NotifyName FName
function UBloodyClaw_WeaponScript_C:OnNotifyEnd_A779B7CE48194BAB58E14A8A1A192786(NotifyName) end
