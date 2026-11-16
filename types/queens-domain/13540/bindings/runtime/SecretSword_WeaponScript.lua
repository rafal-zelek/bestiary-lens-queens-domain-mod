---@meta

---@class USecretSword_WeaponScript_C : UFlyingSword_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FireProjectile boolean
local USecretSword_WeaponScript_C = {}

function USecretSword_WeaponScript_C:AttackPressed() end

function USecretSword_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function USecretSword_WeaponScript_C:ExecuteUbergraph_SecretSword_WeaponScript(EntryPoint) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnBlendOut_660FDDB946E90102B71CBB86B92D7E0A(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnBlendOut_D9194ADB41CB21B57E52BF9D5F43E1F6(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnBlendOut_EEE03AD4487E0D53348A9A8DD2FCD1DB(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnCompleted_660FDDB946E90102B71CBB86B92D7E0A(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnCompleted_D9194ADB41CB21B57E52BF9D5F43E1F6(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnCompleted_EEE03AD4487E0D53348A9A8DD2FCD1DB(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnInterrupted_660FDDB946E90102B71CBB86B92D7E0A(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnInterrupted_D9194ADB41CB21B57E52BF9D5F43E1F6(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnInterrupted_EEE03AD4487E0D53348A9A8DD2FCD1DB(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnNotifyBegin_660FDDB946E90102B71CBB86B92D7E0A(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnNotifyBegin_D9194ADB41CB21B57E52BF9D5F43E1F6(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnNotifyBegin_EEE03AD4487E0D53348A9A8DD2FCD1DB(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnNotifyEnd_660FDDB946E90102B71CBB86B92D7E0A(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnNotifyEnd_D9194ADB41CB21B57E52BF9D5F43E1F6(NotifyName) end

---@param NotifyName FName
function USecretSword_WeaponScript_C:OnNotifyEnd_EEE03AD4487E0D53348A9A8DD2FCD1DB(NotifyName) end

function USecretSword_WeaponScript_C:SpawnProjectile() end
