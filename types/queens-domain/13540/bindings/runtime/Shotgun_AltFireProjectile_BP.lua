---@meta

---@class AShotgun_AltFireProjectile_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Shotgun_Charging_FX UNiagaraComponent
---@field EnemyHittingBox UBoxComponent
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_71CDF66A4C57916C079592BE3B7A9D90 float
---@field ScaleUp__Direction_71CDF66A4C57916C079592BE3B7A9D90 ETimelineDirection::Type
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
---@field AOE float
---@field Fired boolean
local AShotgun_AltFireProjectile_BP_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AShotgun_AltFireProjectile_BP_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function AShotgun_AltFireProjectile_BP_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function AShotgun_AltFireProjectile_BP_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function AShotgun_AltFireProjectile_BP_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function AShotgun_AltFireProjectile_BP_C:ExecuteUbergraph_Shotgun_AltFireProjectile_BP(EntryPoint) end

function AShotgun_AltFireProjectile_BP_C:Fire() end

function AShotgun_AltFireProjectile_BP_C:InstantlyDissolve() end

function AShotgun_AltFireProjectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AShotgun_AltFireProjectile_BP_C:ReceiveTick(DeltaSeconds) end

function AShotgun_AltFireProjectile_BP_C:ScaleUp__FinishedFunc() end

function AShotgun_AltFireProjectile_BP_C:ScaleUp__UpdateFunc() end

function AShotgun_AltFireProjectile_BP_C:TickLast() end

AShotgun_AltFireProjectile_BP_C['Pre-Destruction'] = function(self) end
