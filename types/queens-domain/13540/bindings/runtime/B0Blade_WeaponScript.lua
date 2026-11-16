---@meta

---@class UB0Blade_WeaponScript_C : URustySword_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UB0Blade_WeaponScript_C = {}

function UB0Blade_WeaponScript_C:AltAttackPressed() end

function UB0Blade_WeaponScript_C:CancelDashAOE() end

function UB0Blade_WeaponScript_C:CustomEvent_1() end

function UB0Blade_WeaponScript_C:CustomEvent_2() end

---@param EntryPoint int32
function UB0Blade_WeaponScript_C:ExecuteUbergraph_B0Blade_WeaponScript(EntryPoint) end

---@param Hit FHitResult
---@param NoBonk boolean
---@param HitAnything boolean
---@param ActualAppliedDamage FFB_DamageAttributeSet
---@param Successfully_Damaged boolean
---@param SkipNormalBonk boolean
function UB0Blade_WeaponScript_C:HandleHit(Hit, NoBonk, HitAnything, ActualAppliedDamage, Successfully_Damaged, SkipNormalBonk) end

function UB0Blade_WeaponScript_C:ReceiveBeginPlay() end
