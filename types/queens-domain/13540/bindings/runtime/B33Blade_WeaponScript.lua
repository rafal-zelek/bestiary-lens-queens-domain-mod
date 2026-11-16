---@meta

---@class UB33Blade_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field AltAttackCharging boolean
local UB33Blade_WeaponScript_C = {}

function UB33Blade_WeaponScript_C:AltAttackPressed() end

function UB33Blade_WeaponScript_C:AltAttackReleased() end

function UB33Blade_WeaponScript_C:CancelAllAttacks() end

---@param EntryPoint int32
function UB33Blade_WeaponScript_C:ExecuteUbergraph_B33Blade_WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function UB33Blade_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UB33Blade_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnBlendOut_BC4BDEF643EBBA2D630E73ACC8133086(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnBlendOut_DEE5A93C4F6E0DF7A35FA8B1C6D41640(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnCompleted_BC4BDEF643EBBA2D630E73ACC8133086(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnCompleted_DEE5A93C4F6E0DF7A35FA8B1C6D41640(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnInterrupted_BC4BDEF643EBBA2D630E73ACC8133086(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnInterrupted_DEE5A93C4F6E0DF7A35FA8B1C6D41640(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnNotifyBegin_BC4BDEF643EBBA2D630E73ACC8133086(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnNotifyBegin_DEE5A93C4F6E0DF7A35FA8B1C6D41640(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnNotifyEnd_BC4BDEF643EBBA2D630E73ACC8133086(NotifyName) end

---@param NotifyName FName
function UB33Blade_WeaponScript_C:OnNotifyEnd_DEE5A93C4F6E0DF7A35FA8B1C6D41640(NotifyName) end

function UB33Blade_WeaponScript_C:PreChargeAltPressed() end
