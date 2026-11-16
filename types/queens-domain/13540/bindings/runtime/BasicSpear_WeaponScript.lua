---@meta

---@class UBasicSpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field AltAttackCharging boolean
---@field DidInAirDashAlready boolean
---@field StabDir FVector
---@field DashForceCurve UCurveFloat
---@field Grounded boolean
---@field DashSpeed float
local UBasicSpear_WeaponScript_C = {}

function UBasicSpear_WeaponScript_C:AltAttackPressed() end

function UBasicSpear_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function UBasicSpear_WeaponScript_C:ExecuteUbergraph_BasicSpear_WeaponScript(EntryPoint) end

function UBasicSpear_WeaponScript_C:Landed() end

function UBasicSpear_WeaponScript_C:ReceiveBeginPlay() end
