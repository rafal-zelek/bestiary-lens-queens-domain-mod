---@meta

---@class ASpear_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field SpearFXRoot USceneComponent
---@field Projectile_Trail UNiagaraComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field Timeline_0_NewTrack_0_C53E32644D9DCE96A13347A0BFF8D9E4 float
---@field Timeline_0__Direction_C53E32644D9DCE96A13347A0BFF8D9E4 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field DisableTrailDeactivation boolean
---@field DaggerSound USoundBase
---@field LastFrameLoc FVector
---@field AlreadyHit boolean
---@field HitWater boolean
---@field Damage FFB_DamageAttributeSet
---@field StartingVelocity FVector
---@field LocalDelta float
---@field Destroying boolean
---@field HitEnemies TSet<AEnemyBase_C>
---@field ReturnSuck float
---@field HitMultiplier float
---@field HitEnemy boolean
---@field ItemData UFS_ItemData_C
---@field CollisionSize FVector
---@field ImpactSystem UNiagaraSystem
---@field DoMaterialSwap boolean
---@field ImpactSound USoundBase
---@field ImmediatelyHideMeshOnImpact boolean
local ASpear_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ASpear_Projectile_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param ImpactResult FHitResult
function ASpear_Projectile_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

function ASpear_Projectile_C:Dissolve() end

---@param EntryPoint int32
function ASpear_Projectile_C:ExecuteUbergraph_Spear_Projectile(EntryPoint) end

function ASpear_Projectile_C:HitKillVolume() end

function ASpear_Projectile_C:PickedUp() end

function ASpear_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ASpear_Projectile_C:ReceiveTick(DeltaSeconds) end

function ASpear_Projectile_C:StartReturn() end

function ASpear_Projectile_C:TickLast() end

function ASpear_Projectile_C:Timeline_0__FinishedFunc() end

function ASpear_Projectile_C:Timeline_0__UpdateFunc() end

function ASpear_Projectile_C:TouchedKillVolume() end

function ASpear_Projectile_C:UpdateCollision() end

function ASpear_Projectile_C:WaterTrace() end

ASpear_Projectile_C['Damage Trace'] = function(self) end
