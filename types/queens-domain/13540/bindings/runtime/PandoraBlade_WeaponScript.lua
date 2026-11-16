---@meta

---@class UPandoraBlade_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackActive boolean
---@field StabDir FVector
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
---@field Grounded boolean
local UPandoraBlade_WeaponScript_C = {}

function UPandoraBlade_WeaponScript_C:AltAttackPressed() end

function UPandoraBlade_WeaponScript_C:CancelCustomDash() end

function UPandoraBlade_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function UPandoraBlade_WeaponScript_C:ExecuteUbergraph_PandoraBlade_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UPandoraBlade_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end
