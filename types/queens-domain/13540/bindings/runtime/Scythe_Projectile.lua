---@meta

---@class AScythe_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScytheThrow_Cue UAudioComponent
---@field StaticMesh UStaticMeshComponent
---@field ScytheRotationRoot USceneComponent
---@field Projectile_Trail UNiagaraComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field Timeline_0_Speed_64A537D94C0625A60B2649A94E69C468 float
---@field Timeline_0_Return_64A537D94C0625A60B2649A94E69C468 float
---@field Timeline_0__Direction_64A537D94C0625A60B2649A94E69C468 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field DisableTrailDeactivation boolean
---@field DaggerSound USoundBase
---@field LastFrameLoc FVector
---@field AlreadyHit boolean
---@field HitWater boolean
---@field Damage FFB_DamageAttributeSet
---@field StartingVelocity FVector
---@field ['Initial Speed'] float
---@field ReturnDelay float
---@field ReturnForce float
---@field LocalDelta float
---@field Destroying boolean
---@field HitEnemies TSet<AEnemyBase_C>
---@field ReturnSuck float
---@field STartingVel FVector
---@field Progress float
---@field FInalMoveTowardsPlayer boolean
local AScythe_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AScythe_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param ImpactResult FHitResult
function AScythe_Projectile_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AScythe_Projectile_C:BndEvt__Scythe_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

---@param Hit FHitResult
function AScythe_Projectile_C:CustomEvent_2(Hit) end

---@param EntryPoint int32
function AScythe_Projectile_C:ExecuteUbergraph_Scythe_Projectile(EntryPoint) end

function AScythe_Projectile_C:PickedUp() end

function AScythe_Projectile_C:ReceiveBeginPlay() end

function AScythe_Projectile_C:ReceiveDestroyed() end

---@param DeltaSeconds float
function AScythe_Projectile_C:ReceiveTick(DeltaSeconds) end

function AScythe_Projectile_C:StartReturn() end

function AScythe_Projectile_C:TickLast() end

function AScythe_Projectile_C:TickRate() end

function AScythe_Projectile_C:Timeline_0__FinishedFunc() end

function AScythe_Projectile_C:Timeline_0__UpdateFunc() end

function AScythe_Projectile_C:UpdateCollision() end

function AScythe_Projectile_C:WaterTrace() end

AScythe_Projectile_C['Damage Trace'] = function(self) end
