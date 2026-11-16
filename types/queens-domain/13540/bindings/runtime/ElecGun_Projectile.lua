---@meta

---@class AElecGun_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Trail UNiagaraComponent
---@field EnemyHittingBox UBoxComponent
---@field StaticMesh UStaticMeshComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleUp_NewTrack_0_C87E5ACC4BF654BB65A06D9DA05F2116 float
---@field ScaleUp__Direction_C87E5ACC4BF654BB65A06D9DA05F2116 ETimelineDirection::Type
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
---@field ['hit wall'] boolean
---@field WeaponStats UFS_WeaponStats
---@field HitObjects TSet<AActor>
local AElecGun_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AElecGun_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
function AElecGun_Projectile_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function AElecGun_Projectile_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function AElecGun_Projectile_C:DestroySelf(DestroyedActor) end

---@param EntryPoint int32
function AElecGun_Projectile_C:ExecuteUbergraph_ElecGun_Projectile(EntryPoint) end

function AElecGun_Projectile_C:InstantlyDissolve() end

function AElecGun_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AElecGun_Projectile_C:ReceiveTick(DeltaSeconds) end

function AElecGun_Projectile_C:ScaleUp__FinishedFunc() end

function AElecGun_Projectile_C:ScaleUp__UpdateFunc() end

function AElecGun_Projectile_C:TickLast() end

AElecGun_Projectile_C['Pre-Destruction'] = function(self) end
