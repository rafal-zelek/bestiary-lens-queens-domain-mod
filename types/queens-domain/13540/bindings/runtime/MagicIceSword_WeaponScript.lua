---@meta

---@class UMagicIceSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
---@field PrimaryMinPowerForHeavy float
local UMagicIceSword_WeaponScript_C = {}

function UMagicIceSword_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UMagicIceSword_WeaponScript_C:ExecuteUbergraph_MagicIceSword_WeaponScript(EntryPoint) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UMagicIceSword_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UMagicIceSword_WeaponScript_C:OnBlendOut_7B77C50147C46C6A97AE4294676AFF5F(NotifyName) end

---@param NotifyName FName
function UMagicIceSword_WeaponScript_C:OnCompleted_7B77C50147C46C6A97AE4294676AFF5F(NotifyName) end

---@param NotifyName FName
function UMagicIceSword_WeaponScript_C:OnInterrupted_7B77C50147C46C6A97AE4294676AFF5F(NotifyName) end

---@param NotifyName FName
function UMagicIceSword_WeaponScript_C:OnNotifyBegin_7B77C50147C46C6A97AE4294676AFF5F(NotifyName) end

---@param NotifyName FName
function UMagicIceSword_WeaponScript_C:OnNotifyEnd_7B77C50147C46C6A97AE4294676AFF5F(NotifyName) end
