---@meta

---@class URusted_LongHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DidInAirDashAlready boolean
---@field StabDir FVector
---@field Grounded boolean
---@field SecondaryAttackRunning boolean
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
local URusted_LongHammer_WeaponScript_C = {}

function URusted_LongHammer_WeaponScript_C:AltAttackPressed() end

function URusted_LongHammer_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function URusted_LongHammer_WeaponScript_C:ExecuteUbergraph_Rusted_LongHammer_WeaponScript(EntryPoint) end

function URusted_LongHammer_WeaponScript_C:Landed() end

function URusted_LongHammer_WeaponScript_C:ReceiveBeginPlay() end
