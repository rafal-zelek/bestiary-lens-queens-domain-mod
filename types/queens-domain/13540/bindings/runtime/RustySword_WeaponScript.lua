---@meta

---@class URustySword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackActive boolean
---@field StabDir FVector
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
---@field Grounded boolean
---@field DidInAirDashAlready boolean
---@field DashFX UNiagaraSystem
---@field DashMontage UAnimMontage
---@field DashDuration float
---@field DashDistanceMult float
---@field DashHitboxBonusRange float
---@field DashColor FLinearColor
local URustySword_WeaponScript_C = {}

function URustySword_WeaponScript_C:AltAttackPressed() end

function URustySword_WeaponScript_C:CancelCustomDash() end

function URustySword_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function URustySword_WeaponScript_C:ExecuteUbergraph_RustySword_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function URustySword_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

function URustySword_WeaponScript_C:Landed() end

function URustySword_WeaponScript_C:ReceiveBeginPlay() end
