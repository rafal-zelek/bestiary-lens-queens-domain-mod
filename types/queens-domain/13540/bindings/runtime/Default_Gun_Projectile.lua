---@meta

---@class ADefault_Gun_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_2A1FAC5A451370FF4409EDA264465788 float
---@field ScaleUp__Direction_2A1FAC5A451370FF4409EDA264465788 ETimelineDirection::Type
---@field ScaleUp UTimelineComponent
---@field ['Impact Damage Amount'] float
---@field DisableTrailDeactivation boolean
---@field FireSound USoundBase
---@field LastFrameLoc FVector
---@field HitRadius float
---@field AlreadyHit boolean
---@field HitWater boolean
---@field StartScale FVector
---@field Damage FFB_DamageAttributeSet
---@field AimDir FVector
---@field ImpactFX UNiagaraSystem
---@field DistanceTravelled float
---@field TravelDistanceDamageCurve UCurveFloat
---@field OpacityExponent float
local ADefault_Gun_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ADefault_Gun_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function ADefault_Gun_Projectile_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function ADefault_Gun_Projectile_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function ADefault_Gun_Projectile_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function ADefault_Gun_Projectile_C:ExecuteUbergraph_Default_Gun_Projectile(EntryPoint) end

function ADefault_Gun_Projectile_C:InstantlyDissolve() end

function ADefault_Gun_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADefault_Gun_Projectile_C:ReceiveTick(DeltaSeconds) end

function ADefault_Gun_Projectile_C:ScaleUp__FinishedFunc() end

function ADefault_Gun_Projectile_C:ScaleUp__UpdateFunc() end

function ADefault_Gun_Projectile_C:TickLast() end

ADefault_Gun_Projectile_C['Pre-Destruction'] = function(self) end
