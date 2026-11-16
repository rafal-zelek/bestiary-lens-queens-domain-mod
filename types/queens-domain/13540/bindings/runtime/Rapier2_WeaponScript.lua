---@meta

---@class URapier2_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackActive boolean
---@field StabDir FVector
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
---@field Grounded boolean
---@field DidInAirDashAlready boolean
local URapier2_WeaponScript_C = {}

function URapier2_WeaponScript_C:AltAttackPressed() end

function URapier2_WeaponScript_C:CancelCustomDash() end

function URapier2_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function URapier2_WeaponScript_C:ExecuteUbergraph_Rapier2_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function URapier2_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

function URapier2_WeaponScript_C:Landed() end

function URapier2_WeaponScript_C:ReceiveBeginPlay() end
