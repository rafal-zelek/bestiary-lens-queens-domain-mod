---@meta

---@class UFinalSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
---@field SecondaryAttackActive boolean
---@field StabDir FVector
---@field Grounded boolean
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
local UFinalSword_WeaponScript_C = {}

function UFinalSword_WeaponScript_C:AltAttackPressed() end

function UFinalSword_WeaponScript_C:CancelDash() end

---@param EntryPoint int32
function UFinalSword_WeaponScript_C:ExecuteUbergraph_FinalSword_WeaponScript(EntryPoint) end
