---@meta

---@class ULunaSpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackCombo TArray<FWeaponMeleeComboEntry>
---@field SecondaryAttackRunning boolean
---@field VampirismActive boolean
local ULunaSpear_WeaponScript_C = {}

function ULunaSpear_WeaponScript_C:AltAttackPressed() end

function ULunaSpear_WeaponScript_C:AltAttackReleased() end

function ULunaSpear_WeaponScript_C:AttackPressed() end

function ULunaSpear_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function ULunaSpear_WeaponScript_C:ExecuteUbergraph_LunaSpear_WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function ULunaSpear_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param FS_MeleeFXOverride FFS_MeleeFXOverride
function ULunaSpear_WeaponScript_C:GetDefaultMeleeFXConfig(FS_MeleeFXOverride) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function ULunaSpear_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function ULunaSpear_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnBlendOut_0916E96146F8E78F8E7CC6B9E85A91B9(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnBlendOut_6298D02940FF704BB75DCDBDE0AE1A8D(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnCompleted_0916E96146F8E78F8E7CC6B9E85A91B9(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnCompleted_6298D02940FF704BB75DCDBDE0AE1A8D(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnInterrupted_0916E96146F8E78F8E7CC6B9E85A91B9(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnInterrupted_6298D02940FF704BB75DCDBDE0AE1A8D(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnNotifyBegin_0916E96146F8E78F8E7CC6B9E85A91B9(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnNotifyBegin_6298D02940FF704BB75DCDBDE0AE1A8D(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnNotifyEnd_0916E96146F8E78F8E7CC6B9E85A91B9(NotifyName) end

---@param NotifyName FName
function ULunaSpear_WeaponScript_C:OnNotifyEnd_6298D02940FF704BB75DCDBDE0AE1A8D(NotifyName) end

function ULunaSpear_WeaponScript_C:PreChargeAltPressed() end
