---@meta

---@class UDiamondBlade_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field AltAttackCharging boolean
---@field SecondaryAttackCombo TArray<FWeaponMeleeComboEntry>
local UDiamondBlade_WeaponScript_C = {}

function UDiamondBlade_WeaponScript_C:AltAttackPressed() end

function UDiamondBlade_WeaponScript_C:AltAttackReleased() end

function UDiamondBlade_WeaponScript_C:AttackPressed() end

function UDiamondBlade_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function UDiamondBlade_WeaponScript_C:ExecuteUbergraph_DiamondBlade_WeaponScript(EntryPoint) end

---@param Damage_Types FGameplayTagContainer
function UDiamondBlade_WeaponScript_C:GetCurrentDamageTypeTags(Damage_Types) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnBlendOut_40E6F3BA4E19A5892F7DD0B8F546FE9E(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnBlendOut_BD31D9C74A5499D99BEC3AAB7A8684F4(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnCompleted_40E6F3BA4E19A5892F7DD0B8F546FE9E(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnCompleted_BD31D9C74A5499D99BEC3AAB7A8684F4(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnInterrupted_40E6F3BA4E19A5892F7DD0B8F546FE9E(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnInterrupted_BD31D9C74A5499D99BEC3AAB7A8684F4(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnNotifyBegin_40E6F3BA4E19A5892F7DD0B8F546FE9E(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnNotifyBegin_BD31D9C74A5499D99BEC3AAB7A8684F4(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnNotifyEnd_40E6F3BA4E19A5892F7DD0B8F546FE9E(NotifyName) end

---@param NotifyName FName
function UDiamondBlade_WeaponScript_C:OnNotifyEnd_BD31D9C74A5499D99BEC3AAB7A8684F4(NotifyName) end

function UDiamondBlade_WeaponScript_C:PreChargeAltPressed() end
