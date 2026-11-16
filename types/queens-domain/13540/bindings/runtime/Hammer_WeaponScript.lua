---@meta

---@class UHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltFireMult float
---@field DOingAlt boolean
---@field SlamAOEDamage FFB_DamageAttributeSet
---@field ImpactSFX USoundBase
---@field ImpactVFX UNiagaraSystem
---@field AltMontage UAnimMontage
local UHammer_WeaponScript_C = {}

function UHammer_WeaponScript_C:AltAttackPressed() end

function UHammer_WeaponScript_C:CancelAllAttacks() end

function UHammer_WeaponScript_C:DoAltAttackDamage() end

---@param EntryPoint int32
function UHammer_WeaponScript_C:ExecuteUbergraph_Hammer_WeaponScript(EntryPoint) end

function UHammer_WeaponScript_C:GetAttackAOE() end

function UHammer_WeaponScript_C:Impact() end

---@param NotifyName FName
function UHammer_WeaponScript_C:OnBlendOut_30B72461413EE4CFE4A2C78E9B1F20C5(NotifyName) end

---@param NotifyName FName
function UHammer_WeaponScript_C:OnCompleted_30B72461413EE4CFE4A2C78E9B1F20C5(NotifyName) end

---@param NotifyName FName
function UHammer_WeaponScript_C:OnInterrupted_30B72461413EE4CFE4A2C78E9B1F20C5(NotifyName) end

---@param NotifyName FName
function UHammer_WeaponScript_C:OnNotifyBegin_30B72461413EE4CFE4A2C78E9B1F20C5(NotifyName) end

---@param NotifyName FName
function UHammer_WeaponScript_C:OnNotifyEnd_30B72461413EE4CFE4A2C78E9B1F20C5(NotifyName) end

---@param DeltaSeconds float
function UHammer_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UHammer_WeaponScript_C:SetSlamAOEDamage() end

---@param Base_Dmg FFB_DamageAttributeSet
---@param Suppressed_Dmg FFB_DamageAttributeSet
function UHammer_WeaponScript_C:SuppressAudioForAltAttackDamage(Base_Dmg, Suppressed_Dmg) end
