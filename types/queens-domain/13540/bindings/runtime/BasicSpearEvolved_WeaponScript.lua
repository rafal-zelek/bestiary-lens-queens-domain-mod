---@meta

---@class UBasicSpearEvolved_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Alt Attack Running'] boolean
local UBasicSpearEvolved_WeaponScript_C = {}

function UBasicSpearEvolved_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UBasicSpearEvolved_WeaponScript_C:ExecuteUbergraph_BasicSpearEvolved_WeaponScript(EntryPoint) end

---@param SkeletalMesh USkeletalMeshComponent
function UBasicSpearEvolved_WeaponScript_C:GetSkelemesh(SkeletalMesh) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UBasicSpearEvolved_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UBasicSpearEvolved_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnBlendOut_782714FA400B535DB179AB93CE6913C7(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnBlendOut_8F3F967B4A4C8A0503246CBB39572657(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnCompleted_782714FA400B535DB179AB93CE6913C7(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnCompleted_8F3F967B4A4C8A0503246CBB39572657(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnInterrupted_782714FA400B535DB179AB93CE6913C7(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnInterrupted_8F3F967B4A4C8A0503246CBB39572657(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnNotifyBegin_782714FA400B535DB179AB93CE6913C7(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnNotifyBegin_8F3F967B4A4C8A0503246CBB39572657(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnNotifyEnd_782714FA400B535DB179AB93CE6913C7(NotifyName) end

---@param NotifyName FName
function UBasicSpearEvolved_WeaponScript_C:OnNotifyEnd_8F3F967B4A4C8A0503246CBB39572657(NotifyName) end
