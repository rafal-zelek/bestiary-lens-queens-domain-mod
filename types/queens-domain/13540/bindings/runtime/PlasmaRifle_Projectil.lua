---@meta

---@class APlasmaRifle_Projectil_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_4B8FDF2F409D89BAA819C098FE0C4604 float
---@field ScaleUp__Direction_4B8FDF2F409D89BAA819C098FE0C4604 ETimelineDirection::Type
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
---@field Sequence int32
local APlasmaRifle_Projectil_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function APlasmaRifle_Projectil_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function APlasmaRifle_Projectil_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function APlasmaRifle_Projectil_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function APlasmaRifle_Projectil_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function APlasmaRifle_Projectil_C:ExecuteUbergraph_PlasmaRifle_Projectil(EntryPoint) end

function APlasmaRifle_Projectil_C:InstantlyDissolve() end

function APlasmaRifle_Projectil_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function APlasmaRifle_Projectil_C:ReceiveTick(DeltaSeconds) end

function APlasmaRifle_Projectil_C:ScaleUp__FinishedFunc() end

function APlasmaRifle_Projectil_C:ScaleUp__UpdateFunc() end

function APlasmaRifle_Projectil_C:TickLast() end

APlasmaRifle_Projectil_C['Pre-Destruction'] = function(self) end
