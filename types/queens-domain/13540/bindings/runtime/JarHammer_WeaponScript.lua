---@meta

---@class UJarHammer_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SecondaryAttackRunning boolean
local UJarHammer_WeaponScript_C = {}

function UJarHammer_WeaponScript_C:AltAttackPressed() end

function UJarHammer_WeaponScript_C:EvolveWeapon() end

function UJarHammer_WeaponScript_C:Evolved() end

---@param EntryPoint int32
function UJarHammer_WeaponScript_C:ExecuteUbergraph_JarHammer_WeaponScript(EntryPoint) end

---@param NotifyName FName
function UJarHammer_WeaponScript_C:OnBlendOut_AB230ABE4DE1734E1D160C8E93E0BB62(NotifyName) end

---@param NotifyName FName
function UJarHammer_WeaponScript_C:OnCompleted_AB230ABE4DE1734E1D160C8E93E0BB62(NotifyName) end

---@param NotifyName FName
function UJarHammer_WeaponScript_C:OnInterrupted_AB230ABE4DE1734E1D160C8E93E0BB62(NotifyName) end

---@param NotifyName FName
function UJarHammer_WeaponScript_C:OnNotifyBegin_AB230ABE4DE1734E1D160C8E93E0BB62(NotifyName) end

---@param NotifyName FName
function UJarHammer_WeaponScript_C:OnNotifyEnd_AB230ABE4DE1734E1D160C8E93E0BB62(NotifyName) end
