---@meta

---@class AHellslime_Disease_BP_C : AEnemyBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field FireballSpawn USceneComponent
---@field currentpfx_0 UNiagaraComponent
---@field CurrentAttackSound_0 UAudioComponent
---@field CurrentFloorPFX_0 UNiagaraComponent
---@field MeleeRange float
---@field Charged boolean
---@field CurrentFireball AHellSlime_Diseaseball_C
---@field Mid UMaterialInstanceDynamic
---@field GlowColor FLinearColor
local AHellslime_Disease_BP_C = {}

---@param AutoChosenAttack int32
---@param KeyForChosenAttack FName
function AHellslime_Disease_BP_C:AttemptAttack(AutoChosenAttack, KeyForChosenAttack) end

---@param bIgnoreWeight boolean
---@param Index int32
function AHellslime_Disease_BP_C:CanUseAttack(bIgnoreWeight, Index) end

function AHellslime_Disease_BP_C:ChargeEnded() end

function AHellslime_Disease_BP_C:CheckChase() end

function AHellslime_Disease_BP_C:CurrentFireballSploded() end

---@param EntryPoint int32
function AHellslime_Disease_BP_C:ExecuteUbergraph_Hellslime_Disease_BP(EntryPoint) end

function AHellslime_Disease_BP_C:Fireball() end

function AHellslime_Disease_BP_C:ForceFireball() end

---@param NoRewards boolean
---@param SupressDeathSound boolean
function AHellslime_Disease_BP_C:Kill(NoRewards, SupressDeathSound) end

function AHellslime_Disease_BP_C:LaunchFireball() end

function AHellslime_Disease_BP_C:Melee() end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnBlendOut_23F932054302F66F62B84A8D193FF9A6(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnBlendOut_8F7C7069498A5AA38AF8E38F72A6AD7C(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnCompleted_23F932054302F66F62B84A8D193FF9A6(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnCompleted_8F7C7069498A5AA38AF8E38F72A6AD7C(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnInterrupted_23F932054302F66F62B84A8D193FF9A6(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnInterrupted_8F7C7069498A5AA38AF8E38F72A6AD7C(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnNotifyBegin_23F932054302F66F62B84A8D193FF9A6(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnNotifyBegin_8F7C7069498A5AA38AF8E38F72A6AD7C(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnNotifyEnd_23F932054302F66F62B84A8D193FF9A6(NotifyName) end

---@param NotifyName FName
function AHellslime_Disease_BP_C:OnNotifyEnd_8F7C7069498A5AA38AF8E38F72A6AD7C(NotifyName) end

function AHellslime_Disease_BP_C:ReceiveBeginPlay() end

function AHellslime_Disease_BP_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function AHellslime_Disease_BP_C:ReceiveTick(DeltaSeconds) end

function AHellslime_Disease_BP_C:StartFireballCharge() end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function AHellslime_Disease_BP_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end

AHellslime_Disease_BP_C['Update Rotation'] = function(self) end
