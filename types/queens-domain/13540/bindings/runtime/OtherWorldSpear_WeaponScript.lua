---@meta

---@class UOtherWorldSpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DOingAlt boolean
local UOtherWorldSpear_WeaponScript_C = {}

function UOtherWorldSpear_WeaponScript_C:AltAttackPressed() end

---@param Amount int32
---@param FromSteal boolean
function UOtherWorldSpear_WeaponScript_C:CustomEvent_0(Amount, FromSteal) end

---@param EntryPoint int32
function UOtherWorldSpear_WeaponScript_C:ExecuteUbergraph_OtherWorldSpear_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UOtherWorldSpear_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UOtherWorldSpear_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UOtherWorldSpear_WeaponScript_C:OnBlendOut_7D02CC444CB252A69A051E8E4D6DC115(NotifyName) end

---@param NotifyName FName
function UOtherWorldSpear_WeaponScript_C:OnCompleted_7D02CC444CB252A69A051E8E4D6DC115(NotifyName) end

---@param NotifyName FName
function UOtherWorldSpear_WeaponScript_C:OnInterrupted_7D02CC444CB252A69A051E8E4D6DC115(NotifyName) end

---@param NotifyName FName
function UOtherWorldSpear_WeaponScript_C:OnNotifyBegin_7D02CC444CB252A69A051E8E4D6DC115(NotifyName) end

---@param NotifyName FName
function UOtherWorldSpear_WeaponScript_C:OnNotifyEnd_7D02CC444CB252A69A051E8E4D6DC115(NotifyName) end

function UOtherWorldSpear_WeaponScript_C:ReceiveBeginPlay() end
