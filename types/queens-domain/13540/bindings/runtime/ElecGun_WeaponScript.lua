---@meta

---@class UElecGun_WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltFireChargedDamageMultiplier float
---@field AltAttackIsFiring boolean
---@field AltAttackChargeCount int32
---@field ChargeTimeStart float
---@field AltFireSizeCurve UCurveFloat
---@field ChargingSFX UAudioComponent
---@field AltFireHitTargets TSet<AActor>
---@field BeamSystem UNiagaraComponent
---@field SurfaceSystem UNiagaraComponent
---@field LaserSound UAudioComponent
---@field RumbleLoop UForceFeedbackComponent
local UElecGun_WeaponScript_C = {}

function UElecGun_WeaponScript_C:AltAttackPressed() end

function UElecGun_WeaponScript_C:AltAttackReleased() end

function UElecGun_WeaponScript_C:AttackPressed() end

---@param EntryPoint int32
function UElecGun_WeaponScript_C:ExecuteUbergraph_ElecGun_WeaponScript(EntryPoint) end

function UElecGun_WeaponScript_C:Fire() end

function UElecGun_WeaponScript_C:FireBullet() end

---@param AimForHitbox boolean
function UElecGun_WeaponScript_C:GetCrosshairPoint(AimForHitbox) end

function UElecGun_WeaponScript_C:GetFireLocation() end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnBlendOut_6B13961441D5AD3C1E6FD4917245BE00(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnBlendOut_D1E5E244490C643736A08D947CBE02FE(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnCompleted_6B13961441D5AD3C1E6FD4917245BE00(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnCompleted_D1E5E244490C643736A08D947CBE02FE(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnInterrupted_6B13961441D5AD3C1E6FD4917245BE00(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnInterrupted_D1E5E244490C643736A08D947CBE02FE(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnNotifyBegin_6B13961441D5AD3C1E6FD4917245BE00(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnNotifyBegin_D1E5E244490C643736A08D947CBE02FE(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnNotifyEnd_6B13961441D5AD3C1E6FD4917245BE00(NotifyName) end

---@param NotifyName FName
function UElecGun_WeaponScript_C:OnNotifyEnd_D1E5E244490C643736A08D947CBE02FE(NotifyName) end
