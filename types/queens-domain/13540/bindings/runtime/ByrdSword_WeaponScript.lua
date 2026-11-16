---@meta

---@class UByrdSword_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CalculatedAltFireMult float
---@field ProjectileMult int32
local UByrdSword_WeaponScript_C = {}

function UByrdSword_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UByrdSword_WeaponScript_C:ExecuteUbergraph_ByrdSword_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UByrdSword_WeaponScript_C:OnBlendOut_271931784BD8A0420F14FC88A584B91F(NotifyName) end

---@param NotifyName FName
function UByrdSword_WeaponScript_C:OnCompleted_271931784BD8A0420F14FC88A584B91F(NotifyName) end

---@param NotifyName FName
function UByrdSword_WeaponScript_C:OnInterrupted_271931784BD8A0420F14FC88A584B91F(NotifyName) end

---@param NotifyName FName
function UByrdSword_WeaponScript_C:OnNotifyBegin_271931784BD8A0420F14FC88A584B91F(NotifyName) end

---@param NotifyName FName
function UByrdSword_WeaponScript_C:OnNotifyEnd_271931784BD8A0420F14FC88A584B91F(NotifyName) end
