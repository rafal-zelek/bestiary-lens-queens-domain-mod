---@meta

---@class USkullRod_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CalculatedAltFireMult float
---@field ProjectileMult int32
local USkullRod_WeaponScript_C = {}

function USkullRod_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function USkullRod_WeaponScript_C:ExecuteUbergraph_SkullRod_WeaponScript(EntryPoint) end

---@param NotifyName FName
function USkullRod_WeaponScript_C:OnBlendOut_A4FF7A7A41C23793B2A7A2A485D4B97D(NotifyName) end

---@param NotifyName FName
function USkullRod_WeaponScript_C:OnCompleted_A4FF7A7A41C23793B2A7A2A485D4B97D(NotifyName) end

---@param NotifyName FName
function USkullRod_WeaponScript_C:OnInterrupted_A4FF7A7A41C23793B2A7A2A485D4B97D(NotifyName) end

---@param NotifyName FName
function USkullRod_WeaponScript_C:OnNotifyBegin_A4FF7A7A41C23793B2A7A2A485D4B97D(NotifyName) end

---@param NotifyName FName
function USkullRod_WeaponScript_C:OnNotifyEnd_A4FF7A7A41C23793B2A7A2A485D4B97D(NotifyName) end
