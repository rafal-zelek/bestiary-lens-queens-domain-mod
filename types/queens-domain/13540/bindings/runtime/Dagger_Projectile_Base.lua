---@meta

---@class ADagger_Projectile_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field Dagger_Projectile_Trail UNiagaraComponent
---@field Sphere USphereComponent
---@field ProjectileMovement UProjectileMovementComponent
---@field Timeline_0_Dissolve_A2D618CE48C6E8996AB3699F5B7A68A4 float
---@field Timeline_0__Direction_A2D618CE48C6E8996AB3699F5B7A68A4 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Dissolve_Dissolve_0040597E4892DBC3785478A0D31E3F82 float
---@field Dissolve__Direction_0040597E4892DBC3785478A0D31E3F82 ETimelineDirection::Type
---@field Dissolve UTimelineComponent
---@field ['Impact Damage Amount'] float
---@field DisableTrailDeactivation boolean
---@field ThrowSFX USoundBase
---@field LastFrameLoc FVector
---@field ThrowSFXAreAttached boolean
---@field ImpactVFX UNiagaraSystem
---@field ImpactSFX USoundCue
---@field HitRadius float
---@field AlreadyHit boolean
---@field HitWater boolean
---@field ItemData TSoftObjectPtr<UFS_ItemData_C>
---@field PlayerConfig UPlayerBalance_C
---@field Piercing boolean
---@field HitEnemies TArray<AActor>
---@field ['Last Frame Vel'] FVector
---@field LastTickTime float
---@field Damage FFB_DamageAttributeSet
---@field WaterhitRadius float
---@field DisableScaleTHing boolean
local ADagger_Projectile_Base_C = {}

---@param Hit FHitResult
---@param HitActor AActor
---@param Location FVector
---@param DamageTarget boolean
---@param SnapOrient FRotator
function ADagger_Projectile_Base_C:AdjustHitLocation(Hit, HitActor, Location, DamageTarget, SnapOrient) end

---@param A FVector
function ADagger_Projectile_Base_C:AlignToNormalOnEnd(A) end

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function ADagger_Projectile_Base_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
---@param AllowStop boolean
function ADagger_Projectile_Base_C:ApplyHit(Target, Hit, AllowStop) end

---@param NoReward boolean
---@param Enemy AFS_EnemyCharacterBase
function ADagger_Projectile_Base_C:AttachTargetDied(NoReward, Enemy) end

---@param Hit FHitResult
function ADagger_Projectile_Base_C:AttachToActor(Hit) end

function ADagger_Projectile_Base_C:BeginSlowDissolve() end

---@param ImpactResult FHitResult
function ADagger_Projectile_Base_C:BndEvt__Dagger_Projectile_Base_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param DestroyedActor AActor
function ADagger_Projectile_Base_C:DestroySelf(DestroyedActor) end

function ADagger_Projectile_Base_C:Dissolve__FinishedFunc() end

function ADagger_Projectile_Base_C:Dissolve__UpdateFunc() end

function ADagger_Projectile_Base_C:DoMovementHitTrace() end

---@param EntryPoint int32
function ADagger_Projectile_Base_C:ExecuteUbergraph_Dagger_Projectile_Base(EntryPoint) end

---@param Key FName
---@param Value float
function ADagger_Projectile_Base_C:GetCustomStat(Key, Value) end

---@param FB_DamageAttributeSet FFB_DamageAttributeSet
function ADagger_Projectile_Base_C:GetDamage(FB_DamageAttributeSet) end

---@param Hit FHitResult
---@param Applied_Damage FFB_DamageAttributeSet
function ADagger_Projectile_Base_C:HandleAppliedDamage(Hit, Applied_Damage) end

---@param Array TArray<FHitResult>
function ADagger_Projectile_Base_C:HandleHits(Array) end

---@param StopHit FHitResult
function ADagger_Projectile_Base_C:HandleStopHit(StopHit) end

---@param Pos FVector
---@param Normal FVector
function ADagger_Projectile_Base_C:ImpactFX(Pos, Normal) end

function ADagger_Projectile_Base_C:InstantlyDissolve() end

---@param Hit FHitResult
function ADagger_Projectile_Base_C:ProjectileStopped(Hit) end

function ADagger_Projectile_Base_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function ADagger_Projectile_Base_C:ReceiveTick(DeltaSeconds) end

function ADagger_Projectile_Base_C:ScaleThing() end

function ADagger_Projectile_Base_C:TickLast() end

function ADagger_Projectile_Base_C:Timeline_0__FinishedFunc() end

function ADagger_Projectile_Base_C:Timeline_0__UpdateFunc() end

function ADagger_Projectile_Base_C:TouchedKillVolume() end
