---@meta

---@class UGunBase_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LastFireTime float
---@field DisableLeftHandAdditiveOnShoot boolean
---@field NextAllowedFireTime float
---@field FullAuto boolean
---@field Firing boolean
---@field EnableEndOfAutoFireAnim boolean
---@field EndOfAutoFireAnim UAnimMontage
---@field FireRumble UForceFeedbackEffect
local UGunBase_WeaponScript_C = {}

function UGunBase_WeaponScript_C:AltAttackPressed() end

function UGunBase_WeaponScript_C:AttackPressed() end

function UGunBase_WeaponScript_C:AttackReleased() end

function UGunBase_WeaponScript_C:Bla() end

---@param CanConsume boolean
function UGunBase_WeaponScript_C:CanConsumeCharge(CanConsume) end

---@param Can boolean
---@param FailedDueToCharge boolean
function UGunBase_WeaponScript_C:CanFire(Can, FailedDueToCharge) end

function UGunBase_WeaponScript_C:DoFireRumble() end

function UGunBase_WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function UGunBase_WeaponScript_C:ExecuteUbergraph_GunBase_WeaponScript(EntryPoint) end

function UGunBase_WeaponScript_C:Fire() end

function UGunBase_WeaponScript_C:FireBullet() end

---@param Secondary boolean
---@param Consumption float
function UGunBase_WeaponScript_C:GetCellConsumptionPerShot(Secondary, Consumption) end

---@param Mult float
function UGunBase_WeaponScript_C:GetChargedNormalAttackMultiplier(Mult) end

---@param CurrentPowerCharge float
function UGunBase_WeaponScript_C:GetCurrentPowerCharge(CurrentPowerCharge) end

function UGunBase_WeaponScript_C:GetFireDelay() end

function UGunBase_WeaponScript_C:GetFireLocation() end

---@param Unlocked boolean
function UGunBase_WeaponScript_C:IsUnlocked(Unlocked) end

function UGunBase_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnBlendOut_AEC4839D4930F89929FCEFB922BEE574(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnBlendOut_CF42657445F8D087FF1F7A8C078DBBAE(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnCompleted_AEC4839D4930F89929FCEFB922BEE574(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnCompleted_CF42657445F8D087FF1F7A8C078DBBAE(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnInterrupted_AEC4839D4930F89929FCEFB922BEE574(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnInterrupted_CF42657445F8D087FF1F7A8C078DBBAE(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnNotifyBegin_AEC4839D4930F89929FCEFB922BEE574(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnNotifyBegin_CF42657445F8D087FF1F7A8C078DBBAE(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnNotifyEnd_AEC4839D4930F89929FCEFB922BEE574(NotifyName) end

---@param NotifyName FName
function UGunBase_WeaponScript_C:OnNotifyEnd_CF42657445F8D087FF1F7A8C078DBBAE(NotifyName) end

---@param Time float
function UGunBase_WeaponScript_C:PauseAutoFireForTime(Time) end

function UGunBase_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UGunBase_WeaponScript_C:ReceiveTick(DeltaSeconds) end

---@param SpawnTransform FTransform
function UGunBase_WeaponScript_C:SpawnProjectile(SpawnTransform) end

---@param Charge_Delay float
---@param Secondary boolean
---@param Consumed boolean
function UGunBase_WeaponScript_C:TryConsumeCharge(Charge_Delay, Secondary, Consumed) end

---@param Melee_FX_Offset FTransform
UGunBase_WeaponScript_C['Get Current Combo Attack Config'] = function(self, Melee_FX_Offset) end

---@param AOE boolean
---@param Damage FFB_DamageAttributeSet
UGunBase_WeaponScript_C['Get Primary Projectile Damage'] = function(self, AOE, Damage) end

---@param SlashGun_ProjectileDistanceFalloffCurve UCurveFloat
UGunBase_WeaponScript_C['Get Projectile Travel Distance Falloff Curve'] = function(self, SlashGun_ProjectileDistanceFalloffCurve) end

---@param AOE boolean
---@param Damage FFB_DamageAttributeSet
UGunBase_WeaponScript_C['Get Secondary Projectile Damage'] = function(self, AOE, Damage) end
