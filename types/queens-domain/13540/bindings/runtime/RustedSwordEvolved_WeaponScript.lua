---@meta

---@class URustedSwordEvolved_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
local URustedSwordEvolved_WeaponScript_C = {}

function URustedSwordEvolved_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function URustedSwordEvolved_WeaponScript_C:ExecuteUbergraph_RustedSwordEvolved_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function URustedSwordEvolved_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function URustedSwordEvolved_WeaponScript_C:OnBlendOut_B385A2F44E5C3D1CF73412ABC4834E24(NotifyName) end

---@param NotifyName FName
function URustedSwordEvolved_WeaponScript_C:OnCompleted_B385A2F44E5C3D1CF73412ABC4834E24(NotifyName) end

---@param NotifyName FName
function URustedSwordEvolved_WeaponScript_C:OnInterrupted_B385A2F44E5C3D1CF73412ABC4834E24(NotifyName) end

---@param NotifyName FName
function URustedSwordEvolved_WeaponScript_C:OnNotifyBegin_B385A2F44E5C3D1CF73412ABC4834E24(NotifyName) end

---@param NotifyName FName
function URustedSwordEvolved_WeaponScript_C:OnNotifyEnd_B385A2F44E5C3D1CF73412ABC4834E24(NotifyName) end
