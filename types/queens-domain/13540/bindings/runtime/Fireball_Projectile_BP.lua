---@meta

---@class AFireball_Projectile_BP_C : ADagger_Projectile_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Graphics UNiagaraComponent
---@field StaticMesh1 UStaticMeshComponent
---@field PointLight UPointLightComponent
---@field Timeline_2_Dissolve_5F009FAB4BD2A3B1A10A4680417BB668 float
---@field Timeline_2__Direction_5F009FAB4BD2A3B1A10A4680417BB668 ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_ScaleLerp_4ACB0A95493CD614DB0656A4B56BFD43 float
---@field Timeline_1__Direction_4ACB0A95493CD614DB0656A4B56BFD43 ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field HitCount int32
---@field Rotation float
---@field TotalBounces int32
---@field MaxBounces int32
---@field BounceSound USoundBase
---@field Scale FVector
local AFireball_Projectile_BP_C = {}

---@param Target AActor
---@param Hit FHitResult
---@param Succeess boolean
function AFireball_Projectile_BP_C:ApplyDamageTOTarget(Target, Hit, Succeess) end

---@param Target AActor
---@param Hit FHitResult
---@param AllowStop boolean
function AFireball_Projectile_BP_C:ApplyHit(Target, Hit, AllowStop) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AFireball_Projectile_BP_C:BndEvt__SpikeBall_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileBounceDelegate__DelegateSignature(ImpactResult, ImpactVelocity) end

---@param ImpactResult FHitResult
function AFireball_Projectile_BP_C:BndEvt__SpikeBall_Projectile_BP_ProjectileMovement_K2Node_ComponentBoundEvent_1_OnProjectileStopDelegate__DelegateSignature(ImpactResult) end

---@param EntryPoint int32
function AFireball_Projectile_BP_C:ExecuteUbergraph_Fireball_Projectile_BP(EntryPoint) end

---@param InputPin FHitResult
---@param Stop boolean
function AFireball_Projectile_BP_C:HandleHit(InputPin, Stop) end

---@param Hit FHitResult
---@param bPickA boolean
function AFireball_Projectile_BP_C:InitByHit(Hit, bPickA) end

function AFireball_Projectile_BP_C:InstantlyDissolve() end

function AFireball_Projectile_BP_C:ReceiveBeginPlay() end

---@param DeltaSeconds float
function AFireball_Projectile_BP_C:ReceiveTick(DeltaSeconds) end

function AFireball_Projectile_BP_C:Timeline_1__FinishedFunc() end

function AFireball_Projectile_BP_C:Timeline_1__UpdateFunc() end

function AFireball_Projectile_BP_C:Timeline_2__FinishedFunc() end

function AFireball_Projectile_BP_C:Timeline_2__UpdateFunc() end

function AFireball_Projectile_BP_C:TouchedKillVolume() end
