---@meta

---@class UShotgun_WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltFireChargedDamageMultiplier float
---@field ChargingAltAttack boolean
---@field AltAttackChargeCount int32
---@field ChargingProjectile AShotgun_AltFireProjectile_BP_C
---@field ChargeTimeStart float
---@field AltFireSizeCurve UCurveFloat
---@field ChargingSFX UAudioComponent
---@field RumbleLoop UForceFeedbackComponent
---@field cancelling boolean
local UShotgun_WeaponScript_C = {}

function UShotgun_WeaponScript_C:AltAttackPressed() end

function UShotgun_WeaponScript_C:AltAttackReleased() end

function UShotgun_WeaponScript_C:AttackPressed() end

function UShotgun_WeaponScript_C:AttackReleased() end

function UShotgun_WeaponScript_C:CancelAllAttacks() end

---@param EntryPoint int32
function UShotgun_WeaponScript_C:ExecuteUbergraph_Shotgun_WeaponScript(EntryPoint) end

function UShotgun_WeaponScript_C:Fire() end

function UShotgun_WeaponScript_C:FireBullet() end

function UShotgun_WeaponScript_C:FireChargedProjectile() end

function UShotgun_WeaponScript_C:GetChargeProgress() end

---@param Progress float
---@param Charging boolean
---@param Valid boolean
function UShotgun_WeaponScript_C:GetChargeProgressClamped(Progress, Charging, Valid) end

function UShotgun_WeaponScript_C:GetChargeProgressClamped_1_1() end

function UShotgun_WeaponScript_C:GetChargeProgress_ClampedForBar() end

function UShotgun_WeaponScript_C:IncrementChargeCount() end

function UShotgun_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnBlendOut_08DA6FD34D3104E15A536E99260E7DCC(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnBlendOut_105FACB9472D04479ACCE3ABECEA42D9(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnBlendOut_62CFEBB64AF28618C44FE79C0E6BE190(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnBlendOut_9CBC2AB247963726C0F5B4B0F703887A(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnBlendOut_9FD3A21442917C7F09F457BB47CF87F4(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnBlendOut_E7A64A0848BA7DA5BBDCFF92DB57A3CA(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnCompleted_08DA6FD34D3104E15A536E99260E7DCC(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnCompleted_105FACB9472D04479ACCE3ABECEA42D9(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnCompleted_62CFEBB64AF28618C44FE79C0E6BE190(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnCompleted_9CBC2AB247963726C0F5B4B0F703887A(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnCompleted_9FD3A21442917C7F09F457BB47CF87F4(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnCompleted_E7A64A0848BA7DA5BBDCFF92DB57A3CA(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnInterrupted_08DA6FD34D3104E15A536E99260E7DCC(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnInterrupted_105FACB9472D04479ACCE3ABECEA42D9(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnInterrupted_62CFEBB64AF28618C44FE79C0E6BE190(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnInterrupted_9CBC2AB247963726C0F5B4B0F703887A(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnInterrupted_9FD3A21442917C7F09F457BB47CF87F4(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnInterrupted_E7A64A0848BA7DA5BBDCFF92DB57A3CA(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyBegin_08DA6FD34D3104E15A536E99260E7DCC(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyBegin_105FACB9472D04479ACCE3ABECEA42D9(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyBegin_62CFEBB64AF28618C44FE79C0E6BE190(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyBegin_9CBC2AB247963726C0F5B4B0F703887A(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyBegin_9FD3A21442917C7F09F457BB47CF87F4(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyBegin_E7A64A0848BA7DA5BBDCFF92DB57A3CA(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyEnd_08DA6FD34D3104E15A536E99260E7DCC(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyEnd_105FACB9472D04479ACCE3ABECEA42D9(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyEnd_62CFEBB64AF28618C44FE79C0E6BE190(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyEnd_9CBC2AB247963726C0F5B4B0F703887A(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyEnd_9FD3A21442917C7F09F457BB47CF87F4(NotifyName) end

---@param NotifyName FName
function UShotgun_WeaponScript_C:OnNotifyEnd_E7A64A0848BA7DA5BBDCFF92DB57A3CA(NotifyName) end

---@param DeltaSeconds float
function UShotgun_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UShotgun_WeaponScript_C:StopRumbleLoop() end

---@param AOE boolean
---@param Damage FFB_DamageAttributeSet
UShotgun_WeaponScript_C['Get Secondary Projectile Damage'] = function(self, AOE, Damage) end
