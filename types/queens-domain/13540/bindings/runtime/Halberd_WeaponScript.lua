---@meta

---@class UHalberd_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackCombo TArray<FWeaponMeleeComboEntry>
---@field SecondaryAttackRunning boolean
local UHalberd_WeaponScript_C = {}

function UHalberd_WeaponScript_C:AltAttackPressed() end

function UHalberd_WeaponScript_C:AltAttackReleased() end

function UHalberd_WeaponScript_C:AttackPressed() end

function UHalberd_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function UHalberd_WeaponScript_C:ExecuteUbergraph_Halberd_WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function UHalberd_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnBlendOut_565BB70147D50C918D31F9AF8A9B2A7D(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnBlendOut_C2C23468419C3EFB9D652887ED282CBF(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnCompleted_565BB70147D50C918D31F9AF8A9B2A7D(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnCompleted_C2C23468419C3EFB9D652887ED282CBF(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnInterrupted_565BB70147D50C918D31F9AF8A9B2A7D(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnInterrupted_C2C23468419C3EFB9D652887ED282CBF(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnNotifyBegin_565BB70147D50C918D31F9AF8A9B2A7D(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnNotifyBegin_C2C23468419C3EFB9D652887ED282CBF(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnNotifyEnd_565BB70147D50C918D31F9AF8A9B2A7D(NotifyName) end

---@param NotifyName FName
function UHalberd_WeaponScript_C:OnNotifyEnd_C2C23468419C3EFB9D652887ED282CBF(NotifyName) end

function UHalberd_WeaponScript_C:PreChargeAltPressed() end
