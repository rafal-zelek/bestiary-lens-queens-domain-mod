---@meta

---@class UForestFlameAxe_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CalculatedAltFireMult float
local UForestFlameAxe_WeaponScript_C = {}

function UForestFlameAxe_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UForestFlameAxe_WeaponScript_C:ExecuteUbergraph_ForestFlameAxe_WeaponScript(EntryPoint) end

---@param Output FFB_DamageAttributeSet
function UForestFlameAxe_WeaponScript_C:GetAltDamage(Output) end

---@param NotifyName FName
function UForestFlameAxe_WeaponScript_C:OnBlendOut_691B3A7A47D26727841BDB83E73BB3AB(NotifyName) end

---@param NotifyName FName
function UForestFlameAxe_WeaponScript_C:OnCompleted_691B3A7A47D26727841BDB83E73BB3AB(NotifyName) end

---@param NotifyName FName
function UForestFlameAxe_WeaponScript_C:OnInterrupted_691B3A7A47D26727841BDB83E73BB3AB(NotifyName) end

---@param NotifyName FName
function UForestFlameAxe_WeaponScript_C:OnNotifyBegin_691B3A7A47D26727841BDB83E73BB3AB(NotifyName) end

---@param NotifyName FName
function UForestFlameAxe_WeaponScript_C:OnNotifyEnd_691B3A7A47D26727841BDB83E73BB3AB(NotifyName) end
