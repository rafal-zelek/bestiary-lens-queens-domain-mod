---@meta

---@class USaurianWing_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackCombo TArray<FWeaponMeleeComboEntry>
---@field SecondaryAttackRunning boolean
local USaurianWing_WeaponScript_C = {}

function USaurianWing_WeaponScript_C:AltAttackPressed() end

function USaurianWing_WeaponScript_C:AltAttackReleased() end

function USaurianWing_WeaponScript_C:AttackPressed() end

function USaurianWing_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function USaurianWing_WeaponScript_C:ExecuteUbergraph_SaurianWing_WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function USaurianWing_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnBlendOut_4F531992465588535A5A31AB1FB67E98(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnBlendOut_7475014B45B4142D476DEB8D06891BF8(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnCompleted_4F531992465588535A5A31AB1FB67E98(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnCompleted_7475014B45B4142D476DEB8D06891BF8(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnInterrupted_4F531992465588535A5A31AB1FB67E98(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnInterrupted_7475014B45B4142D476DEB8D06891BF8(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnNotifyBegin_4F531992465588535A5A31AB1FB67E98(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnNotifyBegin_7475014B45B4142D476DEB8D06891BF8(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnNotifyEnd_4F531992465588535A5A31AB1FB67E98(NotifyName) end

---@param NotifyName FName
function USaurianWing_WeaponScript_C:OnNotifyEnd_7475014B45B4142D476DEB8D06891BF8(NotifyName) end

function USaurianWing_WeaponScript_C:PreChargeAltPressed() end
