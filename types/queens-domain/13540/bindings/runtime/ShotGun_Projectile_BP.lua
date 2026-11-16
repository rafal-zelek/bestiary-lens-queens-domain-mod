---@meta

---@class AShotGun_Projectile_BP_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EnemyHittingBox UBoxComponent
---@field Trail UNiagaraComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_C2D7AB534603E4242A0546A2BE66DE2B float
---@field ScaleUp__Direction_C2D7AB534603E4242A0546A2BE66DE2B ETimelineDirection::Type
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
---@field HitEnemies TSet<AEnemyBase_C>
---@field ['Player Config'] UPlayerBalance_C
---@field OpacityExponent float
---@field WeaponStats UFS_WeaponStats
local AShotGun_Projectile_BP_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AShotGun_Projectile_BP_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function AShotGun_Projectile_BP_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function AShotGun_Projectile_BP_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function AShotGun_Projectile_BP_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function AShotGun_Projectile_BP_C:ExecuteUbergraph_ShotGun_Projectile_BP(EntryPoint) end

function AShotGun_Projectile_BP_C:InstantlyDissolve() end

function AShotGun_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AShotGun_Projectile_BP_C:ReceiveTick(DeltaSeconds) end

function AShotGun_Projectile_BP_C:ScaleUp__FinishedFunc() end

function AShotGun_Projectile_BP_C:ScaleUp__UpdateFunc() end

function AShotGun_Projectile_BP_C:TickLast() end

AShotGun_Projectile_BP_C['Pre-Destruction'] = function(self) end
