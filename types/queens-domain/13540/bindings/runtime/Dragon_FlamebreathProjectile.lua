---@meta

---@class ADragon_FlamebreathProjectile_C : AEnemy_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpawnCreep FDragon_FlamebreathProjectile_CSpawnCreep
---@field TravelDist float
---@field CreepSpawnInterval float
---@field PuddleType TSubclassOf<AFisher_SZ_FirePuddle_C>
---@field CreepDamage FFB_DamageAttributeSet
---@field MaxScale float
local ADragon_FlamebreathProjectile_C = {}

---@param ImpactResult FHitResult
function ADragon_FlamebreathProjectile_C:BndEvt__Dragon_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param OutHit FHitResult
function ADragon_FlamebreathProjectile_C:DoTrace(OutHit) end

---@param EntryPoint int32
function ADragon_FlamebreathProjectile_C:ExecuteUbergraph_Dragon_FlamebreathProjectile(EntryPoint) end

function ADragon_FlamebreathProjectile_C:InstantlyDissolve() end

function ADragon_FlamebreathProjectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADragon_FlamebreathProjectile_C:ReceiveTick(DeltaSeconds) end

---@param Pos FVector
---@param Type TSubclassOf<AFisher_SZ_FirePuddle_C>
---@param Damage FFB_DamageAttributeSet
---@param Source AActor
function ADragon_FlamebreathProjectile_C:SpawnCreep__DelegateSignature(Pos, Type, Damage, Source) end
