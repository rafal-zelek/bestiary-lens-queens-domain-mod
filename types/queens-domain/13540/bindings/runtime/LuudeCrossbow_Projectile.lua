---@meta

---@class ALuudeCrossbow_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_0F1E35E745221C69BD0A3EAE2FEB166B float
---@field ScaleUp__Direction_0F1E35E745221C69BD0A3EAE2FEB166B ETimelineDirection::Type
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
---@field ['Charge%'] float
local ALuudeCrossbow_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ALuudeCrossbow_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function ALuudeCrossbow_Projectile_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function ALuudeCrossbow_Projectile_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function ALuudeCrossbow_Projectile_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function ALuudeCrossbow_Projectile_C:ExecuteUbergraph_LuudeCrossbow_Projectile(EntryPoint) end

function ALuudeCrossbow_Projectile_C:InstantlyDissolve() end

function ALuudeCrossbow_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ALuudeCrossbow_Projectile_C:ReceiveTick(DeltaSeconds) end

function ALuudeCrossbow_Projectile_C:ScaleUp__FinishedFunc() end

function ALuudeCrossbow_Projectile_C:ScaleUp__UpdateFunc() end

function ALuudeCrossbow_Projectile_C:TickLast() end

ALuudeCrossbow_Projectile_C['Pre-Destruction'] = function(self) end
