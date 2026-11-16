---@meta

---@class ANecronomiconHomingProjectile_C : AFishmaner_Projectile_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh1 UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field PointLight UPointLightComponent
---@field chargeopfx UNiagaraComponent
---@field HomingPower float
---@field DissolveFXC UNiagaraSystem
---@field ChargeFX UNiagaraSystem
---@field HP float
local ANecronomiconHomingProjectile_C = {}

---@param Target AActor
---@param Hit FHitResult
function ANecronomiconHomingProjectile_C:ApplyDamageTOTarget(Target, Hit) end

---@param ImpactResult FHitResult
function ANecronomiconHomingProjectile_C:BndEvt__Crawler_Fireball_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function ANecronomiconHomingProjectile_C:ExecuteUbergraph_NecronomiconHomingProjectile(EntryPoint) end

---@param bPosOverridden boolean
function ANecronomiconHomingProjectile_C:GetLOSCheckPos(bPosOverridden) end

---@param LOSOrigin FVector
---@param RayOrigin FVector
---@param RayDirection FVector
---@param CritSnapAngle float
---@param bWasCritTarget boolean
---@param bWasValidTarget boolean
---@param ActorsToIgnore TArray<AActor>
function ANecronomiconHomingProjectile_C:GetOptimalTargetNearRay(LOSOrigin, RayOrigin, RayDirection, CritSnapAngle, bWasCritTarget, bWasValidTarget, ActorsToIgnore) end

function ANecronomiconHomingProjectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ANecronomiconHomingProjectile_C:ReceiveTick(DeltaSeconds) end

---@param Tags FGameplayTagContainer
function ANecronomiconHomingProjectile_C:ShouldNotBeTargetedByHoming(Tags) end

---@param Hit FHitResult
---@param DamageToApply FFB_DamageAttributeSet
---@param Applier AActor
---@param AppliedDamage FFB_DamageAttributeSet
---@param HitLocation FVector
---@param HitLocationIsValid boolean
function ANecronomiconHomingProjectile_C:TryApplyDamage(Hit, DamageToApply, Applier, AppliedDamage, HitLocation, HitLocationIsValid) end
