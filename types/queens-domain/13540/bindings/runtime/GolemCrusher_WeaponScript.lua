---@meta

---@class UGolemCrusher_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Projectile TSubclassOf<AGolemCrusher_Projectile_C>
---@field ProjectilePowerMult float
---@field ThrowMontage UAnimMontage
---@field ProjectileCount int32
---@field AltAttackCharging boolean
---@field ProjectileOnAlt boolean
local UGolemCrusher_WeaponScript_C = {}

function UGolemCrusher_WeaponScript_C:AltAttackPressed() end

function UGolemCrusher_WeaponScript_C:AltAttackReleased() end

---@param EntryPoint int32
function UGolemCrusher_WeaponScript_C:ExecuteUbergraph_GolemCrusher_WeaponScript(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function UGolemCrusher_WeaponScript_C:GetProjectileDamage(FB_DamageAttributeSet) end

---@param ReturnValue1 FRotator
function UGolemCrusher_WeaponScript_C:GetProjectileSpawnPos(ReturnValue1) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnBlendOut_7F8ADEAF444E9DF2ACAF879F58DF5496(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnBlendOut_EA9B52904E859473F24EA1A9C7743D22(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnCompleted_7F8ADEAF444E9DF2ACAF879F58DF5496(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnCompleted_EA9B52904E859473F24EA1A9C7743D22(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnInterrupted_7F8ADEAF444E9DF2ACAF879F58DF5496(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnInterrupted_EA9B52904E859473F24EA1A9C7743D22(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnNotifyBegin_7F8ADEAF444E9DF2ACAF879F58DF5496(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnNotifyBegin_EA9B52904E859473F24EA1A9C7743D22(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnNotifyEnd_7F8ADEAF444E9DF2ACAF879F58DF5496(NotifyName) end

---@param NotifyName FName
function UGolemCrusher_WeaponScript_C:OnNotifyEnd_EA9B52904E859473F24EA1A9C7743D22(NotifyName) end
