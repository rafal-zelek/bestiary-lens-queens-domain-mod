---@meta

---@class AHeavyRifle_AltFire_Projectile_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spline USplineComponent
---@field Timeline_1_Progress_20A453AF49B79B1EE59B3BAACCD2ED5E float
---@field Timeline_1__Direction_20A453AF49B79B1EE59B3BAACCD2ED5E ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Target AActor
---@field TargetWeights TMap<AActor, float>
---@field TargetDOTWeight float
---@field TargetDistanceWeight float
---@field TargetLOSWeightMul float
---@field TargetAnimStartRot FRotator
---@field Fired boolean
---@field AOE float
---@field ObjectTypesToHit TArray<EObjectTypeQuery>
---@field TargetPos FVector
local AHeavyRifle_AltFire_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AHeavyRifle_AltFire_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param ImpactResult FHitResult
function AHeavyRifle_AltFire_Projectile_C:BndEvt__HeavyRifle_AltFire_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param Target AActor
---@param Weight float
function AHeavyRifle_AltFire_Projectile_C:CalculateTargetWeight(Target, Weight) end

function AHeavyRifle_AltFire_Projectile_C:ConfigurePath() end

---@param EntryPoint int32
function AHeavyRifle_AltFire_Projectile_C:ExecuteUbergraph_HeavyRifle_AltFire_Projectile(EntryPoint) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AHeavyRifle_AltFire_Projectile_C:GetDamage(FB_DamageAttributeSet) end

---@param Hit FHitResult
function AHeavyRifle_AltFire_Projectile_C:ProjectileStopped(Hit) end

function AHeavyRifle_AltFire_Projectile_C:ReceiveBeginPlay() end

function AHeavyRifle_AltFire_Projectile_C:SetTarget() end

function AHeavyRifle_AltFire_Projectile_C:StartTracking() end

function AHeavyRifle_AltFire_Projectile_C:Timeline_1__FinishedFunc() end

function AHeavyRifle_AltFire_Projectile_C:Timeline_1__UpdateFunc() end

AHeavyRifle_AltFire_Projectile_C['End Tracking'] = function(self) end
