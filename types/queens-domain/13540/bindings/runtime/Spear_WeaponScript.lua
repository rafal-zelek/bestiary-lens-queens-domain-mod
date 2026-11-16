---@meta

---@class USpear_WeaponScript_C : UWeaponScriptBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChargeLoopSound UAudioComponent
---@field ['LocalDelta Seconds'] float
---@field ProjectileThrown boolean
---@field ActiveProjectile ASpear_Projectile_C
---@field ThrownTime float
---@field ThrowingProjectile boolean
---@field Projectile TSubclassOf<ASpear_Projectile_C>
---@field ThrowMontage UAnimMontage
---@field ProjectilePowerMult float
local USpear_WeaponScript_C = {}

function USpear_WeaponScript_C:AltAttackPressed() end

function USpear_WeaponScript_C:AltAttackReleased() end

function USpear_WeaponScript_C:AttackPressed() end

function USpear_WeaponScript_C:CancelAllAttacks() end

function USpear_WeaponScript_C:EnteredHand() end

---@param EntryPoint int32
function USpear_WeaponScript_C:ExecuteUbergraph_Spear_WeaponScript(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function USpear_WeaponScript_C:GetProjectileDamage(FB_DamageAttributeSet) end

function USpear_WeaponScript_C:GetProjectileSpawnPos() end

function USpear_WeaponScript_C:InstantlyReturnSpearIfNecessary() end

function USpear_WeaponScript_C:LeftHand() end

---@param NotifyName FName
function USpear_WeaponScript_C:OnBlendOut_F3CAEFAC4EC497DCD10B90ADE35CE15F(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnBlendOut_F5A2672C4BF5BF8A477668A671BEAB01(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnCompleted_F3CAEFAC4EC497DCD10B90ADE35CE15F(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnCompleted_F5A2672C4BF5BF8A477668A671BEAB01(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnInterrupted_F3CAEFAC4EC497DCD10B90ADE35CE15F(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnInterrupted_F5A2672C4BF5BF8A477668A671BEAB01(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnNotifyBegin_F3CAEFAC4EC497DCD10B90ADE35CE15F(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnNotifyBegin_F5A2672C4BF5BF8A477668A671BEAB01(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnNotifyEnd_F3CAEFAC4EC497DCD10B90ADE35CE15F(NotifyName) end

---@param NotifyName FName
function USpear_WeaponScript_C:OnNotifyEnd_F5A2672C4BF5BF8A477668A671BEAB01(NotifyName) end

function USpear_WeaponScript_C:OnPrimaryAttackReleased() end

function USpear_WeaponScript_C:OnPrimaryAttackStartedCharging() end

function USpear_WeaponScript_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function USpear_WeaponScript_C:ReceiveTick(DeltaSeconds) end

function USpear_WeaponScript_C:ReformInHand() end

function USpear_WeaponScript_C:SpearCaught() end
