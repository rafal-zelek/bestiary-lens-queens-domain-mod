---@meta

---@class AGroundTravellingProjectile_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HitBox UBoxComponent
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_82CFE40045FC33419D9AC9966797BE10 float
---@field ScaleUp__Direction_82CFE40045FC33419D9AC9966797BE10 ETimelineDirection::Type
---@field ScaleUp UTimelineComponent
---@field ['Impact Damage Amount'] float
---@field DisableTrailDeactivation boolean
---@field FireSound USoundBase
---@field LastFrameLoc FVector
---@field AlreadyHit boolean
---@field HitWater boolean
---@field StartScale FVector
---@field AimDir FVector
---@field ImpactFX UNiagaraSystem
---@field DistanceTravelled float
---@field TravelDistanceDamageCurve UCurveFloat
---@field Damage FFB_DamageAttributeSet
---@field OpacityExponent float
---@field TargetPosition FVector
---@field ['Local DT'] float
---@field InterpPosition FVector
---@field HitEnemies TSet<AActor>
---@field ['Half Size'] FVector
local AGroundTravellingProjectile_Base_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AGroundTravellingProjectile_Base_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function AGroundTravellingProjectile_Base_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function AGroundTravellingProjectile_Base_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

function AGroundTravellingProjectile_Base_C:CheckForWater() end

function AGroundTravellingProjectile_Base_C:DamageTrace() end

---@param DestroyedActor AActor
function AGroundTravellingProjectile_Base_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function AGroundTravellingProjectile_Base_C:ExecuteUbergraph_GroundTravellingProjectile_Base(EntryPoint) end

---@param InputPin FHitResult
function AGroundTravellingProjectile_Base_C:HandleDamageTraceHit(InputPin) end

function AGroundTravellingProjectile_Base_C:HandleDistanceFalloff() end

function AGroundTravellingProjectile_Base_C:HandleGroundTravel() end

function AGroundTravellingProjectile_Base_C:InstantlyDissolve() end

function AGroundTravellingProjectile_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AGroundTravellingProjectile_Base_C:ReceiveTick(DeltaSeconds) end

function AGroundTravellingProjectile_Base_C:ScaleUp__FinishedFunc() end

function AGroundTravellingProjectile_Base_C:ScaleUp__UpdateFunc() end

function AGroundTravellingProjectile_Base_C:TickLast() end

function AGroundTravellingProjectile_Base_C:UpdateDistanceTravelled() end

AGroundTravellingProjectile_Base_C['Pre-Destruction'] = function(self) end
