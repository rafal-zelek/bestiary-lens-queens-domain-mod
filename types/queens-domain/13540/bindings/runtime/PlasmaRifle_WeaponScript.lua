---@meta

---@class UPlasmaRifle_WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastAltFireTime float
local UPlasmaRifle_WeaponScript_C = {}

function UPlasmaRifle_WeaponScript_C:AltAttackPressed() end

---@param EntryPoint int32
function UPlasmaRifle_WeaponScript_C:ExecuteUbergraph_PlasmaRifle_WeaponScript(EntryPoint) end

function UPlasmaRifle_WeaponScript_C:FireBullet() end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnBlendOut_1325FF8049CACC4470F4B9B7B33FD442(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnBlendOut_6832CAA346D13DD408A6E2B48CB5AE1B(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnBlendOut_BABB61934B3EC238857C27AF6FF7792E(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnCompleted_1325FF8049CACC4470F4B9B7B33FD442(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnCompleted_6832CAA346D13DD408A6E2B48CB5AE1B(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnCompleted_BABB61934B3EC238857C27AF6FF7792E(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnInterrupted_1325FF8049CACC4470F4B9B7B33FD442(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnInterrupted_6832CAA346D13DD408A6E2B48CB5AE1B(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnInterrupted_BABB61934B3EC238857C27AF6FF7792E(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnNotifyBegin_1325FF8049CACC4470F4B9B7B33FD442(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnNotifyBegin_6832CAA346D13DD408A6E2B48CB5AE1B(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnNotifyBegin_BABB61934B3EC238857C27AF6FF7792E(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnNotifyEnd_1325FF8049CACC4470F4B9B7B33FD442(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnNotifyEnd_6832CAA346D13DD408A6E2B48CB5AE1B(NotifyName) end

---@param NotifyName FName
function UPlasmaRifle_WeaponScript_C:OnNotifyEnd_BABB61934B3EC238857C27AF6FF7792E(NotifyName) end

---@param NewAnimToPlay UAnimationAsset
function UPlasmaRifle_WeaponScript_C:PlayAnimOnMesh(NewAnimToPlay) end

---@param SpawnTransform FTransform
function UPlasmaRifle_WeaponScript_C:SpawnProjectile(SpawnTransform) end
