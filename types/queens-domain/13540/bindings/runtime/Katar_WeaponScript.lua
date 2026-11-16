---@meta

---@class UKatar_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
local UKatar_WeaponScript_C = {}

function UKatar_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UKatar_WeaponScript_C:ExecuteUbergraph_Katar_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UKatar_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

---@param NotifyName FName
function UKatar_WeaponScript_C:OnBlendOut_467FC3E24D02BED7ACBC1B80FC1E4079(NotifyName) end

---@param NotifyName FName
function UKatar_WeaponScript_C:OnCompleted_467FC3E24D02BED7ACBC1B80FC1E4079(NotifyName) end

---@param NotifyName FName
function UKatar_WeaponScript_C:OnInterrupted_467FC3E24D02BED7ACBC1B80FC1E4079(NotifyName) end

---@param NotifyName FName
function UKatar_WeaponScript_C:OnNotifyBegin_467FC3E24D02BED7ACBC1B80FC1E4079(NotifyName) end

---@param NotifyName FName
function UKatar_WeaponScript_C:OnNotifyEnd_467FC3E24D02BED7ACBC1B80FC1E4079(NotifyName) end
