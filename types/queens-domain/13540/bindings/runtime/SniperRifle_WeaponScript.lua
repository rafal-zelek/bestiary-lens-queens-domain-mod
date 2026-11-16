---@meta

---@class USniperRifle_WeaponScript_C : UGunBase_WeaponScript_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AltFireChargedDamageMultiplier float
---@field LaserAttackIsFiring boolean
---@field AltAttackChargeCount int32
---@field ChargeTimeStart float
---@field AltFireSizeCurve UCurveFloat
---@field ChargingSFX UAudioComponent
---@field LaserFireHitTargets TSet<AActor>
---@field BeamSystem UNiagaraComponent
---@field SurfaceSystem UNiagaraComponent
---@field LaserSound UAudioComponent
---@field RumbleLoop UForceFeedbackComponent
---@field MeleeAltCharging boolean
---@field SecondaryAttackRunning boolean
---@field LaserAttackCharging boolean
local USniperRifle_WeaponScript_C = {}

function USniperRifle_WeaponScript_C:AltAttackPressed() end

function USniperRifle_WeaponScript_C:AltAttackReleased() end

function USniperRifle_WeaponScript_C:AttackPressed() end

function USniperRifle_WeaponScript_C:AttackReleased() end

---@param EntryPoint int32
function USniperRifle_WeaponScript_C:ExecuteUbergraph_SniperRifle_WeaponScript(EntryPoint) end

function USniperRifle_WeaponScript_C:Fire() end

function USniperRifle_WeaponScript_C:FireBullet() end

---@param AimForHitbox boolean
function USniperRifle_WeaponScript_C:GetCrosshairPoint(AimForHitbox) end

function USniperRifle_WeaponScript_C:GetFireLocation() end

function USniperRifle_WeaponScript_C:GetLaserCellsPerSec() end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function USniperRifle_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_07AC42A7404E51FE48FE4FBA76EDCFE9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_104F00E943E44FA899AC0098770DFBBD(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_17C40E274FA48E9F12A81FBA5F593CB9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_7B7175624E04B344A85ECFB1E07A15BC(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_7DFC33354465CBA104DCC280BDF73CB2(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_9B6673754AAF5B3B17598CB95DBCBB05(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_B563795E4D9E99854F99AFB7F6FCEC09(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnBlendOut_EA43A0D648639DF2A343D2A271F0695B(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_07AC42A7404E51FE48FE4FBA76EDCFE9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_104F00E943E44FA899AC0098770DFBBD(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_17C40E274FA48E9F12A81FBA5F593CB9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_7B7175624E04B344A85ECFB1E07A15BC(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_7DFC33354465CBA104DCC280BDF73CB2(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_9B6673754AAF5B3B17598CB95DBCBB05(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_B563795E4D9E99854F99AFB7F6FCEC09(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnCompleted_EA43A0D648639DF2A343D2A271F0695B(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_07AC42A7404E51FE48FE4FBA76EDCFE9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_104F00E943E44FA899AC0098770DFBBD(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_17C40E274FA48E9F12A81FBA5F593CB9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_7B7175624E04B344A85ECFB1E07A15BC(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_7DFC33354465CBA104DCC280BDF73CB2(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_9B6673754AAF5B3B17598CB95DBCBB05(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_B563795E4D9E99854F99AFB7F6FCEC09(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnInterrupted_EA43A0D648639DF2A343D2A271F0695B(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_07AC42A7404E51FE48FE4FBA76EDCFE9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_104F00E943E44FA899AC0098770DFBBD(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_17C40E274FA48E9F12A81FBA5F593CB9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_7B7175624E04B344A85ECFB1E07A15BC(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_7DFC33354465CBA104DCC280BDF73CB2(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_9B6673754AAF5B3B17598CB95DBCBB05(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_B563795E4D9E99854F99AFB7F6FCEC09(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyBegin_EA43A0D648639DF2A343D2A271F0695B(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_07AC42A7404E51FE48FE4FBA76EDCFE9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_104F00E943E44FA899AC0098770DFBBD(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_17C40E274FA48E9F12A81FBA5F593CB9(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_7B7175624E04B344A85ECFB1E07A15BC(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_7DFC33354465CBA104DCC280BDF73CB2(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_9B6673754AAF5B3B17598CB95DBCBB05(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_B563795E4D9E99854F99AFB7F6FCEC09(NotifyName) end

---@param NotifyName FName
function USniperRifle_WeaponScript_C:OnNotifyEnd_EA43A0D648639DF2A343D2A271F0695B(NotifyName) end

---@param DeltaSeconds float
function USniperRifle_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function USniperRifle_WeaponScript_C:StopRumbleLoop() end

USniperRifle_WeaponScript_C['Alt Fire Damage Tick'] = function(self) end

USniperRifle_WeaponScript_C['Cancel Alt Fire'] = function(self) end

USniperRifle_WeaponScript_C['Cancel Startup'] = function(self) end
