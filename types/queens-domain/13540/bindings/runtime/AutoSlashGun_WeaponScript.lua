---@meta

---@class UAutoSlashGun_WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltFireDamage float
---@field LastAltFireTime float
local UAutoSlashGun_WeaponScript_C = {}

function UAutoSlashGun_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UAutoSlashGun_WeaponScript_C:ExecuteUbergraph_AutoSlashGun_WeaponScript(EntryPoint) end

function UAutoSlashGun_WeaponScript_C:FireBullet() end

---@param NotifyName FName
function UAutoSlashGun_WeaponScript_C:OnBlendOut_DE411A4645E24D903F1C7BA471571370(NotifyName) end

---@param NotifyName FName
function UAutoSlashGun_WeaponScript_C:OnCompleted_DE411A4645E24D903F1C7BA471571370(NotifyName) end

---@param NotifyName FName
function UAutoSlashGun_WeaponScript_C:OnInterrupted_DE411A4645E24D903F1C7BA471571370(NotifyName) end

---@param NotifyName FName
function UAutoSlashGun_WeaponScript_C:OnNotifyBegin_DE411A4645E24D903F1C7BA471571370(NotifyName) end

---@param NotifyName FName
function UAutoSlashGun_WeaponScript_C:OnNotifyEnd_DE411A4645E24D903F1C7BA471571370(NotifyName) end

---@param NewAnimToPlay UAnimationAsset
function UAutoSlashGun_WeaponScript_C:PlayAnimOnMesh(NewAnimToPlay) end

---@param SpawnTransform FTransform
function UAutoSlashGun_WeaponScript_C:SpawnProjectile(SpawnTransform) end
