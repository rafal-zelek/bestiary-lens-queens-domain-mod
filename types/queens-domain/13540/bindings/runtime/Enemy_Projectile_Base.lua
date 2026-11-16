---@meta

---@class AEnemy_Projectile_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ProjectileSoundsLoop UAudioComponent
---@field StaticMesh UStaticMeshComponent
---@field ProjectileFX UNiagaraComponent
---@field Sphere USphereComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field Dissolve_Dissolve_2D2A5A20415DD7049D9BD68CFD120F1A float
---@field Dissolve__Direction_2D2A5A20415DD7049D9BD68CFD120F1A ETimelineDirection::Type
---@field Dissolve UTimelineComponent
---@field DisableTrailDeactivation boolean
---@field FireSound USoundBase
---@field LastFrameLoc FVector
---@field HitRadius float
---@field AlreadyHit boolean
---@field ImpactSound USoundBase
---@field DisableAutoFire boolean
---@field Duration float
---@field DurationTimer FTimerHandle
---@field Damage FFB_DamageAttributeSet
---@field SkipDirectHits boolean
---@field SkipAttachment boolean
---@field DelaybeforeDestructOnDissolve float
local AEnemy_Projectile_Base_C = {}

---@param Target AActor
---@param Hit FHitResult
function AEnemy_Projectile_Base_C:ApplyDamageTOTarget(Target, Hit) end

---@param Target AActor
---@param Hit FHitResult
function AEnemy_Projectile_Base_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function AEnemy_Projectile_Base_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param bNoRewards boolean
---@param EnemyThatDied AFS_EnemyCharacterBase
function AEnemy_Projectile_Base_C:CustomEvent_0(bNoRewards, EnemyThatDied) end

---@param DestroyedActor AActor
function AEnemy_Projectile_Base_C:DestroySelf(DestroyedActor) end

function AEnemy_Projectile_Base_C:Dissolve__FinishedFunc() end

function AEnemy_Projectile_Base_C:Dissolve__UpdateFunc() end

---@param OutHit FHitResult
function AEnemy_Projectile_Base_C:DoTrace(OutHit) end

---@param EntryPoint int32
function AEnemy_Projectile_Base_C:ExecuteUbergraph_Enemy_Projectile_Base(EntryPoint) end

function AEnemy_Projectile_Base_C:Fire() end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function AEnemy_Projectile_Base_C:GetDamage(FB_DamageAttributeSet) end

function AEnemy_Projectile_Base_C:InstantlyDissolve() end

function AEnemy_Projectile_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AEnemy_Projectile_Base_C:ReceiveTick(DeltaSeconds) end

---@param ParameterValue float
function AEnemy_Projectile_Base_C:SetDissolve(ParameterValue) end

function AEnemy_Projectile_Base_C:durationexpired() end

---@param Hit FHitResult
function AEnemy_Projectile_Base_C:handleTraceImpact(Hit) end
