---@meta

---@class AArcProjectile_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HiddenSword_ArcProjectileFX UNiagaraComponent
---@field Box UBoxComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field LaunchSound USoundBase
---@field LastFrameLoc FVector
---@field AlreadyHit boolean
---@field HitWater boolean
---@field Damage FFB_DamageAttributeSet
---@field StartingVelocity FVector
---@field LocalDelta float
---@field Destroying boolean
---@field HitEnemies TSet<AActor>
---@field HitMultiplier float
---@field STartingVel FVector
---@field FInalMoveTowardsPlayer boolean
local AArcProjectile_Base_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AArcProjectile_Base_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param ImpactResult FHitResult
function AArcProjectile_Base_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param Hit FHitResult
function AArcProjectile_Base_C:CustomEvent_2(Hit) end

---@param EntryPoint int32
function AArcProjectile_Base_C:ExecuteUbergraph_ArcProjectile_Base(EntryPoint) end

function AArcProjectile_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AArcProjectile_Base_C:ReceiveTick(DeltaSeconds) end

function AArcProjectile_Base_C:TickLast() end

function AArcProjectile_Base_C:TickRate() end

function AArcProjectile_Base_C:UpdateCollision() end

function AArcProjectile_Base_C:WaterTrace() end

AArcProjectile_Base_C['Damage Trace'] = function(self) end
