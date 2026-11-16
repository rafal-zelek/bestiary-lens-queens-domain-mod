---@meta

---@class UVampireKnife_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeline_0_NewTrack_0_1193C3084079E77EF466E58255E04940 float
---@field Timeline_0__Direction_1193C3084079E77EF466E58255E04940 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field ['Special Attack Charging'] boolean
---@field BasicAttackMult float
---@field AltFireMult float
---@field AltAttackHeld boolean
---@field SpecialAttackIntroFinished boolean
---@field SpecialAttackChargeStartTime float
---@field ChargeLoopSound UAudioComponent
---@field CurrentAltAttackHPReservation float
---@field SpecialAttackBonusDamage float
---@field ['LocalDelta Seconds'] float
---@field CurrentTags FGameplayTagContainer
---@field AltAttackStaggerStacks float
---@field ChargeRumbleLoop UForceFeedbackComponent
local UVampireKnife_WeaponScript_C = {}

function UVampireKnife_WeaponScript_C:AltAttackPressed() end

function UVampireKnife_WeaponScript_C:AltAttackReleased() end

function UVampireKnife_WeaponScript_C:CalculateAltAttackCharge() end

---@param Percent float
function UVampireKnife_WeaponScript_C:CalculateCurrentLifeDrain(Percent) end

function UVampireKnife_WeaponScript_C:CancelAllAttacks() end

function UVampireKnife_WeaponScript_C:DoHPReservation() end

---@param EntryPoint int32
function UVampireKnife_WeaponScript_C:ExecuteUbergraph_VampireKnife_WeaponScript(EntryPoint) end

function UVampireKnife_WeaponScript_C:FLashWeapon() end

function UVampireKnife_WeaponScript_C:FinalizeAltAttack() end

---@param Tags FGameplayTagContainer
function UVampireKnife_WeaponScript_C:GetAdditionalTags(Tags) end

---@param Amt float
function UVampireKnife_WeaponScript_C:GetLifeDrain(Amt) end

---@param res float
function UVampireKnife_WeaponScript_C:GetMaxHPReservation(res) end

---@param Unlocked boolean
function UVampireKnife_WeaponScript_C:IsUnlocked(Unlocked) end

---@param Damage FFB_DamageAttributeSet
---@param Modified_Damage FFB_DamageAttributeSet
function UVampireKnife_WeaponScript_C:ModifyOutgoingMeleeDamage(Damage, Modified_Damage) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnBlendOut_361F8F4D4006BC9BC26EAC8C6FC10E32(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnBlendOut_70E1B1DB4C81FC12B167DDA32E492263(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnBlendOut_8A337C2747F72ACC428E5084862A267D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnBlendOut_C223CDE346FA5B950E40FFB6E4A2B7E9(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnBlendOut_D5FC83B84650CE8364B20B89C151B52D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnCompleted_361F8F4D4006BC9BC26EAC8C6FC10E32(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnCompleted_70E1B1DB4C81FC12B167DDA32E492263(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnCompleted_8A337C2747F72ACC428E5084862A267D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnCompleted_C223CDE346FA5B950E40FFB6E4A2B7E9(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnCompleted_D5FC83B84650CE8364B20B89C151B52D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnInterrupted_361F8F4D4006BC9BC26EAC8C6FC10E32(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnInterrupted_70E1B1DB4C81FC12B167DDA32E492263(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnInterrupted_8A337C2747F72ACC428E5084862A267D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnInterrupted_C223CDE346FA5B950E40FFB6E4A2B7E9(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnInterrupted_D5FC83B84650CE8364B20B89C151B52D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyBegin_361F8F4D4006BC9BC26EAC8C6FC10E32(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyBegin_70E1B1DB4C81FC12B167DDA32E492263(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyBegin_8A337C2747F72ACC428E5084862A267D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyBegin_C223CDE346FA5B950E40FFB6E4A2B7E9(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyBegin_D5FC83B84650CE8364B20B89C151B52D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyEnd_361F8F4D4006BC9BC26EAC8C6FC10E32(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyEnd_70E1B1DB4C81FC12B167DDA32E492263(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyEnd_8A337C2747F72ACC428E5084862A267D(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyEnd_C223CDE346FA5B950E40FFB6E4A2B7E9(NotifyName) end

---@param NotifyName FName
function UVampireKnife_WeaponScript_C:OnNotifyEnd_D5FC83B84650CE8364B20B89C151B52D(NotifyName) end

function UVampireKnife_WeaponScript_C:OnPrimaryAttackReleased() end

---@param Amount float
function UVampireKnife_WeaponScript_C:PlayerDamaged(Amount) end

function UVampireKnife_WeaponScript_C:PreChargeAltPressed() end

function UVampireKnife_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function UVampireKnife_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function UVampireKnife_WeaponScript_C:StopRumbleLoop() end

function UVampireKnife_WeaponScript_C:Timeline_0__FinishedFunc() end

function UVampireKnife_WeaponScript_C:Timeline_0__UpdateFunc() end
