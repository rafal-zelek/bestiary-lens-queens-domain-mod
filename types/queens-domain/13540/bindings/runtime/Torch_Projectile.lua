---@meta

---@class ATorch_Projectile_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PointLight UPointLightComponent
---@field StaticMesh UStaticMeshComponent
---@field Graphics UNiagaraComponent
---@field Sphere USphereComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field ScaleU_ScaleLerp_104219044EC7245C5400B8A3F980EBCA float
---@field ScaleU__Direction_104219044EC7245C5400B8A3F980EBCA ETimelineDirection::Type
---@field ScaleU UTimelineComponent
---@field Dissolve_Dissolve_3113F49D4C0D8078E800318B50733BB8 float
---@field Dissolve__Direction_3113F49D4C0D8078E800318B50733BB8 ETimelineDirection::Type
---@field Dissolve UTimelineComponent
---@field ['Impact Damage Amount'] float
---@field DisableTrailDeactivation boolean
---@field BounceSound USoundBase
---@field LastFrameLoc FVector
---@field HitRadius float
---@field AlreadyHit boolean
---@field HitWater boolean
---@field LocalDT float
---@field MaxBounces int32
---@field TotalBounces int32
---@field FireballDamage FFB_DamageAttributeSet
---@field Scale FVector
---@field HitMultiplier float
---@field stopped boolean
---@field CurRotation float
local ATorch_Projectile_C = {}

---@param Target AActor
---@param Hit FHitResult
function ATorch_Projectile_C:ApplyDamageTOTarget(Target, Hit) end

---@param Target AActor
---@param Hit FHitResult
function ATorch_Projectile_C:ApplyHit(Target, Hit) end

---@param ImpactResult FHitResult
function ATorch_Projectile_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ATorch_Projectile_C:BndEvt__Torch_Projectile_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

function ATorch_Projectile_C:Dissolve__FinishedFunc() end

function ATorch_Projectile_C:Dissolve__UpdateFunc() end

---@param EntryPoint int32
function ATorch_Projectile_C:ExecuteUbergraph_Torch_Projectile(EntryPoint) end

---@param InputPin FHitResult
---@param Stop boolean
function ATorch_Projectile_C:HandleHit(InputPin, Stop) end

function ATorch_Projectile_C:InstantlyDissolve() end

function ATorch_Projectile_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ATorch_Projectile_C:ReceiveTick(DeltaSeconds) end

function ATorch_Projectile_C:ScaleU__FinishedFunc() end

function ATorch_Projectile_C:ScaleU__UpdateFunc() end

function ATorch_Projectile_C:TouchedKillVolume() end
