---@meta

---@class UManroomCross_WeaponScript_C : UWoodClub_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackActive boolean
---@field StabDir FVector
---@field DashSpeed float
---@field DashForceCurve UCurveFloat
---@field Grounded boolean
---@field DidInAirDashAlready boolean
local UManroomCross_WeaponScript_C = {}

function UManroomCross_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UManroomCross_WeaponScript_C:ExecuteUbergraph_ManroomCross_WeaponScript(EntryPoint) end

function UManroomCross_WeaponScript_C:Impact() end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UManroomCross_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end
