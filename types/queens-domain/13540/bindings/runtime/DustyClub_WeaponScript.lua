---@meta

---@class UDustyClub_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field SlamMontage UAnimMontage
---@field SlamImpactSFX USoundBase
local UDustyClub_WeaponScript_C = {}

function UDustyClub_WeaponScript_C:AltAttackPressed() end

function UDustyClub_WeaponScript_C:CancelAllAttacks() end

---@param EntryPoint int32
function UDustyClub_WeaponScript_C:ExecuteUbergraph_DustyClub_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UDustyClub_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UDustyClub_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UDustyClub_WeaponScript_C:OnBlendOut_31126C664663FF0D5463F08F6236C6F3(NotifyName) end

---@param NotifyName FName
function UDustyClub_WeaponScript_C:OnCompleted_31126C664663FF0D5463F08F6236C6F3(NotifyName) end

---@param NotifyName FName
function UDustyClub_WeaponScript_C:OnInterrupted_31126C664663FF0D5463F08F6236C6F3(NotifyName) end

---@param NotifyName FName
function UDustyClub_WeaponScript_C:OnNotifyBegin_31126C664663FF0D5463F08F6236C6F3(NotifyName) end

---@param NotifyName FName
function UDustyClub_WeaponScript_C:OnNotifyEnd_31126C664663FF0D5463F08F6236C6F3(NotifyName) end

---@param DeltaSeconds float
function UDustyClub_WeaponScript_C:ReceiveTick(DeltaSeconds) end
