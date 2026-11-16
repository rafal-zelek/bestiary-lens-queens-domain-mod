---@meta

---@class UTridentKeyTrident_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltAttackCharging boolean
---@field SecondaryAttackRunning boolean
---@field DidInAirDashAlready boolean
---@field StabDir FVector
---@field Grounded boolean
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
local UTridentKeyTrident_WeaponScript_C = {}

function UTridentKeyTrident_WeaponScript_C:AltAttackPressed() end

function UTridentKeyTrident_WeaponScript_C:CancelDash() end

function UTridentKeyTrident_WeaponScript_C:EvolveWeapon() end

---@param EntryPoint int32
function UTridentKeyTrident_WeaponScript_C:ExecuteUbergraph_TridentKeyTrident_WeaponScript(EntryPoint) end

function UTridentKeyTrident_WeaponScript_C:Landed() end

function UTridentKeyTrident_WeaponScript_C:ReceiveBeginPlay() end
