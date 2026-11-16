---@meta

---@class URayneScythe_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackActive boolean
---@field DashHitboxBonusRange float
---@field StabDir FVector
---@field Grounded boolean
---@field DashFX UNiagaraSystem
---@field DashColor FLinearColor
---@field DashDuration float
---@field DashDistanceMult float
---@field DashForceCurve UCurveFloat
---@field DashSpeed float
---@field DashMontage UAnimMontage
local URayneScythe_WeaponScript_C = {}

function URayneScythe_WeaponScript_C:AltAttackPressed() end

function URayneScythe_WeaponScript_C:CancelCustomDash() end

function URayneScythe_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function URayneScythe_WeaponScript_C:ExecuteUbergraph_RayneScythe_WeaponScript(EntryPoint) end

function URayneScythe_WeaponScript_C:GetDashAnim() end

function URayneScythe_WeaponScript_C:ReceiveBeginPlay() end
