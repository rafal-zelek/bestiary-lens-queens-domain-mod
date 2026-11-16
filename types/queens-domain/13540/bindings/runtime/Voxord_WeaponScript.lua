---@meta

---@class UVoxord_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CalculatedAltFireMult float
---@field SecondaryAttackActive boolean
---@field Grounded boolean
---@field DashForceCurve UCurveFloat
---@field DashSpeed float
---@field StabDir FVector
---@field SecondaryHitTargets TArray<AActor>
---@field AOEDamage FFB_DamageAttributeSet
local UVoxord_WeaponScript_C = {}

function UVoxord_WeaponScript_C:AltAttackPressed() end

function UVoxord_WeaponScript_C:CancelCustomDash() end

function UVoxord_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function UVoxord_WeaponScript_C:ExecuteUbergraph_Voxord_WeaponScript(EntryPoint) end

---@param Output FFB_DamageAttributeSet
function UVoxord_WeaponScript_C:GetAltDamage(Output) end
