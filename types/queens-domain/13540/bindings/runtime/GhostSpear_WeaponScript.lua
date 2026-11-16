---@meta

---@class UGhostSpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DOingAlt boolean
---@field ProjectileMult int32
local UGhostSpear_WeaponScript_C = {}

function UGhostSpear_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UGhostSpear_WeaponScript_C:ExecuteUbergraph_GhostSpear_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UGhostSpear_WeaponScript_C:OnBlendOut_1D03CE55484BFC48DAA10486C475F44F(NotifyName) end

---@param NotifyName FName
function UGhostSpear_WeaponScript_C:OnCompleted_1D03CE55484BFC48DAA10486C475F44F(NotifyName) end

---@param NotifyName FName
function UGhostSpear_WeaponScript_C:OnInterrupted_1D03CE55484BFC48DAA10486C475F44F(NotifyName) end

---@param NotifyName FName
function UGhostSpear_WeaponScript_C:OnNotifyBegin_1D03CE55484BFC48DAA10486C475F44F(NotifyName) end

---@param NotifyName FName
function UGhostSpear_WeaponScript_C:OnNotifyEnd_1D03CE55484BFC48DAA10486C475F44F(NotifyName) end
