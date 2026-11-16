---@meta

---@class UHeavyRifle__WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastAltFireTime float
---@field Sequence int32
local UHeavyRifle__WeaponScript_C = {}

function UHeavyRifle__WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UHeavyRifle__WeaponScript_C:ExecuteUbergraph_HeavyRifle__WeaponScript(EntryPoint) end

function UHeavyRifle__WeaponScript_C:FireBullet() end

---@param NotifyName FName
function UHeavyRifle__WeaponScript_C:OnBlendOut_F44D4E0D431EDF6A6FD499832E9A682E(NotifyName) end

---@param NotifyName FName
function UHeavyRifle__WeaponScript_C:OnCompleted_F44D4E0D431EDF6A6FD499832E9A682E(NotifyName) end

---@param NotifyName FName
function UHeavyRifle__WeaponScript_C:OnInterrupted_F44D4E0D431EDF6A6FD499832E9A682E(NotifyName) end

---@param NotifyName FName
function UHeavyRifle__WeaponScript_C:OnNotifyBegin_F44D4E0D431EDF6A6FD499832E9A682E(NotifyName) end

---@param NotifyName FName
function UHeavyRifle__WeaponScript_C:OnNotifyEnd_F44D4E0D431EDF6A6FD499832E9A682E(NotifyName) end

---@param NewAnimToPlay UAnimationAsset
function UHeavyRifle__WeaponScript_C:PlayAnimOnMesh(NewAnimToPlay) end

---@param SpawnTransform FTransform
function UHeavyRifle__WeaponScript_C:SpawnProjectile(SpawnTransform) end
