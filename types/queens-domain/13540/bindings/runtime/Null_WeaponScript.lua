---@meta

---@class UNull_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UNull_WeaponScript_C = {}

function UNull_WeaponScript_C:AltAttackPressed() end

function UNull_WeaponScript_C:AttackPressed() end

function UNull_WeaponScript_C:AttackReleased() end

function UNull_WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function UNull_WeaponScript_C:ExecuteUbergraph_Null_WeaponScript(EntryPoint) end

function UNull_WeaponScript_C:Hide() end

function UNull_WeaponScript_C:LeftHand() end

---@param DeltaSeconds float
function UNull_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UNull_WeaponScript_C:Show() end

function UNull_WeaponScript_C:StartSlamMove() end

---@param Melee_FX_Offset FTransform
UNull_WeaponScript_C['Get Current Combo Attack Config'] = function(self, Melee_FX_Offset) end
